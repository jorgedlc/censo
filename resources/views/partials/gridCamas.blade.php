   @if($cama->estado=='Ocupada')        
                <div class="reference cama cama-ocupada" data-id="{{$cama->id_cama}}">
                    <p class="numero-cama">{{$cama->correlativo}}</p>
                    <i class="fa fa-bed fa-2x bed-data reference-color" data-id="{{$cama->id_cama}}" style="color: gray"></i>
                     <p>Ocupadas</p> 
                </div>
                
        @elseif($cama->estado=='Disponible')                                            
                <div class="reference cama cama-disponible" data-id="{{$cama->id_cama}}">
                        <p class="numero-cama">{{$cama->correlativo}}</p>
                        <i class="fa fa-bed fa-2x bed-data reference-color" data-id="{{$cama->id_cama}}" style="color:green;"></i>
                        <p>Disponible</p> 
                </div>
        @elseif($cama->estado=='Reservada')                                            
                <div class="reference cama cama-reservada" data-id="{{$cama->id_cama}}">
                    <p class="numero-cama">{{$cama->correlativo}}</p>
                    <i class="fa fa-bed fa-2x bed-data reference-color" data-id="{{$cama->id_cama}}"   style="color:#E5BE01"  ></i>
                    <p>Reservadas</p>
                </div >
    
        @elseif($cama->estado=='Mantenimiento')                                            
                <div class="reference cama cama-mantenimiento" data-id="{{$cama->id_cama}}">
                        <p class="numero-cama">{{$cama->correlativo}}</p>
                        <i class="fa fa-bed fa-2x bed-data reference-color" data-id="{{$cama->id_cama}}" style="color:red"></i>
                        <p>Manto.</p> 
                </div>
    @endif