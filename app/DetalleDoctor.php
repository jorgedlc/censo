<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class DetalleDoctor extends Model{


    protected $table='detalle_doctores';
    
    protected $primaryKey='id_detalle';   

    protected $fillable=[
        'id_detalle,fecha_ingreso','fecha_defuncion','causa_defuncion_linea','causa_defuncion_intervalo_aproximado','causa_defuncion_otros_estados','causa_de muerte','asistencua_enfermedad','defuncion_enfermedad','defuncion_por_medico','defuncion_medico_forense'
    ];  

    public function certificados(){
        return $this->hasMany('App\Certificados');
    }
}


?>