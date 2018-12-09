$(document).ready(function(){


    $('.see-password1').click(function(event){
        if($('#nueva_contrasena').get(0).type==='text')
        {
            $('#nueva_contrasena').get(0).type='password';
        }
        else
        {
            $('#nueva_contrasena').get(0).type='text';
        }        
    });

    $('.see-password2').click(function(event){
        if($('#confirmacion_nueva').get(0).type==='text')
        {
            $('#confirmacion_nueva').get(0).type='password';
        }
        else
        {
            $('#confirmacion_nueva').get(0).type='text';
        }        

    })


    $('#modalCambiarClave').on('show.bs.modal', function (event) {
        let id = $(event.relatedTarget).data().id;
        $('#id_usuario_contrasena').val(id);
        console.log(id);
    });

    $('#frm_editar_clave').submit(function(event){

        event.preventDefault();

        let form = $('#frm_editar_clave').serialize();
        let password=$('#nueva_contrasena').val();
        let confirmacion=$('#confirmacion_nueva').val();
        if(password===confirmacion)
        {					

            $.ajax({
                url:'../usuarios/cambiarContrasena',
                method:'POST',
                dataType:'text',
                data:form	
            }).done(function(data,jqXHR,textStatus){		
                console.log(data);
                if(data==='1')
                {
                    swal({
                        type: 'success',
                        title: 'Felicidades la contraseña ha sido cambiada con éxito',
                        animation: false,
                        customClass: 'animated tada'
                    }).then((value) => {
                        if (value) {
                            location.href = "../usuarios/index";
                        }
                    });
                }
                else
                {		
					swal(
                        'Ops...',
                        'Lo sentimos ha ocurrido un error',
                        'error'
                    )
                }							
                
            }).fail(function(textStatus,jqXHR){							
                console.log(textStatus);					
            });							
        }
        else
        {							            
            swal({
                  type: 'error',
                  title: 'Oops...',
                  text: 'Las contraseñas ingresadas no coinciden!'						  
            })
        }						

    });



});