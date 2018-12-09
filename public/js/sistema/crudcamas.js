$(document).ready(function() {

    let token=$('input[name=_token]').val();

                
    $('#frm_editar_cama').submit(function(event){
        event.preventDefault();

        let cr_servicio=$('#cr_servicio').val();
        let cr_estado_cama=$('#cr_estado_cama').val();
        let cr_ala=$('#cr_ala').val();
        let cr_observaciones=$('#cr_observaciones').val();

        let Cama={
            _token:token,
            cr_servicio,
            cr_estado_cama,
            cr_ala,
            cr_observaciones
        }

        $.ajax({
            url:'/editarCama',
            data:Cama,
            dataType:'text',
            method:'POST'

        }).done(function(data,textStatus,jqXHR){
            console.log(data);
        }).fail(function(jqXHR,textStatus){
            console.log(textStatus);
        })

    });

    $('#frm_ingresar_cama').submit(function(event){
        event.preventDefault();

        let ed_id_cama=$('#ed_id_cama').val();
        let ed_estado=$('#ed_estado').val();
        let edAla=$('#edAla').val();
        let ed_observaciones=$('#ed_observaciones').val();
        
        let Cama={
            _token:token,            
            ed_id_cama,
            ed_estado,
            edAla,
            ed_observaciones
        }

        $.ajax({
            url:'/ingresarCama',
            data:Cama,
            dataType:'text',
            method:'POST'

        }).done(function(data,textStatus,jqXHR){
            console.log(data);
        }).fail(function(jqXHR,textStatus){
            console.log(textStatus);
        })

    })  ;         

    $('#modalEditarCama').on('show.bs.modal',function(event){
        let idCama=$(event.relatedTarget).data().id;

        $.ajax({
            url:'/obtenerCama',
            method:'POST',
            data:{
                _token:token,
                idCama
            },
            dataType:'text'
        }).done(function(data,textStatus,jqXHR){
            console.log(data);
        }).fail(function(jqXHR,textStatus){
            console.log(textStatus);
        });

    });

    
  

});


