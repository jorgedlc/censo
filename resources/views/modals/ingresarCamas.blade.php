 <!-- MODAL INGRESAR CAMAS-->
 <div class="modal fade" id="modalIngresarCama" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-notify modal-info" role="document">
            <!--Content-->
            <div class="modal-content">
                <!--Header-->
                <div class="modal-header">
                    <p class="heading lead">Ingresar Cama</p>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="white-text">&times;</span>
                    </button>
                </div>

                <form action="" id="frm_ingresar_cama">
                        @csrf
                        <!--Body-->
                        <div class="modal-body">
                            <div class="text-center">
                                <i class="fas fa-plus fa-3x mb-12 animated rotateIn"></i>
                            </div>
                            <div class="form-group">
                                <label for="cr_servicio">Servicio</label>
                                <select name="cr_servicio" id="cr_servicio" class="form-control">
                                    @foreach($servicios as $servicio)
                                        <option value="{{$servicio->id_servicio}}">{{$servicio->nombre_servicio}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                            <label for="cr_estado_cama">Estado de la cama</label>
                            <select name="cr_estado_cama" id="cr_estado_cama" class="form-control">
                                <option value="1">Disponible</option>
                                <option value="2">Ocupado</option>
                                <option value="3">Reservada</option>
                                <option value="4">Mantenimiento</option>
                            </select>
                            </div>
                            <div class="form-group">
                                <label for="edusuario">Ala:</label>
                                    <select class="form-control" name="cr_ala" id="cr_ala" >
                                        <option value="1">Oriente</option>
                                        <option value="2">Poniente</option>
                                    </select>
                            </div>
                            <div class="form-group">
                                <label for="">Observaciones</label>
                                <textarea name="cr_observaciones" id="cr_observaciones" cols="30" rows="5" class="form-control" placeholder="Observaciones"></textarea>

                            </div>
                        </div>
                        <!--Footer-->
                        <div class="modal-footer">
                            <button class="btn btn-info" type="submit">Guardar Cambios</button>
                            <a role="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">Cancelar</a>
                        </div>
                    </div>
                <!--/.Content-->
                </form>
            </div>
        </div>
    <!-- MODAL INGRESAR CAMAS-->
