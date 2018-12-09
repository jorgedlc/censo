<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Servicios extends Model{

    protected $table='servicios';

    protected $primaryKey='id_servicio';

    protected $fillable=[
        'id_servicio','nombre_servicio','estado','nivel'
    ];

    public function camas(){
        return $this->hasMany('App\Camas');
    }

}



?>