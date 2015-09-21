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
			<th>Descripción</th>
			<th>Valor</th>
			<th>Estado</th>
			<th>Fecha</th>
		</thead>
		<tbody>
		@foreach($transferencias as $key=>$transferencia)
			<tr>
				<td>{{$key =$key+1}}</td>
				<td>{{$user->first_name}} {{$user->last_name}}</td>
				<td>
					<img src="{{asset('images/bancos/'.$banco->logo)}}" alt="" width="20px">
					{{$banco->banco}}
				</td>
				<td>{{$transferencia->descripcion}}</td>
				<td>{{ number_format($transferencia->valor,2)}}</td>
				@if($transferencia->estado)
					<td>{{$transferencia->msg_estado}}</td>	
				@else
				<td>
			    	<a href="#" class="btn btn-xs btn-success">
						Validar Transferencia
					</a>
				</td>
				@endif

				<td>{{$transferencia->created_at}}</td>
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

