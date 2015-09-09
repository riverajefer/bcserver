<?php

class UsuariosBancoinkTransferencias extends Eloquent  {

   protected $table = 'usuarios_bancoink_transferencias';


	public function usuariosBancoink()
	{
		return $this->belongsTo('UsuariosBancoink', 'id');
	}	

}
