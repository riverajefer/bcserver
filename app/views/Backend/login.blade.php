<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
		@if(Session::has('message'))
			<div class="alert alert-danger alert-dismissible" role="alert">
			  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			  <strong>{{ Session::get('message') }} !</strong>
			</div>
		@endif

		{{ Form::open(array('url' => 'admin/login/','class'=>'form-signin')) }}
		    <h2 class="form-signin-heading">Login</h2>
		    {{Form::label('email', 'E-Mail', array('class' => 'sr-only'))}}
		    {{Form::email('email', $value = null, array('class'=>'form-control input-lg','placeholder'=>'Email', 'required'=>'required', 'autofocus'=>'autofocus' ))}}
		    <br>
		    {{Form::label('password', 'Password', array('class' => 'sr-only'))}}
		    {{Form::password('password',  array('class'=>'form-control input-lg','placeholder'=>'Password', 'required'=>'required'))}}		
			<br>
			{{Form::submit('Entrar', array('class' => 'btn btn-lg btn-primary btn-block'))}}
		{{ Form::close() }}

		</div>	
	</div>
</div> <!-- /container -->

	
</body>
</html>
