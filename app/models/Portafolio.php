<?php

class Portafolio extends Eloquent  {

   protected $table = 'portafolios';

    public function renta()
    {
        return $this->hasMany('Renta');
    }


}
