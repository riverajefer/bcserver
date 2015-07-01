@extends('layouts/default')
@section('content')

@section('title')
@parent
 ¡ Agregar Rentabilidad Portafolios !
@stop
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.3/moment.min.js"></script>
<hr>
<div class="container">
	<div class="row" >
		<div class="col-md-4 col-md-offset-4">

		@if (Session::has('message'))
		   <div class="alert alert-success">{{ Session::get('message') }}</div>
		@endif

			{{ Form::open(array('url' => 'renta')) }}
				@foreach($portafolios as $portafolio)	

					 <div class="form-group">
					    <label for="{{$portafolio->nombre}}">{{$portafolio->nombre}}</label>
					    <input type="text" class="form-control" id="{{$portafolio->nombre}}" name="{{$portafolio->id}}" placeholder="{{$portafolio->nombre}}" required>
					 </div>

				@endforeach

				<div class="form-group">
				  <label for="fecha">Fecha</label>
				  <input type="text" class="form-control" id="fecha" placeholder="Fecha" name="fecha" value="{{date('Y-m-d')}}">
				</div>
				<button type="submit" class="btn btn-success">Enviar</button>
			{{ Form::close() }}
				
		</div>
	</div>
</div>

<script>
$( document ).ready(function() {
    
  $(function() {
    $( "#fecha" ).datepicker({
    	dateFormat: 'yy-mm-dd'
    });
  });    

});

</script>
@stop