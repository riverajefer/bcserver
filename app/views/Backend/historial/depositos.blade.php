@extends('layouts/default')
@section('content')

@section('title')
@parent
 ¡ Depositos !
@stop
<div align="center" class="row">
<h2>Historial de depositos</h2><hr>
<h3 align="left">Total: ${{ number_format($total,2)}}</h3>
<div class="table-responsive2">
	<table class="table table-hover table-striped table-bordered" id="tabla">
		<thead>
			<th>No</th>
			<th>Usuario</th>
			<th>Movimiento</th>
			<th>Origen</th>
			<th>Valor</th>
			<th>Fecha</th>
			<th>Estado</th>
		</thead>
		<tbody>
		@foreach($transacciones as $key=>$transaccion)
			<tr>
				<td>{{$key =$key+1}}</td>
				<td>
					<a href="{{URL::route('historial_usuario', $transaccion->user->id)}}">
						{{$transaccion->user->first_name}} {{$transaccion->user->last_name}}
					</a>
				</td>
				<td class="success"> 
					<a href="{{URL::to('admin/usuarios/historial/deposito/'.$transaccion->user_alcancia_id)}}">
						<img src="{{asset('images/logo_bancoink.png')}}" width="3%" alt=""> {{$transaccion->movimiento}}
					</a>
				</td>
				<td>{{$transaccion->origen}}</td>
				<td>${{ number_format($transaccion->valor,2)}}</td>
				<td>{{$transaccion->created_at}}</td>
				@if($transaccion->estado)
					<td class="success">Realizada</td>
				@else
					<td class="warning">Pendiente</td>
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
