<h1 class="h2">Personalized Results</h1>
<ul class="list-group mt-3">
<?php
	foreach ($results as $r) {
?>
	<li class="list-group-item d-flex justify-content-between align-items-center">
		<?= $r['area_name']; ?>
		<span class="badge badge-primary badge-pill"><?= $r['area_weight']; ?></span>
	</li>
<?php
	}
?>	
</ul>
<div class="p-3 my-2 bg-light text-dark">
	Would you like to take the <a href="/assessment">assessment</a> again?
</div>