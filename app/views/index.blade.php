@extends('layouts/default')
@section('content')

@section('title')
@parent
 ¡ Bienvenido !
@stop


<hr><br>

<div class="container" align="center">
	<div class="row">
		<a href="{{URL::to('usuarios')}}">USUARIOS</a>
	</div>
</div>


@stop