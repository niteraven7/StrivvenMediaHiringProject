<div class="row">
	<div class="col col-lg-6">
	<form action="/authenticate" method="post">
		<div class="card my-3">
			<h5 class="card-header bg-secondary text-white">Please sign in...</h5>
			<div class="card-body">
				<div class="form-group">
					<label for="inputUsername" class="sr-only">Username</label>
					<input type="text" name="username" id="inputUsername" class="form-control" placeholder="Username" required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label>
					<input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
				</div>
				<button class="btn btn-primary btn-block" type="submit">Login</button>
			</div>
		</div>
	</form>
	</div>
</div>