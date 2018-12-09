<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Departamentos{

    protected $table='departamentos';

    protected $primaryKey='id_departamento';

    protected $fillable=[
        'id_departamento','nombre'
    ];

    public function municipios(){
        return $this->hasMany('App\Municipios');
    }
}


?>