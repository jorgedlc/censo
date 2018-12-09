<!-- MODAL EDITAR PACIENTE-->
<div class="modal fade right" id="modalEditarPaciente" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
            aria-hidden="true" data-backdrop="false">
            <div class="modal-dialog modal-full-height modal-right modal-notify modal-success" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header">
                        <p class="heading lead">Editar Paciente</p>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="white-text">&times;</span>
                        </button>
                    </div>
                    <form action="" id="frm_editar_paciente" name="frm_editar_paciente">
                       @csrf
                      <!--Body-->
                      <input type="hidden"  id="edid_paciente" name="edid_paciente" class="">

                      <div class="modal-body">
                        <div class="text-center">
                        <i class="fas fa-edit fa-3x mb-12 animated rotateIn"></i>
                          
                        </div>
                        <div class="form-group">
                          <label for="ednumero_afiliacion">Numero de Afiliación:</label>
                          <input type="text" id="ednumero_afiliacion" name="ednumero_afiliacion" class="form-control">
                          
                        </div>

                        <div class="form-group">
                          <label for="eddui">DUI:</label>
                          <input type="text" id="eddui" name="eddui" class="form-control">                          
                        </div>

                        <div class="form-group">
                          <label for="ednombres">Nombres: </label>
                          <input type="text" id="ednombres" name="ednombres" class="form-control">                          
                        </div>

                        <div class="form-group">
                          <label for="edapellido">Apellidos:</label>
                          <input type="text" id="edapellido" name="edapellido" class="form-control">                          
                        </div>

                        <div class="form-group">
                          <label for="edsexo">Sexo:</label>
                          <select class="form-control" id="edsexo" name="edsexo">
                            <option value="M">Masculino</option>
                            <option value="F">Femenino</option>
                          </select>
                        </div>

                        <div class="form-group">
                          <label for="edobservaciones">Observaciones:</label>
                          <textarea rows="4" cols="50" id="edobservaciones" name="edobservaciones" class="form-control">

                          </textarea>
                        </div>

                        <div class="form-group">
                          <label for="edad">Edad:</label>
                          <input type="text" id="ededad" name="ededad" class="form-control">                          
                        </div>

                        <div class="form-group">
                          <label for="edocupacion">Ocupación:</label>
                          <select class="form-control" id="edocupacion" name="edocupacion">
                            <option value="estudiante">Estudiante</option>
                            <option value="trabajador">Trabajador</option>
                          </select>
                        </div>

                        <div class="form-group">
                          <label for="estado_civil">Estado Civil:</label>
                          <select class="form-control" id="edestado_civil" name="edestado_civil">
                            <option value="casado">Casado/a</option>
                            <option value="soltero">Soltero/a</option>
                            <option value="divorciado">Divorciado/a</option>
                            <option value="viudo">Viudo/a</option>
                          </select>
                        </div>
                      </div>

                    <!--Footer-->
                    <div class="modal-footer justify-content-center">                        
                        <button class="btn btn-success" >Guardar Cambios</button>
                        <a role="button" class="btn btn-outline-success waves-effect" data-dismiss="modal">Cancelar</a>
                    </div>
                    </form>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!-- MODAL EDITAR PACIENTE-->