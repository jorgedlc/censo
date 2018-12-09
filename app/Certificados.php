<?php

namespace App;


use Illuminate\Database\Eloquent\Model;


class Certificados extends Model{

    protected $table='certificados';

    protected $primaryKey='id_certificado';

    protected $fillable=[
        'id_certificado','id_detalle','canton','local_de_defuncion','servicio','id_etapa','id_municipio'
    ];


    public function detalleDoctor(){
        return $this->hasOne('App\DetalleDoctor','id_detalle','id_detalle');
    }

    public function municipios(){
        return $this->hasOne('App\Municipios','id_municipio','id_municipio');
    }
}

?>