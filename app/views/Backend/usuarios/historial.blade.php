@extends('layouts/default')
@section('content')

@section('title')
@parent
 ¡ Usuarios !
@stop
<div align="center" class="row">
	<h2>Lista de Usuarios</h2><hr>
<div class="table-responsive2">
	<table class="table table-hover table-striped table-bordered" id="tabla">
		<thead>
			<th>No</th>
			<th>Nombre</th>
			<th>Email</th>
			<th>Tag</th>
			<th>Cedula</th>
			<th>Genero</th>
			<th>Edad</th>
			<th>Saldo</th>
			<th>Estado</th>
			<th>Último acceso</th>
			<th>Fecha de registro</th>
			<th>Acciones</th>
		</thead>
		<tbody>
		@foreach($usuarios as $key=>$user)
			<tr>
				<td>{{$key =$key+1}}</td>
				<td>
					<a href="{{URL::to('admin/usuarios/historial/'.$user->id)}}">
						{{$user->first_name}} {{$user->last_name}}
					</a>
				</td>
				<td>{{$user->email}}</td>
				<td>{{$user->tag}}</td>
				<td>{{$user->cedula}}</td>
				<td>{{$user->sexo}}</td>
				<td> 
					@if($user->fecha_nacimiento>0) 
						{{$hoy->diff(new DateTime($user->fecha_nacimiento) )->y}} años 
					@endif
				</td>
				<td>
					$ {{ number_format($user->transacciones->sum('valor'),2) }}
				</td>
				@if($user->activated)
					<td class="success">Activo</td>
				@else
					<td class="danger">Bloqueado</td>
				@endif
				<td>{{$user->last_login}}</td>
				<td>{{$user->created_at}}</td>
				<td>
					<div class="dropdown">
					  <button class="btn btn-sm btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					    <i class="fa fa-bars"></i>
					    <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2">
					    <li><a href="{{URL::to('admin/usuarios/historial/'.$user->id)}}"><i class="fa fa-database"></i> Historial</a></li>
					    <li><a href="#"><i class="fa fa-user"></i> Perfil</a></li>
					    <li><a href="#"><i class="fa fa-lock"></i> Bloquear</a></li>
					  </ul>
					</div>					
				</td>
			</tr>
		@endforeach
		</tbody>
	</table>
</div> <!-- /table-responsive -->	

</div><!-- /row-->
<script>
	$(function() {
		$('#tabla').DataTable();
	});
</script>
@stop
