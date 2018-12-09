<?php

namespace App;


use Illuminate\Database\Eloquent\Model;


class Pacientes extends Model{


    protected $table='pacientes';

    protected $primaryKey='id_paciente';

    protected $fillable=[
        'id_paciente','numero_afiliacion','dui','nombres','apellido','sexo','estado','observaciones','edad','ocupacion','estado_civil','id_calidad_paciente','id_certificado'
    ];

    public function calidadPacientes(){
        return $this->hasOne('App\CalidadPaciente','id_calidad_paciente','id_calidad_paciente');
    }


}


?>