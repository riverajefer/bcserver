<?php

class UsersBanco extends Eloquent  {

   protected $table = 'users_bancos';


	public function userBancoTransferencia()
	{
		return $this->hasMany('UserBancoTransferencia', 'userbanco_id');
	}

}
