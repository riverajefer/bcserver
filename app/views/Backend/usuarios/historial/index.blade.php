@extends('layouts/default')
@section('content')

@section('title')
@parent
 ¡ Historial !
@stop
<div align="center" class="row">
	<h2>Historial de Registros</h2><hr>
	<h4 align="left">Usuario: {{$user->first_name}} {{$user->last_name}}</h4>
	<h4 align="left">Saldo: ${{ number_format($saldo,2)}}</h4>
	<br>
<div class="table-responsive2">
	<table class="table table-hover table-striped table-bordered" id="tabla">
		<thead>
			<th>No</th>
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

				@if ($transaccion->tipo == 1)
					<td class="success"> 
						<a href="{{URL::to('admin/usuarios/historial/deposito/'.$transaccion->user_alcancia_id)}}">
							<img src="{{asset('images/logo_bancoink.png')}}" width="3%" alt=""> {{$transaccion->movimiento}}
						</a>
					</td>
				@elseif ($transaccion->tipo == 2)
					<td class="success"> 
						<a href="{{URL::to('admin/usuarios/historial/transferencia-bancoink/'.$transaccion->transferencia_id)}}">
							<i class="fa fa-user"></i> {{$transaccion->movimiento}} (Ingreso)
						</a>
					</td>
				@elseif ($transaccion->tipo == 3)
					<td class="danger"> 
						<a href="{{URL::to('admin/usuarios/historial/transferencia-bancoink/'.$transaccion->transferencia_id)}}">
							<i class="fa fa-user"></i> {{$transaccion->movimiento}} (Salida)
						</a>	
					</td>
				@elseif ($transaccion->tipo == 4)
					<td class="warning"> 
						<a href="{{URL::to('admin/usuarios/historial/transferencia-banco/'.$transaccion->transferencia_banco_id)}}">
							<i class="fa fa-credit-card"></i> {{$transaccion->movimiento}}
						</a>
					</td>	
				@else
				    <td>No hay registros</td>
				@endif
				
				<td>{{$transaccion->origen}}</td>
				<td>${{ number_format($transaccion->valor,2)}}</td>
				<td>{{$transaccion->created_at}}</td>
				<td>{{$transaccion->estado}}</td>
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
