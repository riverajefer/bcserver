@extends('layouts/default')
@section('content')

@section('title')
@parent
 ¡ Detalle Transferencia !
@stop
<div class="row">
<h3>Detalle Transferencia Banco <i class="fa fa-credit-card"></i></h3><hr>
<ul class="list-group">
  <li class="list-group-item"><strong>Banco:</strong>
  <img src="{{asset('images/bancos/'.$banco->logo)}}" alt="" width="25px">	
   {{$banco->banco}}</li>
  <li class="list-group-item"><strong>Titular:</strong> {{$cuenta->titular}}</li>
  <li class="list-group-item"><strong>Tipo de Cuenta:</strong> {{$cuenta->tipo_cuenta}}</li>
  <li class="list-group-item"><strong>Número de Cuenta:</strong> {{$cuenta->numero_cuenta}}</li>
  <li class="list-group-item"><strong>Valor:</strong> ${{ number_format($detalles->valor,2)}}</li>
  <li class="list-group-item"><strong>Descripción:</strong> {{$detalles->created_at}}</li>
  @if($detalles->estado)
  	<li class="list-group-item list-group-item-success"><strong>Estado de la transferencia:</strong> {{$detalles->msg_estado}}</li>
  @else
	<li class="list-group-item list-group-item-danger"><strong>Estado de la transferencia:</strong> {{$detalles->msg_estado}}</li>
  @endif
  
</ul>


</div><!-- /row-->
@stop
