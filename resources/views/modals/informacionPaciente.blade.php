<!-- MODAL EDITAR USUARIO-->
<div class="modal fade right" id="modalInformacionPaciente" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog modal-full-height modal-right modal-notify modal-info" role="document">
        <!--Content-->
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header">
                <p class="heading lead">Información del paciente cama #<span id="numeroCama"> </span></p>

                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="white-text">&times;</span>
                </button>
            </div>
            <form action="" id="frm_editar_usuario" name="frm_editar_usuario">
                <!--Body-->

                <div id="informacionPacienteContent">

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
<!-- MODAL EDITAR USUARIO-->