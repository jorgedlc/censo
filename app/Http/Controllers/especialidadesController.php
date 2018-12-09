<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Especialidades;

class especialidadesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $especialidades=Especialidades::all();

        return View('pages.especialidades',compact('especialidades'));
    }

    public function editarEspecialidad(){

        echo "\()/ editar";
    }
    public function ingresarEspecialidad(){

        echo "\()/ ingresar";
    }
    public function obtenerEspecialidad(){

        echo "\()/ obtener";
    }
}
