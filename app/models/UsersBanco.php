<?php

class UsersBanco extends Eloquent  {

   protected $table = 'users_bancos';


	public function userBancoTransferencia()
	{
		return $this->hasMany('UserBancoTransferencia', 'userbanco_id');
	}

	public function usuario()
	{
		return $this->belongsTo('User', 'user_id');
	}		

	public function banco()
	{
		return $this->belongsTo('Bancos', 'banco_id');
	}	
}
