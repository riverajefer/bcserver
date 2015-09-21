@extends('layouts/default')
@section('content')

@section('title')
@parent
 ¡ Historial !
@stop
<div align="center" class="row">
	<h2>Deposito</h2><hr>
	<h4 align="left">Usuario: {{$user->first_name}} {{$user->last_name}}</h4>
	<h5 align="left"><strong>Total: ${{ number_format($total,2)}}</strong></h5>
	<br>
<div class="table-responsive2">
	<table class="table table-hover table-striped table-bordered" id="tabla">
		<thead>
			<th>No</th>
			<th>Ubicación</th>
			<th>Moneda</th>
			<th>Fecha</th>
		</thead>
		<tbody>
		@foreach($detalles as $key=>$detalle)
			<tr>
				<td>{{$key =$key+1}}</td>
				<td>{{$ubicacion_alcancia}}</td>
				<td>${{ number_format($detalle->moneda,2)}}</td>
				<td>{{$detalle->created_at}}</td>
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
