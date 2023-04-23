<%-- 
    Document   : Consultar
    Created on : 21 abr. 2023, 12:33:00
    Author     : sebas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <!-- XD -->
    <head>
        <meta charset="UTF-8"> 
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!-- para traer la libreria de iconos  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
        <!-- libreria jquwey  -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
        <!-- bx css  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.css" integrity="sha512-rV4fiystTwIvs71MLqeLbKbzosmgDS7VU5Xqk1IwFitAM+Aa9x/8Xil4CW+9DjOvVle2iqg4Ncagsbgu2MWxKQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="css/consultar.css">
        <link rel="stylesheet" href="css/estilos.css">
    </head>
    <body>
        <!-- <nav id="menu">
            <div class="cont"></div>
        </nav>
        
        <section id="cartel">
            <div class="fila">
            </div>
        </section> -->


        <section id="contactanos" class="espacios">
            <div class="contenedorF"> 
                 <!-- <div class="filaF"> -->
                    <div class="columnaF">
                        <form id="formulario_contacto" action="" method="post">
        
                            <h1>Contactanos</h1>
                            <h2>
                                Atención a consultas o incidencias 
                            </h2>
                            <h3>
                                Para brindar toda la calidad de nuestro servicios, porfavor completar los campos correspondientes para poder comunicarnos con usted. !Gracias por su preferencia¡
                            </h3>
                            <div class="entrada">
                                <input class="campos" type="text" 
                                placeholder="Nombres" id="txtnombres"
                                name="txtnombres">
                                <!-- <input class="campo" type="text" placeholder="Nombres" required> --><!-- required es para que sea requerido llenar -->
                            </div>
        
                            <div class="entrada">
                                <input class="campos" type="text" 
                                placeholder="Apellidos" 
                                id="txtapellidos" name="txtapellidos">
                            </div>
        
                            <div class="entrada">
                                <input class="campos" type="text" 
                                placeholder="Correo electrónico" 
                                id="txtcorreo" name="txtcorreo"><!-- ya va salir convalidado si se pone email -->
                            </div> 
        
                            <div class="entrada">
                                <input class="campos" type="tel" 
                                placeholder="Número de celular" 
                                id="txtcelular" name="txtcelular">
                            </div>
                            
                            <div class="entrada">
                                <select class="campo1" name="cine" id="lstcine">
                                    <option value="" selected hidden>(elige tu local favorito)</option>
                                    <option value="1">San Miguel</option>
                                    <option value="2">Centro Civico</option>
                                    <option value="3">Mall del sur</option>
                                    <option value="4">Salaverry</option>
                                </select>
                            </div>
        
                            <p>
                                <input type="checkbox" id="chkacepto">He leído y acepto los 
                                <a href="#">Términos y condiciones de privacidad </a> 
                            </p>
        
                            <p>
                                <input class="boton_enviar" type="submit" 
                                value="Enviar" onclick="validacionformulario()">
                            </p>
                            
                            <p id="msjerror" class="error">
                            </p>
                        </form>
                    </div>
                <!-- </div> -->
            </div>
        </section> <!-- contactanos -->  
        
        
        
<!-- 
        <footer id="pie">
            <div class="piee">
            </div>
        </footer>

        <script>
            $(document).ready(function () {
            $('.cont').load('./liquido.html');
            $('.piee').load('./pie.html');
            $('.peli').load('./lista_peliculas.jsp');
            
            $('.informacion').load('./info.html');
            });
        </script> -->


    </body>
</html>

<script src="scripts/validación_form.js"></script>
