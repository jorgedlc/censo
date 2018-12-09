@extends('template.template')

@section('content')


 <h1 style="text-align:center;">Control de camas nivel {{$nivelConsultar}}</h1>



    <div class="container">


        <div class="row">

        <div class="col-md-4"></div>

        <div class="col-md-6">
            <!--***********************************************************Iconos de Referecias*************************************************-->
            <div  style="display:flex; flex-direction: column; justify-content: center; align-items: center;">
            <div class="references">
                    <div class="reference">
                            <i class="fa fa-bed fa-2x bed-data reference-color" style="color:#E5BE01"  ></i>
                            <span>Reservadas</span>
                    </div >
                    <div class="reference">
                            <i class="fa fa-bed fa-2x bed-data reference-color" style="color: gray"></i>
                            <span>Ocupadas</span>
                    </div>
                    <div class="reference">
                            <i class="fa fa-bed fa-2x bed-data reference-color" style="color:green;"></i>
                            Disponible
                    </div>
                    <div class="reference">
                            <i class="fa fa-bed fa-2x bed-data reference-color" style="color:red"></i>
                            Mantenimiento
                    </div>
            </div>
            <!--***********************************************************Iconos de Referecias*************************************************-->
        
        </div>        
    </div>
        
        
        </div>
        
    
    
    
    </div>

    

    <!--*********************************************Filtros por servicios o Areas******************************************************************-->
    <div class="container">
        <div class="row">       
            <div class="col-md-6"></div>
            <div class="col-md-3" style="text-align:center;">
                <form action="" id="frm_control_nivel">
                    <label for>Selecciona un nivel</label>
                        <select class="form-control" id="selectNivel" name="nivel" method="POST" action="/controlCamas" >
                            <option value="">--SELECCIONA UN NIVEL--</option>
                            <option value="3">Nivel 3</option>
                            <option value="4">Nivel 4</option>
                            <option value="5">Nivel 5</option>
                            <option value="6">Nivel 6</option>
                            <option value="7">Nivel 7</option>
                            <option value="8">Nivel 8</option>
                        </select>                                                
                </form>            
            </div>
        </div>
    </div>
    <!--*********************************************Filtros por servicios o Areas******************************************************************-->

    <!--**************************************Area De Camas***********************************************************************-->
    <div   >            

        <div class="row">

            <div class="col-md-3">
            </div>

            <!--**************************************Camas Ala Oriente***********************************************************************-->
            <div class="col-md-4">
                <h1 style="text-align:center; font-size:1.8rem;">Ala Poniente</h1>
                <div class="camas-container">
                    @foreach($listadoCamas as $cama)
                            @if($cama->ala=='1')                
                                @include('partials.gridCamas')
                            @endif
                    @endforeach                                
                </div>                
            </div>

            <!--**************************************Camas Ala Poniente***********************************************************************-->
            <div class="col-md-4">
                <h1 style="text-align:center; font-size:1.8rem;">Ala Oriente</h1>
                <div class="camas-container">
                    @foreach($listadoCamas as $cama)

                            @if($cama->ala=='2')                
                                @include('partials.gridCamas')
                            @endif

                    @endforeach                                
                </div>                
            </div>        
        </div>    
    </div>
    <!--**************************************Area De Camas***********************************************************************-->

@include('modals.registroPacientes')
@include('modals.informacionPaciente')
@endsection