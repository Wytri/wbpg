document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("formulario_contacto").addEventListener('submit',validacionformulario);
})

var menserr = document.getElementById("msjerror");

// Funcion para validar los campos de entrada de formulario
function validacionformulario(evento){
    evento.preventDefault(); //Para evitar ejecutar el formulario de manera predeterminada

    // Comprueba si el campo nombre es valido (no está vacio)
    var nombre = document.getElementById("txtnombres").value;
    // alert(nombre);
    // ||  =  o
    if(nombre == null || nombre.length==0){
        menserr.innerHTML="El nombre no debe estar vacio";
        alert("El nombre no debe estar vacio")
        return false;
    }

    var regExpSololetras = /^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$/g;
    if(regExpSololetras.test(nombre)==false){

        menserr.innerHTML="El nombre solo debe contener letras y espacios";
        alert("El nombre solo debe contener letras y espacios")
        return false;
    }


    // Comprueba si el campo apellidos es válido (no está vacío)
    var apellidos = document.getElementById("txtapellidos").value;

    if(apellidos==null || apellidos.length==0) {
        msjerror.innerHTML="El apellido no debe estar vacío";
        alert("El apellido no debe estar vacío")
        return false;
    }

    var regExpSoloLetras = /^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$/g;
    if(regExpSoloLetras.test(apellidos)==false) {
        msjerror.innerHTML="El apellido sólo debe contener letras y espacios";
        alert("El apellido sólo debe contener letras y espacios")
        return false;
    }




    // comprueba si la direccion del correo tiene un formato valido
    var regExpCorreo = /^\w+([.-_+]?\w+)*@\w+([.-]?\w+)*(\.\w{2,10})+$/;
    var correo = document.getElementById("txtcorreo").value;

    if(regExpCorreo.test(correo)==false){

        menserr.innerHTML="El correo electrónico ingresado no tiene un formato válido";
        alert("El correo electrónico ingresado no tiene un formato válido")
        return false;
    }

    // Comprueba si el teléfono contiene sólo números
    var regExpSoloNumeros=/^[0-9]+$/;
    var telefono = document.getElementById("txtcelular").value;
    if(regExpSoloNumeros.test(telefono)==false) {
        msjerror.innerHTML="El teléfono debe contener sólo números";
        alert("El teléfono debe contener sólo números")
        return false;
    }

    // Comprueba si ha seleccionado un elemento de la lista 
    var i = document.getElementById("lstcine").selectedIndex;
    if(i==null || i==0) {
        msjerror.innerHTML="Debe seleccionar su cine favorito";
        alert("Debe seleccionar su cine favorito")
        return false;
    }

    // Comprueba si ha marcado el checkbox de terminos y condiciones
    var acepto = document.getElementById("chkacepto").checked;
    if(acepto==false) {
        msjerror.innerHTML="Debe aceptar los términos y condiciones de privacidad";
        alert("Debe aceptar los términos y condiciones de privacidad")
        return false;
    }
    
    // si paso todas las fases de validacion entonces ejecutara el programa php
    this.submit();

}