<!-- MODAL EDITAR CAMAS-->
<div class="modal fade right" id="modalEditarCama" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
            aria-hidden="true" data-backdrop="false">
            <div class="modal-dialog modal-full-height modal-right modal-notify modal-info" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header">
                        <p class="heading lead">Editar Cama</p>

                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="white-text">&times;</span>
                        </button>
                    </div>
                    <form action="" id="frm_editar_cama" name="frm_editar_cama">
                        @csrf
                        <!--Body-->
                        <div class="modal-body">
                            <div class="text-center">
                                <i class="fas fa-edit fa-3x mb-12 animated rotateIn"></i>
                            </div>
                            <input  type="text" id="ed_id_cama" name="ed_id_cama" />
                            <div class="form-group">
                                <input  type="text" id="ed_estado" name="ed_estado" />
                          
                            </div>
                            <div class="form-group">
                            <label for="edusuario">Ala:</label>
                                <select class="form-control" name="edAla" id="edAla" >
                                    <option value="1">Oriente</option>
                                    <option value="2">Poniente</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="ed_observaciones">Observaciones</label>
                                <textarea name="ed_observaciones" id="ed_observaciones" cols="30" rows="5" class="form-control" placeholder="Observaciones"></textarea>
                            </div>
                        </div>
                    <!--Footer-->
                    <div class="modal-footer justify-content-center">
                        <button type="submit" class="btn btn-info" id="editarPaciente" name="editarPaciente">Guardar Cambios
                        </button>
                        <a role="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">Cancelar</a>
                    </div>
                    </form>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!-- MODAL EDITAR CAMAS-->