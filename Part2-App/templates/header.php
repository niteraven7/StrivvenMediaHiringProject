<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
		<title>Career Assessment</title>
	</head>
	<body>
		<div class="container">
			<nav class="navbar navbar-light bg-light my-2">
				<a class="navbar-brand" href="/">Career Assessment</a>
			<?php if(! empty($user)): ?>
				<span class="navbar-text">Hello, <?= $user['firstname']; ?>!</span>
				<a href="/logout" class="btn btn-outline-secondary ml-auto" role="button">Logout</a>
			<?php else: ?>
				<span class="navbar-text">Hello.</span>
				<a href="/login" class="btn btn-outline-secondary ml-auto" role="button">Login</a>
			<?php endif; ?>
			</nav>
			
			<?php if(! empty($alert)): ?>
			<div class="alert alert-<?= $alert['type']; ?>" role="alert">
				<?= $alert['message']; ?>
			</div>
			<?php endif; ?>
