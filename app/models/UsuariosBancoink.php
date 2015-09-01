<?php

class UsuariosBancoink extends Eloquent  {

   protected $table = 'usuarios_bancoink';

/*
	public function user()
	{
		return $this->belongsTo('User', 'id');
	}
*/
	public function userBancoinkTransferencia()
	{
		return $this->hasMany('UserBancoinkTransferencia', 'usuariobancoink_id');
	}


}
