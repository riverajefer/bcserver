@extends('layouts/default')
@section('content')

@section('title')
@parent
 ¡ Cuentas Banacarias !
@stop
<div align="center" class="row">
<h2>Cuentas Banacarias</h2><hr>

@if(Session::has('message'))
	<div class="alert alert-success alert-dismissible" role="alert">
	  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	  <strong>{{ Session::get('message') }} !</strong>
	</div>
@endif


<div class="table-responsive">
	<table class="table table-hover table-striped table-bordered" id="tabla">
		<thead>
			<th>No</th>
			<th>Usuario</th>
			<th>Banco</th>
			<th>Transferencias</th>
			<th>Fecha</th>
			<th>Estado</th>
		</thead>
		<tbody>
		@foreach($datos as $key=>$dato)
			<tr>
				<td>{{$key =$key+1}}</td>
				<td>
					<a href="{{URL::route('historial_usuario', $dato->usuario->id)}}">
						{{$dato->usuario->first_name}} {{$dato->usuario->last_name}}
					</a>
				</td>
				<td>
					<a href="{{URL::route('detalle-cuenta', $dato->id)}}">
						<img src="{{asset('images/bancos/'.$dato->banco->logo)}}" alt="" width="20px">
						{{$dato->banco->banco}} <em>(detalles de la cuenta)</em>
					</a>
				</td>
				<td>
					<a href="{{URL::route('cuenta-transferencias', $dato->id)}}">
						Transferencias
					</a>					
				</td>
				<td>{{$dato->created_at}}</td>
				@if($dato->estado)
					<td class="success">{{$dato->msg_estado}}</td>
				@else
				<td>
				    <a href="{{route('validar-cuenta', $dato->id)}}" class="btn btn-xs btn-success">
						Validar Cuenta
					</a>
				</td>
				@endif
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
