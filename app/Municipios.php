<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Municipios extends Model{


    protected $table='municipios';

    protected $primaryKey='id_municipio';

    protected $fillable=[
        'id_municipio','nombre','id_departamento'
    ];


    public function departamentos(){

        return $this->hasOne('App\Departamentos','id_departamento','id_departamento');

    }



}



?>