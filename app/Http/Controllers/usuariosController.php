<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Usuarios;
use \App\Especialidades;
use \App\TipoUsuario;


class usuariosController extends Controller
{
    public function index()
    {
        $usuarios=Usuarios::all();
        $especialidades=Especialidades::all();
        $tiposUsuarios=TipoUsuario::all();
        return View('pages.usuarios',compact('usuarios','especialidades','tiposUsuarios'));
    }

    public function ingresarUsuarios(Request $request){
        echo "Find";
    }

    public function editarUsuarios(Request $request){
        echo "Find \()/";
    }

    public function obtenerUsuario(Request $request){

        echo "Find \()/";
    }
    
}
