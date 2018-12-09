<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Camas extends Model{

    protected $table='camas';

    protected $primaryKey='id_cama';

    protected $fillable=[
        'id_cama','id_servicio','estado','observaciones','ala','correlativo'
    ];

    public function reservas(){
        return $this->hasMany('App\Reservas');
    }

    public function servicios(){
        return $this->hasOne('App\Servicios','id_servicio','id_servicio');
    }
}

?>