<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Reservas extends Model{

    protected $table='reservas';

    protected $primaryKey='id_reserva';

    protected $fillable=[
        'id_reserva','id_paciente','id_usuario','id_cama','estado','fecha_ingreso','observaciones'
    ];

    public function camas(){
        return $this->hasOne('App\Camas','id_cama','id_cama');
    }

    public function usuarios(){
        return $this->hasOne('App\Usuarios','id_usuario','id_usuario');
    }

    public function pacientes(){
        return $this->hasOne('App\Pacientes','id_paciente','id_paciente');
    }

}


?>