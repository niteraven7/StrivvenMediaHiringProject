<?php
	if ($previous_answers > 0) {
?>
<div class="alert alert-info" role="alert">
	It appears you've taken this assessment before! You can view your <a href="/results">previous results</a> or continue below to take the assessment again.
</div>
<div class="card mb-2">
	<div class="card-body">
		This assessment can point you down a happy &amp; exciting career path based on how well you like completing the tasks or activities below. If you you do not feel strongly about a task leave it set to neutral.
	</div>
</div>
<?php
	}
?>
<h1 class="h2">Questions</h1>
<form action="/process_answers" method="post">
<?php
	$area_id = 0;
	
	foreach ($questions as $q) {
		if ($q['area_id'] != $area_id) {
			echo '<h4 class="mt-3">'. $q['area_name'] .'</h4>';
			$area_id = $q['area_id'];
		}
?>
<div class="row mb-1">
	<div class="col-lg">
		<?= $q['text']; ?>
	</div>
	<div class="col-lg">
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="answers[<?= $q['id']; ?>]" id="inlineRadio<?= $q['id']; ?>-5" value="5">
			<label class="form-check-label" for="inlineRadio<?= $q['id']; ?>-5">Strongly Like</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="answers[<?= $q['id']; ?>]" id="inlineRadio<?= $q['id']; ?>-4" value="4">
			<label class="form-check-label" for="inlineRadio<?= $q['id']; ?>-4">Like</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="answers[<?= $q['id']; ?>]" id="inlineRadio<?= $q['id']; ?>-3" value="3" checked>
			<label class="form-check-label" for="inlineRadio<?= $q['id']; ?>-3">Neutral</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="answers[<?= $q['id']; ?>]" id="inlineRadio<?= $q['id']; ?>-2" value="2">
			<label class="form-check-label" for="inlineRadio<?= $q['id']; ?>-2">Dislike</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="answers[<?= $q['id']; ?>]" id="inlineRadio<?= $q['id']; ?>-1" value="1">
			<label class="form-check-label" for="inlineRadio<?= $q['id']; ?>-1">Strongly Dislike</label>
		</div>
	</div>
</div>
<?php
	}
?>
<button class="btn btn-success btn-lg btn-block my-4" type="submit">Submit Answers</button>
</form>