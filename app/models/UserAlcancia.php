<?php

class UserAlcancia extends Eloquent  {

   protected $table = 'users_alcancia';


    public function alcancia(){
        return $this->belongsTo('Alcancia');
    }

    public function user(){
        return $this->belongsTo('User');
    }    

    public function userAlcanciaDeposito(){
        return $this->hasMany('UserAlcanciaDeposito', 'user_alcancia_id');
    }

    public function transacciones(){
        return $this->hasMany('Transacciones', 'user_alcancia_id');
    }
}
