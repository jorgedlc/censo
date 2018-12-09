<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Etapas extends Model{

    protected $table='etapas';
    
    protected $primaryKey="id_etapa";

    protected $fillable=[
        'id_etapa','etapa'
    ];
    public function certificados(){
        return $this->hasMany('App\Certificados');    
    }

}


?>