<!-- MODAL EDITAR ESPECIALIDADES-->
<div class="modal fade right" id="modalEditarEspecialidad" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true" data-backdrop="false">
        <div class="modal-dialog modal-full-height modal-right modal-notify modal-success" role="document">
            <!--Content-->
            <div class="modal-content">
                <!--Header-->
                <div class="modal-header">
                    <p class="heading lead">Editar Especialidad</p>

                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true" class="white-text">&times;</span>
                    </button>
                </div>
                <form action="" id="frm_editar_especialidad" name="frm_editar_especialidad">
                  @csrf
                  <input  type ="hidden" id="ides" name="ides"/>
                  <!--Body-->
                  <div class="modal-body">
                    <div class="text-center">
                      <i class="fas fa-edit fa-3x mb-12 animated rotateIn"></i>
                    </div>
                    <input type="hidden" id="ed_id_especialidad" name="ed_id_especialidad" value=""/>
                    <div class="form-group">
                      <label for="edespecialidad">Especialidad:</label>
                      <input type="text" id="edespecialidad" name="edespecialidad" class="form-control" >
                    </div>
                    <div class="form-group">
                      <label for="edestado">Estado:</label>
                      <select class="form-control" name="edestado" id="edestado">
                        <option value="Activo">Activo </option>
                        <option value="Inactivo">Inactivo</option>
                      </select>
                    </div>
                  </div>
                <!--Footer-->
                <div class="modal-footer justify-content-center">
                    <button role="button" class="btn btn-success" id="editarPaciente" name="editarespecilidad">Guardar Cambios
                    </button>
                    <button role="button" class="btn btn-outline-success waves-effect" data-dismiss="modal">Cancelar</button>
                </div>
                </form>
            </div>
            <!--/.Content-->
        </div>
    </div>
    <!-- MODAL EDITAR ESPECIALIDADES-->