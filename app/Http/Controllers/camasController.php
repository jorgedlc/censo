<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Camas;
use \App\Servicios;
use \App\Reservas;
use \App\Pacientes;

class camasController extends Controller
{
    
    public function index()
    {
        $camas=Camas::all();
        $servicios=Servicios::all();
        return View('pages.camas',compact('camas','servicios'));
    }

    public function controlCamas(Request $request){

        $nivelConsultar=1; //Nivel 1 por defecto
        
        if(isset($request->nivel)){
            $nivelConsultar = $request->nivel;
        }
            
        $listadoCamas= \App\Camas::select(
                'camas.id_cama',
                'camas.estado',
                'camas.ala',
                'camas.correlativo',
                'servicios.nombre_servicio',
                'servicios.nivel'
        )->join('servicios','camas.id_servicio','=','servicios.id_servicio')->where('servicios.nivel','=',$nivelConsultar)->get();

        
        
        return View('pages.controlCamas',compact('listadoCamas', 'nivelConsultar'));

    }

    public function obtenerPacienteCama(Request $request){

        $idCama=$request->idCamaSeleccionada;
        $result= \App\Reservas::where('id_cama',$idCama)->where('estado',1)->get();

        if(count($result)>0){
            $idpaciente=$result[0]->id_paciente;
            $paciente=\App\Pacientes::where('id_paciente',$idpaciente)->get();
            return $paciente;

        }else{
            return 0;
        }

        

        

    }

    public function ingresarCama(){
        echo "Find \()/ ingresar cama";
    }

    public function editarCama(){
        echo "Find \()/ editar cama";
    }

    public function obtenerCama(){
        echo "Find \()/ obtener cama";
    }




}
