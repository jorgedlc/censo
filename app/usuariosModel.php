<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class usuariosModel extends Model
{
    protected $table = 'usuarios';

    protected $fillable = [
        'id_usuario', 'id_especialidad', 'id_tipo_usuario','usuario','clave','nombres','apellidos','fecha_creacion','estado',
    ];

}
