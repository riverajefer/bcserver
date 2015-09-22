@extends('layouts/default')
@section('content')

@section('title')
@parent
 ¡ Detalle Cuenta Bancaria !
@stop
<div class="row">
<h3>Detalle Cuenta Bancaria <i class="fa fa-credit-card"></i></h3><hr>
<ul class="list-group">
  <li class="list-group-item"><strong>Banco:</strong>
  <img src="{{asset('images/bancos/'.$banco->logo)}}" alt="" width="25px">	
   {{$banco->banco}}</li>
  <li class="list-group-item"><strong>Titular:</strong> {{$cuenta->titular}}</li>
  <li class="list-group-item"><strong>Tipo de Cuenta:</strong> {{$cuenta->tipo_cuenta}}</li>
  <li class="list-group-item"><strong>Número de Cuenta:</strong> {{$cuenta->numero_cuenta}}</li>
  <li class="list-group-item"><strong>Fecha:</strong> {{$cuenta->created_at}}</li>
  @if($cuenta->estado)
  	<li class="list-group-item list-group-item-success"><strong>Estado de la cuenta:</strong> {{$cuenta->msg_estado}}</li>
  @else
	<li class="list-group-item list-group-item-danger"><strong>Estado de la cuenta:</strong> {{$cuenta->msg_estado}}</li>
  @endif
  
</ul>


</div><!-- /row-->
@stop
