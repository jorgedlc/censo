
$(document).ready(function(){

    let token=$('input[name=_token]').val();

   
    $('#frm_ingresar_servicio').submit(function(event){
        event.preventDefault();

        let ed_nombre_servicio=$('#ed_nombre_servicio').val();
        let ed_nivel=$('#ed_nivel').val();
        let ed_estado=$('#ed_estado').val();


        let servicio={
            _token:token,
            ed_nombre_servicio,
            ed_nivel,
            ed_estado
        };

        $.ajax({
            url:'/ingresarServicios',
            method:'POST',
            data:servicio,
            dataType:'text'
        }).done(function(data,jqXHR,textStatus){
            console.log(data);
        }).fail(function(textStatus,jqXHR){
            console.log(textStatus)
        })

    })

    $('#frm_editar_servicio').submit(function(event){
        event.preventDefault();


        let nombre_servicio=$('#nombre_servicio').val();
        let nivel=$('#nivel').val();

        let servicio={
            _token:token,
            nombre_servicio,
            nivel
        }

        $.ajax({
            url:'/editarServicios',
            method:'POST',
            data:servicio,
            dataType:'text'
        }).done(function(data,jqXHR,textStatus){
            console.log(data);
        }).fail(function(textStatus,jqXHR){
            console.log(textStatus)
        })

    })

    $('#modalEditarServicio').on('show.bs.modal',function(event){

        let idServicio=$(event.relatedTarget).data().id;

        $.ajax({
            url:'/obtenerServicio',
            data:{
                _token:token,
                idServicio  
            },
            method:'POST',
            dataType:'text'
        }).done(function(data,jqXHR,textStatus){
            console.log(data);
        }).fail(function(textStatus,jqXHR){
            console.log(textStatus);
        })


    });

});



