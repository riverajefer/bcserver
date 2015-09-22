<?php

class UserBancoTransferencia extends Eloquent  {

   protected $table = 'users_bancos_transferencias';

	public function userBanco()
	{
		return $this->belongsTo('UsersBanco', 'userbanco_id');
	}

    public function transaccion()
    {
        return $this->hasOne('Transacciones', 'transferencia_banco_id');
    }    

}
