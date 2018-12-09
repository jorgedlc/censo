<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class TipoUsuario extends Model{


    protected $table='tipo_usuarios';

    protected $primaryKey='id_tipo_usuario';

    protected $fillable=[
        'id_tipo_usuario','nombre','estado'
    ];

    public function usuarios(){
        $this->hasMany('App\Usuario');
    }

}


?>