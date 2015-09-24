@extends('layouts/default')
@section('content')

@section('title')
@parent
 ¡ Depositos !
@stop
<div align="center" class="row">
<h2>Historial de depositos</h2><hr>
<h3 align="left">Total: ${{ number_format($total,2)}}</h3>
<h4 align="left">Número de Registros: {{count($depositos)}}</h4>
<div class="table-responsive2">
	<table class="table table-hover table-striped table-bordered" id="tabla">
		<thead>
			<th>No</th>
			<th>Origen</th>
			<th>Moenda</th>
			<th>Moneda Descuento</th>
			<th>Fecha</th>
		</thead>
		<tbody>
		@foreach($depositos as $key=>$deposito)
			<tr>
				<td>{{$key =$key+1}}</td>
				<td>{{$deposito->userAlcancia->alcancia->ubicacion}}</td>
				<td>${{ number_format($deposito->moneda,2)}}</td>
				<td>${{ number_format($deposito->moneda_des,2)}}</td>
				<td>{{$deposito->created_at}}</td>
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
