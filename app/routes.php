<?php

Route::get('/', function()
{
	return View::make('Backend/login');
});

/****************************************************
  Rutas: Comunicación con la Raspberry Pi
*****************************************************/

Route::get('rpi/user/{tag}', 'RpiController@getUser');
Route::get('rpi/user_tag/{tag}', 'RpiController@getUserId');
Route::get('rpi/sesion_user_alcancia/{user_id}/{alcancia_id}', 'RpiController@sesionUserAlcancia');
Route::post('rpi/deposito', 'AhorroController@postDeposito');
Route::post('rpi/rejected/{id}', 'RpiController@saveRejected');


/****************************************************
  Rutas: De inicio, no valida Token
*****************************************************/
Route::group(array('prefix' => 'api'), function() {

	Route::get('login', array('before' => 'auth.login', 'uses' => 'AuthController@postLogin'));
    Route::post('registro/mobil', 'AuthController@postRegistro');

	// Rutas para el restablecer la contraseña
	Route::post('resetpw/{email}', 'ResetPwController@getCodigo');
	Route::post('valida_codigo/{codigo}', 'ResetPwController@validaCodigo');
	Route::post('cambio_pw/{codigo}', 'ResetPwController@cambioPw');

}); 


/*************************************************************
  Rutas: De la aplicación, filtro de validación de Token
*************************************************************/

Route::group(array('prefix' => 'api', 'before' => 'auth.token'), function() {

	Route::post('registroTarjeta', 'UsersController@registroTarjeta');

	Route::get('saldo/{id}', 'AhorroController@getSaldo');
	Route::get('ahooro/last_30/{id}', 'AhorroController@getAhorro30dias'); // Total, ahorrado ultimos 30 dias

	/** Rutas Historial **/
	Route::get('historial/{id}', 'HistorialController@getHistorial'); // Todos los registros por usuario
	Route::post('historial/rango/{id}', 'HistorialController@getHistorialRango'); // Todos los registros por usuario
	Route::get('historial/more/{id}/{take}', 'HistorialController@getMoreHistorial');
	Route::get('historial/detalles/{user_id}/{consecutivo}', 'HistorialController@getHistorialDetalles');
	Route::get('historial/get_data_grafica/{id}', 'HistorialController@getDataGrafica');
	/** End Rutas Historial **/

	Route::get('codigoTarjeta/{id}', 'UsersController@getCodigoTarjeta');
	Route::post('perfil/modificar/{user_id}', 'UsersController@postModificarPerfil');


	/****************************************************
	  Rutas Retiros y Transacciones
	*****************************************************/
	Route::get('ryt/buscar/{email}/{mi_email}', 'RyTController@buscarUserbyEmail');
	Route::post('ryt/agregar_user', 'RyTController@addUserBancoink');
	Route::post('ryt/agregar_transferencia_bancoink', 'RyTController@TransferenciaBancoink');
	Route::get('ryt/lista_transferencias_bancoink/{user_id}', 'RyTController@listaTransferenciasBancoink');
	Route::get('ryt/lista_bancos', 'RyTController@listaBancos');
	Route::get('ryt/banco/{id}', 'RyTController@getBanco');
	Route::post('ryt/agregar_banco', 'RyTController@addBanco');
	Route::get('ryt/lista_transferencias_banco/{user_id}', 'RyTController@listaTransferenciasBanco');
	Route::get('ryt/detalles_transferencias_bancoink/{id}', 'RyTController@detallesTransferenciasBancoink');
	Route::get('ryt/detalles_transferencias_banco/{id}', 'RyTController@detallesTransferenciasBanco');
	Route::get('ryt/cuenta_bancaria/{id}', 'RyTController@getCuentaBancaria');
	Route::post('ryt/agregar_transferencia_banco', 'RyTController@TransferenciaBanco');
	Route::get('ryt/detalle_transferencias_bancoink/{id}', 'RyTController@detalleTransferenciasBancoink');
	Route::get('ryt/detalle_transferencias_banco/{id}', 'RyTController@detalleTransferenciasBanco');

}); 


/****************************************************
  Rutas: Backend
*****************************************************/

Route::get('admin/login', array('as' => 'login', 'uses' => 'AdminLoginController@login'));
Route::post('admin/login', array('as' => 'login', 'uses' => 'AdminLoginController@postLogin'));
Route::get('admin/logout', array('as' => 'salir', 'uses' => 'AdminLoginController@salir'));

Route::group(array('prefix' => 'admin', 'before' => 'auth.admin'), function() {

    Route::get('usuarios', array('as' => 'usuarios', 'uses' => 'AdminUsersController@getUsers'));
    Route::get('usuarios/historial/{id}', array('as' => 'historial_usuario', 'uses' => 'AdminHistorialController@getHistorialByUser'));
    Route::get('usuarios/historial/deposito/{id}', array('as' => 'deposito', 'uses' => 'AdminHistorialController@getDeposito'));
    Route::get('usuarios/historial/transferencia-bancoink/{id}', array('as' => 'bancoink', 'uses' => 'AdminHistorialController@getTransferenciaBancoink'));
    Route::get('usuarios/historial/transferencia-banco/{id}', array('as' => 'banco', 'uses' => 'AdminHistorialController@getTransferenciaBanco'));
    Route::get('cuentas_bancarias', array('as' => 'cuentas', 'uses' => 'AdminCuentasController@getCuentasBanco'));
    Route::get('cuentas_bancarias/validar/{id}', array('as' => 'validar-cuenta', 'uses' => 'AdminCuentasController@validarCuenta'));
    Route::get('cuentas_bancarias/datelle/{id}', array('as' => 'detalle-cuenta', 'uses' => 'AdminCuentasController@detalleCuenta'));
    Route::get('cuentas_bancarias/transferencias/{id}', array('as' => 'cuenta-transferencias', 'uses' => 'AdminCuentasController@cuentaTransferencias'));
    Route::get('cuentas_bancarias/lista-transferencias', array('as' => 'lista-transferencias', 'uses' => 'AdminCuentasController@listaTransferenciasBancarias'));
    Route::get('cuentas_bancarias/transferencia/validar/{id}', array('as' => 'validar-transferencia', 'uses' => 'AdminCuentasController@validarTransferencia'));
	Route::get('historial', array('as' => 'historial', 'uses' => 'AdminHistorialController@geHistorialAll'));    
	Route::get('historial/depositos', array('as' => 'historial-depositos', 'uses' => 'AdminHistorialController@geHistorialDepositos'));    
	Route::get('historial/transferencias-bancoink', array('as' => 'historial-transferencias-bancoink', 'uses' => 'AdminHistorialController@geHistorialTransferenciasBancoink'));    

});



Route::get('hola', function(){
	return "Hola";
});


