function enviado(){
    if($('#email').val()=='' || $('#msj').val()=='' || $('#nombre').val()==''){
        Swal.fire({
            icon: 'error',
            title: 'Faltan llenar campos',
            showConfirmButton: false,
            timer: 1500,
          });
    }
    else{
        Swal.fire({
            icon: 'success',
            title: 'Enviado Correctamente',
            showConfirmButton: false,
            timer: 1500,
          });
    }
}