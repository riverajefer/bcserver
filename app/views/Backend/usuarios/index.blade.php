@extends('layouts/default')
@section('content')

@section('title')
@parent
 ¡ Usuarios !
@stop
<div class="container">
<div align="center" class="row">
	<h2>Lista de Usuarios</h2><hr>
	<div class="table-responsive2">
		<table class="table table-hover table-striped table-bordered">
			<thead>
				<th>No</th>
				<th>Nombre</th>
				<th>Email</th>
				<th>Tag</th>
				<th>Cedula</th>
				<th>Genero</th>
				<th>Saldo</th>
				<th>Estado</th>
				<th>Acciones</th>
			</thead>
			<tbody>
			@foreach($usuarios as $user)
				<tr>
					<td>{{$user->id}}</td>
					<td>{{$user->first_name}} {{$user->last_name}}</td>
					<td>{{$user->email}}</td>
					<td>{{$user->tag}}</td>
					<td>{{$user->cedula}}</td>
					<td>{{$user->sexo}}</td>
					<td>--</td>
					<td>{{$user->activated}}</td>
					<td>
						<div class="dropdown">
						  <button class="btn btn-sm btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						    <i class="fa fa-bars"></i>
						    <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
						    <li><a href="#">Action</a></li>
						    <li><a href="#">Another action</a></li>
						    <li><a href="#">Something else here</a></li>
						    <li><a href="#">Separated link</a></li>
						  </ul>
						</div>					
					</td>
				</tr>
			@endforeach
			</tbody>
		</table>
	</div> <!-- /table-responsive -->	
</div>

</div><!-- /row-->
<script>
	$(function() {
		$( '#dl-menu' ).dlmenu();
	});
</script>
@stop
