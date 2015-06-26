@extends('layouts/default')
@section('content')

@section('title')
@parent
 ¡ Bienvenido !
@stop


<div class="container" align="center">
	<div class="row">
		<h2>Lista de Usuarios</h2><hr>
		<table class="table table-hover table-striped table-bordered">
			<thead>
				<th>No</th>
				<th>Nombre</th>
				<th>Tag</th>
				<th>Email</th>
				<th>Total Ahorrado</th>
				<th>Ver Historial</th>
			</thead>
			<tbody>
			@foreach($usuarios as $user)
				<tr>
					<td>{{$user->id}}</td>
					<td>{{$user->first_name}} {{$user->last_name}}</td>
					<td>{{$user->tag}}</td>
					<td>{{$user->email}}</td>
					<td> 
						<strong>
							$ {{ number_format($user->ahorro->sum('moneda'), 2)}}
						</strong>
					</td>
					<td>
					<a href="{{URL::to('usuario/historial/'.$user->id)}}"  data-toggle="modal" data-target="#myModal{{$user->id}}">
						<i class="fa fa-search-plus"></i> VER</a>
					</td>
				</tr>
				
				<!-- Modal -->
				<div class="modal fade" id="myModal{{$user->id}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
				      </div>
				      <div class="modal-body">
				        ...
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				        <button type="button" class="btn btn-primary">Save changes</button>
				      </div>
				    </div>
				  </div>
				</div>


			@endforeach
			</tbody>
			
		</table>
	</div>
</div>


@stop