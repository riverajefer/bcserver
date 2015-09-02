<?php

class UserBancoTransferencia extends Eloquent  {

   protected $table = 'users_bancos_transferencias';

	public function userBanco()
	{
		return $this->belongsTo('UsersBanco', 'id');
	}


}
