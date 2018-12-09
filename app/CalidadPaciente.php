<?php

namespace App;


use Illuminate\Database\Eloquent\Model;


class CalidadPaciente extends Model{

    protected $table='calidad_paciente';

    protected $primaryKey='id_calidad_paciente';

    protected $fillable=[
        'id_calidad_paciente','nombre'
    ];

    public function pacientes(){
        return $this->hasMany('App\Pacientes');
    }

}


?>