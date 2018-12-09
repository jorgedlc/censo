<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Usuarios extends Model{


    protected $table="usuarios";

    protected $primaryKey='id_usuario';

    protected $fillable=[
        'id_usuario','id_especialidad','id_tipo_usuario','usuario','clave','nombres','apellidos','fecha_creacion','estado'
    ];

    public function especialidades(){
        return $this->hasOne('App\Especialidades','id_especialidad','id_especialidad');
    }

    public function tipoUsuarios(){
        return $this->hasOne('App\TipoUsuario','id_tipo_usuario','id_tipo_usuario');
    }

}



?>



