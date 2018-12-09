<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CalidadPaciente;
use App\Pacientes;

class pacientesController extends Controller
{
  
    public function index()
    {
        $pacientes=Pacientes::all();
        return View('pages.pacientes',compact('pacientes'));
    }

    public function ingresarPaciente(Request $request){
        echo "\()/ ingresar Paciente";
    }

    public function editarPaciente(Request $request){
        echo "\()/ editar Paciente";
    }

    public function obtenerPaciente(Request $request){

        echo "\()/ obtener Paciente";
    }

    public function buscarPaciente(Request $request){
        $numero_afiliacion =$request->numero_afiliacion;
        $paciente=Pacientes::where('numero_afiliacion','=',$numero_afiliacion)->get();
        echo $paciente;

    }

}
