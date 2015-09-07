<?php

class UserAlcanciaDeposito extends Eloquent  {

   protected $table = 'users_alcancia_deposito';


    public function userAlcancia(){
        return $this->belongsTo('UserAlcancia');
    }

}
