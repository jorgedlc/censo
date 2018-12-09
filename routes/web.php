<?php

use App\pacientesModel;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

#Rutas para cargar paginas 


Route::get('/ingreso','loginController@index');
Route::get('/controlCamas','camasController@controlCamas');

/*
Route::post('/ingresarUsuario', 'usuariosController@create');
Route::post('/obtenerUsuario', 'usuariosController@show');
Route::post('/editarUsuario','usuariosController@update');
*/
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/usuarios','usuariosController@index');
Route::get('/servicios','serviciosController@index');
Route::get('/camas','camasController@index');
Route::get('/tipousuario','tiposUsuariosController@index');
Route::get('/pacientes','pacientesController@index');
Route::get('/especialidades','especialidadesController@index');
Route::get('/reservas','reservasController@index');

/******************************Usuarios*********************************/
Route::post('/ingresarUsuarios','usuariosController@ingresarUsuarios');
Route::post('/editarUsuarios','usuariosController@editarUsuarios');
Route::post('/obtenerUsuario','usuariosController@obtenerUsuario');
/******************************Usuarios*********************************/

/*****************************Servicios*********************************/
Route::post('/ingresarServicios','serviciosController@ingresarServicios');
Route::post('/editarServicios','serviciosController@editarServicios');
Route::post('/obtenerServicio','serviciosController@obtenerServicio');
/*****************************Servicios**********************************/

/****************************Especialidad********************************/
Route::post('/editarEspecialidad','especialidadesController@editarEspecialidad');
Route::post('/ingresarEspecialidad','especialidadesController@ingresarEspecialidad');
Route::post('/obtenerEspecialidad','especialidadesController@obtenerEspecialidad');
/****************************Especialidad********************************/

/********************************Camas***********************************/
Route::post('/ingresarCama','camasController@ingresarCama');
Route::post('/editarCama','camasController@editarCama');
Route::post('/obtenerCama','camasController@obtenerCama');
/********************************Camas*************************************/

/******************************Pacientes***********************************/
Route::post('/ingresarPaciente','pacientesController@ingresarPaciente');
Route::post('/editarPaciente','pacientesController@editarPaciente');
Route::post('/obtenerPaciente','pacientesController@obtenerPaciente');
/******************************Pacientes***********************************/

/******************************Control camas***********************************/
Route::post('/buscarPaciente','pacientesController@buscarPaciente');
Route::post('/obtenerPacienteCama', 'camasController@obtenerPacienteCama');


