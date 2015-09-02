<?php

class UsuariosBancoink extends Eloquent  {

   protected $table = 'usuarios_bancoink';

	public function userBancoinkTransferencia()
	{
		return $this->hasMany('UserBancoinkTransferencia', 'usuariobancoink_id');
	}


}
