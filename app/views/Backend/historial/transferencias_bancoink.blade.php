@extends('layouts/default')
@section('content')

@section('title')
@parent
 ¡ Historial Transferencias Bancoink!
@stop
<div align="center" class="row">

<h2>Historial Transferencias Bancoink</h2><hr>
<h3 align="left">Total: ${{ number_format($total,2)}}</h3>

<div class="table-responsive2">
	<table class="table table-hover table-striped table-bordered" id="tabla">
		<thead>
			<th>No</th>
			<th>Movimiento</th>
			<th>Origen</th>
			<th>Destino</th>
			<th>Valor</th>
			<th>Fecha</th>
		</thead>
		<tbody>
		@foreach($transacciones as $key=>$transaccion)
			<tr>
				<td>{{$key =$key+1}}</td>

				<td> 
					<a href="{{URL::to('admin/usuarios/historial/transferencia-bancoink/'.$transaccion->id)}}">
						<i class="fa fa-user"></i> Transferencia Bancoink
					</a>
				</td>
				<td>
				<a href="{{URL::route('historial_usuario', $transaccion->usuariosBancoink->user_id)}}">
					{{User::find($transaccion->usuariosBancoink->user_id)->first_name}} 
					{{User::find($transaccion->usuariosBancoink->user_id)->last_name}}
				</a>
				</td>
				<td>
				<a href="{{URL::route('historial_usuario', $transaccion->usuariosBancoink->user_id_t)}}">
					{{User::find($transaccion->usuariosBancoink->user_id_t)->first_name}} 
					{{User::find($transaccion->usuariosBancoink->user_id_t)->last_name}}				
				</a>
				</td>
				<td>${{ number_format($transaccion->valor,2)}}</td>
				<td>{{$transaccion->created_at}}</td>

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
