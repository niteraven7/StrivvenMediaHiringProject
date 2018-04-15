<?php
require 'Slim/Slim.php';

\Slim\Slim::registerAutoloader();

$app = new \Slim\Slim();

$app->config('debug', true);

$app->add(new \Slim\Middleware\SessionCookie(array(
	'expires'		=> '180 minutes',
	'path'		=> '/',
	'domain'		=> null,
	'secure'		=> false,
	'httponly'	=> false,
	'name'		=> 'slim_session',
	'secret'		=> 'c00kiemonster',
	'cipher'		=> MCRYPT_RIJNDAEL_256,
	'cipher_mode'	=> MCRYPT_MODE_CBC
)));

$app->hook('slim.before.dispatch', function () use ($app) {
	$flashdata = $app->view()->getData('flash');
	
	if (isset($flashdata)) {
		$alert = $flashdata['alert'];
	} else {
		$alert = '';
	}
	
	if (isset($_SESSION['user'])) {
		$user = $_SESSION['user'];
	} else {
		$user = NULL;
	}
	
	$app->view()->setData('alert', $alert);
	$app->view()->setData('user', $user);
});

function getDatabaseConnection() {
	$dbhost = 'localhost';
	$dbuser = 'strivvendba';
	$dbpass = 'm0n3yBuNNy3$';
	$dbname = 'strivven';
	
	$dbh = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	
	return $dbh;
}

// GET routes

$app->get(
	'/',
	function () use ($app) {
		if (! isset($_SESSION['user'])) {
			$app->flash('alert', array('message' => 'Welcome! Login is required to take the assessment.', 'type' => 'primary'));
			$app->redirect('/login');
		} else {
			$app->redirect('/assessment');
		}
	}
);

$app->get(
	'/login',
	function () use ($app) {
		$app->render('header.php');
		$app->render('login.php');
		$app->render('footer.php');
	}
);

$app->get(
	'/logout',
	function () use ($app) {
		$pdo = getDatabaseConnection();
		
		$sql = 'UPDATE user_usage_logs SET logout=NOW() WHERE id='. $_SESSION['user_usage_log_id'];
		$pdo->exec($sql);
		
		unset($_SESSION['user']);
		session_destroy();
		
		$app->flash('alert', array('message' => 'You have been successfully logged out!', 'type' => 'success'));
		$app->redirect('/login');
	}
);

$app->get(
	'/assessment',
	function () use ($app) {
		if (isset($_SESSION['user'])) {
	    		$pdo = getDatabaseConnection();

			$sql = 'SELECT * FROM assessment_questions ORDER BY area_id, id';
			$stmt = $pdo->query($sql);
			$questions = $stmt->fetchAll();
			
			$sql = 'SELECT count(*) from assessment_answers WHERE user_id='. $_SESSION['user']['id'];
			$previous_answers = $pdo->query($sql)->fetchColumn();
			
			$app->render('header.php');
			$app->render('assessment.php', array('questions' => $questions, 'previous_answers' => $previous_answers));
			$app->render('footer.php');
		}
	}
);

$app->get(
	'/results',
	function () use ($app) {
		if (isset($_SESSION['user'])) {
	    		$pdo = getDatabaseConnection();

			$sql = 'SELECT assessment_questions.area_name, SUM(assessment_answers.weight) as area_weight FROM assessment_answers ';
			$sql .= 'JOIN assessment_questions ON assessment_questions.id = assessment_answers.question_id ';
			$sql .= 'WHERE assessment_answers.user_id='. $_SESSION['user']['id'] .' ';
			$sql .= 'GROUP BY assessment_questions.area_name ';
			$sql .= 'ORDER BY area_weight DESC LIMIT 5';
			
			$stmt = $pdo->query($sql);
			$results = $stmt->fetchAll();
			
			$app->render('header.php');
			$app->render('results.php', array('results' => $results));
			$app->render('footer.php');
		}
	}
);

// POST routes

$app->post(
    '/authenticate',
    function () use ($app) {
    		$pdo = getDatabaseConnection();
    		$username = $app->request->post('username');
		$password = md5($app->request->post('password'));

		/*
		working logins:
		un: emusk
		pw: teslamodel3rulez

		un: wgates
		pw: windowz95
		*/

		$sql = 'SELECT * FROM users WHERE username=:username AND password=:password';
		$stmt = $pdo->prepare($sql);
		$stmt->bindParam(':username', $username, PDO::PARAM_STR);
		$stmt->bindParam(':password', $password, PDO::PARAM_STR);
		$stmt->execute();
		
		if ($user = $stmt->fetchObject()) {
			$sql = 'INSERT INTO user_usage_logs (user_id,session_id,login) VALUES ('. $user->id .",'". session_id() ."',NOW())";
			$pdo->exec($sql);
			
			$_SESSION['user'] = $user;
			$_SESSION['user_usage_log_id'] = $pdo->lastInsertId();
			
			$app->redirect('/assessment');
		} else {
			$app->flash('alert', array('message' => 'Login Error! Username or password is incorrect. Please try again.', 'type' => 'danger'));
			$app->redirect('/login');
		}
	}
);

$app->post(
    '/process_answers',
    function () use ($app) {
    		$pdo = getDatabaseConnection();
    		$answers = $app->request->post('answers');
    		
    		if (isset($_SESSION['user'])) {
    			$sql = 'DELETE FROM assessment_answers WHERE user_id='. $_SESSION['user']['id'];
    			$pdo->exec($sql);
    			
    			$sql = 'INSERT INTO assessment_answers (user_id,question_id,weight) VALUES ';
    			$i = 0;
    			
    			foreach ($answers as $question_id => $weight) {
    				if ($i > 0)
    					$sql .= ',';
    					
    				$sql .= '('. $_SESSION['user']['id'] .','. (int) $question_id .','. (int) $weight .')';
    					
    				$i++;
	    		}
	    		
	    		$pdo->exec($sql);
	    		
			$app->flash('alert', array('message' => 'Based on your answers here the top 5 career fields you might consider entering! They are ordered from most to least liked.', 'type' => 'info'));
			$app->redirect('/results');
    		}
	}
);

$app->run();
