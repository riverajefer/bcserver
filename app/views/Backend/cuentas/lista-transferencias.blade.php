@extends('layouts/default')
@section('content')

@section('title')
@parent
 ¡ Transacciones Banacarias !
@stop
<div align="center" class="row">
<h2>Transacciones Bancarias</h2><hr>
<h3 align="left"><strong>Total: ${{ number_format($total,2)}}</strong></h3>
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
			<th>Descripción</th>
			<th>Valor</th>
			<th>Fecha</th>
			<th>Estado</th>
		</thead>
		<tbody>
		@foreach($transferencias as $key=>$transferencia)
			<tr>
				<td>{{$key =$key+1}}</td>
				<td>
					<a href="{{URL::route('historial_usuario', $transferencia->userBanco->usuario->id)}}">
						{{$transferencia->userBanco->usuario->first_name}}
						{{$transferencia->userBanco->usuario->last_name}}
					</a>
				</td>
				<td>
					<a href="{{URL::route('detalle-cuenta', $transferencia->userBanco->id )}}">
						<img src="{{asset('images/bancos/'.$transferencia->userBanco->banco->logo)}}" alt="" width="20px">
						{{$transferencia->userBanco->banco->banco}} (detalles de la cuenta)					
					</a>
				</td>
				<td>{{$transferencia->descripcion}}</td>
				<td>$ {{ number_format($transferencia->valor,2)}}</td>
				<td>{{$transferencia->created_at}}</td>
				@if($transferencia->estado)
					<td class="success">{{$transferencia->msg_estado}}</td>	
				@else
					<td class="danger">
				    	<a href="{{URL::route('validar-transferencia', $transferencia->id)}}" class="btn btn-xs btn-success">
							Validar Transferencia
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

