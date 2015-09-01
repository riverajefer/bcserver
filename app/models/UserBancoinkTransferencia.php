<?php

class UserBancoinkTransferencia extends Eloquent  {

   protected $table = 'usuarios_bancoink_transferencias';



	public function userBancoink()
	{
		return $this->belongsTo('UsuariosBancoink', 'id');
	}


}
