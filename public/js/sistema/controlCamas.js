$(document).ready(function(){


    let token = $('input[name=_token]').val();
    let idPacienteSeleccionado=0;
    let idCamaSeleccionada=0;


    const switchCampos=(condicionBool)=>{
        $('#idPaciente').attr('disabled',condicionBool);
        $('#dui').attr('disabled',condicionBool);
        $('#nombres').attr('disabled',condicionBool);
        $('#apellidos').attr('disabled',condicionBool);
        $('#sexo').attr('disabled',condicionBool);
        $('#estado').attr('disabled',condicionBool);
        $('#edad').attr('disabled',condicionBool);
        $('#calidadPaciente').attr('disabled',condicionBool);
        $('#observaciones').attr('disabled',condicionBool);        
    }

    const generarTemplateInformacion=(data,datalabels)=>{

        let template = `<div class="informacion-paciente">`;
        
            datalabels.forEach((label)=>{

            if ((label !== 'id_paciente') && (label !== 'id_certificado') && (label !== 'id_calidad_paciente') && (label !== 'estado')) {
                template += generateItem(data, label);
            }
        });

        template += `</div>`;
        

        return template;
    }

    const generateItem=(data,label)=>{

        return(
            `<div class="row fila-info-paciente">
                <div class="col-md-4">
                    <b>${(label==='numero_afiliacion')?'Afiliación':label.charAt(0).toUpperCase() + label.slice(1)}</b>
                </div>
                <div class="col-md-8">
                    ${data[0][label]}
                </div>
            </div>
            `
        );
    }


    const consultarInformacion=(event,EstadoCama)=>{
        let idCama = $(event.target).data().id;

        if (idCama === undefined) {
            let padre = $(event.target).parent()[0];
            idCama = (padre.attributes[1].nodeValue);
        }
        
        switch(EstadoCama){

            case 'mantenimiento':
                swal({
                    type: 'error',
                    title: 'Oops...',
                    text: 'La cama que ha seleccionado esta actualmente en mantenimiento!'
                })
            break;
            case 'reservada':
                
            break;
            case 'disponible':
                //Asignar paciente
                swal({
                    title: 'Reservar camilla?',
                    text: "Desea reservar la camilla seleccionada!",
                    type: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Asignar',
                    cancelButtonText:'Cancelar'
                }).then((result) => {
                    if (result.value) {
                        $('#registroPacientes').modal('show')
                    }
                })
            break;
            case 'ocupada':
                //Mostrar opciones de 
                //Declarar paciente como difunto                
                //Ver datos del paciente
                //Realizar traslado del paciente 
                //Cambiar estado de la camilla        
                idCamaSeleccionada=idCama;                
                 swal({
                     type: 'info',
                     title: 'Cama actualmente ocupada',
                     text: 'La cama que ha selecciondo esta ocupada!',
                     confirmButtonText:'Cerrar',
                     footer: `<a href="" data-target="#modalInformacionPaciente" data-toggle="modal">Ver información del paciente</> `
                 });
            break;

        }        
    }

    const llenarCamposPaciente = (data) =>{
           $('#idPaciente').val(data[0].id_paciente);
           $('#numero_afiliacion').val(data[0].numero_afiliacion);
           $('#dui').val(data[0].dui);
           $('#nombres').val(data[0].nombres);
           $('#apellidos').val(data[0].apellido);
           $('#sexo').val(data[0].sexo);
           $('#estado').val(data[0].estado);
           $('#edad').val(data[0].edad);
    }



    $('.cama-mantenimiento').click(function(event){        
        let EstadoCama='mantenimiento';
        consultarInformacion(event,EstadoCama);
    });

    $('.cama-reservada').click(function(event){
        let EstadoCama='reservada';
        consultarInformacion(event, EstadoCama);
    });
    $('.cama-disponible').click(function(event){
        let EstadoCama='disponible';
        consultarInformacion(event, EstadoCama);
    });
    $('.cama-ocupada').click(function(event){
        let EstadoCama='ocupada';
        consultarInformacion(event, EstadoCama);
    });

    $('#selectNivel').change(function(event){
        $('#frm_control_nivel').submit();
    });

    $('#frmBuscarPaciente').submit(function(event){
        event.preventDefault();    
    })

    $('#modalInformacionPaciente').on('show.bs.modal', function (event) {    

        $.ajax({
            url: './obtenerPacienteCama',
            method: 'POST',
            data:{
                _token:token,
                idCamaSeleccionada
            },
            dataType:'json',            
        }).done(function(data,textStatus,jqXHR){
            console.log(data);  
            let datalabels = Object.keys(data[0]);
            let templateRow=generarTemplateInformacion(data, datalabels);
            $('#informacionPacienteContent').html(templateRow);
            console.log('Template');
            console.log(templateRow);

        }).fail(function(jqXHR,textStatus){
            console.log(textStatus);
        });

    });


    $('#btnBuscarPacientes').on('click',function(event){

        let numero_afiliacion = $('#numero_afiliacion').val();

        /*
            apellido,dui,edad,estado,estado_civil,id_calidad_paciente
            id_paciente,nombres,numero_afiliacion,observaciones,ocupacion,sexo        
        */

        $.ajax({
            url:'/buscarPaciente',
            method:'POST',
            data:{numero_afiliacion,_token:token},
            dataType:'json'
        }).done(function(data,jqXHR,textStatus){
            console.log(data);

            if(data[0]===undefined){

                  swal({
                      title: 'Paciente no registrado',
                      text: "Desea ingresar el paciente!",
                      type: 'question',
                      showCancelButton: true,
                      confirmButtonColor: '#3085d6',
                      cancelButtonColor: '#d33',
                      confirmButtonText: 'Ingresar',
                      cancelButtonText: 'Cancelar'
                  }).then((result) => {
                      if (result.value) {
                        $('#frmBuscarPaciente')[0].reset();
                        switchCampos(false);                        
                      }
                  })

            }else{

                console.log(Object.keys(data[0]));
                let datalabels = Object.keys(data[0]);

                generarTemplateInformacion(data,datalabels);
                llenarCamposPaciente(data);
                switchCampos(true)                

                $('#observaciones').attr('disabled', false);
                
            }
        }).fail(function(textStatus,jqXHR){
            console.log(textStatus);
        });
    });
});