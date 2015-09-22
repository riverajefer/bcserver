<?php

class Transacciones extends Eloquent  {

   protected $table = 'transacciones';


	public function userBancoTransferencia()
	{
		return $this->belongsTo('UserBancoTransferencia', 'transferencia_banco_id');
	}

	public function userBancoinkTransferencia()
	{
		return $this->belongsTo('UserBancoinkTransferencia', 'transferencia_id');
	}

	public function userAlcancia()
	{
		return $this->belongsTo('UserAlcancia', 'user_alcancia_id');
	}	

	public function user()
	{
		return $this->belongsTo('User', 'user_id');
	}		

}
