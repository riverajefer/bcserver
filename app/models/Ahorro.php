<?php

class Ahorro extends Eloquent  {

   protected $table = 'ahorro';


    public function alcancia(){
        return $this->belongsTo('Alcancia');
    }
}
