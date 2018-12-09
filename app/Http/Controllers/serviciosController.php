<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Servicios;

class serviciosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $servicios=Servicios::all();
        return View('pages.servicios',compact('servicios'));
    }

    public function ingresarServicios(){
        echo "\()/ Ingresar";
    }

    public function editarServicios(){
        echo "\()/ editar";
    }
    public function obtenerServicio(){
        echo "\()/ obtener";
    }

}
