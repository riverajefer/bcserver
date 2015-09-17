

	<div style="margin:15px">
		<h3>Historial de Ahorros</h3>
		<h4> Usuario: {{$usuario->first_name}} {{$usuario->last_name}}</h4>
		<p>
			<strong>
				Total: $ {{ number_format($usuario->ahorro->sum('moneda'), 2)}}
			</strong>
		</p>
		<hr>
		<table class="table table-hover table-striped table-bordered">
			<thead>
				<th>No</th>
				<th>Moneda</th>
				<th>Alcancia</th>
				<th>Fecha de Registro</th>
			</thead>
			<tbody>
			<?php $i = 1; ?>
			@foreach($ahorros as $ahorro)
				<tr>
					<td>{{$i++}}</td>
					<td> <strong>$ {{$ahorro->moneda}}</strong> </td>
					<td>{{$ahorro->alcancia_id}}</td>
					<td>{{$ahorro->created_at}}</td>
				</tr>
			@endforeach
			</tbody>
			
		</table>
		</div>
