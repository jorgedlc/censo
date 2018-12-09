<?php

namespace App;


use Illuminate\Database\Eloquent\Model;


class Especialidades extends Model{

    protected $table='especialidades';

    protected $primaryKey='id_especialidad';

    protected $fillable=[
        'id_especilidad','nombre','estado'
    ];

    public function usuarios(){
        return $this->hasMany('App\Usuario');
    }


}


?>