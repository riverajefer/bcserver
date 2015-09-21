@extends('layouts/default')
@section('content')

@section('title')
@parent
 ¡ Detalle Transferencia !
@stop
<div class="row">
<h3>Detalle Transferencia Bancoink <i class="fa fa-user"></i></h3><hr>
<ul class="list-group">
  <li class="list-group-item">
 	 <strong>Transferencia de:</strong> {{$user_t->first_name}} {{$user_t->last_name}} &nbsp; <strong>A:</strong>  {{$user->first_name}} {{$user->last_name}} </li>
  <li class="list-group-item"><strong>Valor:</strong> ${{ number_format($detalles->valor,2)}}</li>
  <li class="list-group-item"><strong>Descripción:</strong> {{$detalles->descripcion}}</li>
  <li class="list-group-item"><strong>Fecha:</strong> {{$detalles->created_at}}</li>
</ul>


</div><!-- /row-->
@stop
