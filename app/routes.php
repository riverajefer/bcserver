<?php

Route::get('/', function()
{
	return View::make('index');

});

/****************************************************
  Rutas: Comunicación la Raspberry Pi
*****************************************************/

Route::get('rpi/user/{tag}', 'RpiController@getUser');
Route::get('rpi/user_id/{tag}', 'RpiController@getUserId');
Route::get('rpi/consecutivo/{id}', 'RpiController@getConsecutivo');
Route::get('rpi/estado_puerta/', 'RpiController@getEstadoPuerta');
Route::post('rpi/ahorro', 'AhorroController@postAhorro');


Route::get('usuarios', 'UsersController@getUsers');
Route::get('usuario/historial/{id}', 'UsersController@getHistorialUser');

Route::get('ahorro/{id}', 'AhorroController@getAhorro');

Route::post('api/registro/mobil', 'AuthController@postRegistro');

Route::group(array('prefix' => 'api', 'before' => 'auth.login'), function() {

    Route::get('login', 'AuthController@postLogin');

}); 

Route::group(array('prefix' => 'api', 'before' => 'auth.token'), function() {

	Route::get('portafolios', 'PortafolioController@lista');
	Route::get('portafolio/{id}', 'PortafolioController@portafolio');
	Route::get('portafolio/user/{id}', 'PortafolioController@portafolioUser');

	Route::post('registroPortafolio', 'PortafolioController@postRegistro');
	Route::post('registroTarjeta', 'UsersController@registroTarjeta');

	Route::post('suma_ahorro', 'AhorroController@sumaAhorro');

	Route::get('historial/{id}', 'AhorroController@getHistorial'); // Todos los registros por usuario
	Route::post('historial/rango/{id}', 'AhorroController@getHistorialRango'); // Todos los registros por usuario

	Route::get('historial/semana/{id}', 'AhorroController@getHistorialSemana');

	Route::get('historial/semana/last_row/{id}/{take}', 'AhorroController@getLastRowHistorialSemana');
	Route::get('historial/mes/last_row/{id}/{take}', 'AhorroController@getLastRowHistorialMes');
	Route::post('historial/rango/last_row/{id}/{take}', 'AhorroController@getLastRowHistorialRango');

	Route::get('historial/mes/{id}', 'AhorroController@getHistorialMes');
	Route::get('historial/detalles/{user_id}/{consecutivo}', 'AhorroController@getHistorialDetalles');

	Route::get('codigoTarjeta/{id}', 'UsersController@getCodigoTarjeta');

	Route::get('ahooro/last_30/{id}', 'AhorroController@getHistorialLast30'); // Total, ahorrado ultimos 30 dias

	Route::get('rpi/cerrar_puerta', 'RpiController@cerrarPuerta');

	Route::get('renta_semana', 'RentaController@getSemana');

}); 



Route::get('hola', function(){


$date = new DateTime(NULL, new DateTimeZone('UTC'));
$date->setDate(2015, 07, 06);
echo $ts = $date->getTimestamp();
echo "<br>";
echo '1438819200000';

	return;

});



Route::get('renta', 'RentaController@vista');
Route::post('renta', 'RentaController@save');

Route::get('renta_all', 'RentaController@getAll');
Route::get('renta_semana', 'RentaController@getSemana');




























// curl -u jefersonpatino@yahoo.es:320542 -X GET http://localhost/proyectos_laravel/laravel4/public/account
// curl -X GET -H "X-Auth-Token:fd23e0e26943d109a12cf99f1887100275ec143598716b16caec276bf921ec34" http://localhost/proyectos_laravel/laravel4/public/restaurants

