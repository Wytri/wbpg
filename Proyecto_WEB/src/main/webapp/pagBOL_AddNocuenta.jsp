<%-- 
    Document   : pagBOL_AddNocuenta
    Created on : 12 jul. 2023, 21:40:03
    Author     : sebas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/BOL_estilo.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/liq.css"/>
        <title>Registrar</title>
    </head>
    <body>
            <!-- Cabezera -->
            <header id="cabecera">
                <div class="contenedor">
                    <nav id="op">
                        <div class="contenedor">
                            <ul class="barra-top">
                                <li><h1><a href="index.html">
                                            <div style="background-color: #007bff;" class="liquido"></div>
                                    <span style="font-size: 20px">Salir</span>
                                </a></h1></li>
                                <li><h1>LOGIN</h1></li>
                                <li id="antiliquido"><a href="serv_control?opc=28">X</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </header>
                    
                    
            <section id="login" >
                <div class="contenedorT">
                    <center>
                        
                        <form id="sesion" action="serv_control" method="post">
                            
                            <div class="txtsesion"><h1>ÚNETENOS</h1><img src="imagenes/logo.png" alt="" class="img_Reg" ></div>
        
                                    <div class="contenedorW1">
                                        
                                        <div class="llenar">
                                            <section id="tablREG">                                        
                                                    <table class="tabla">
                                                        <input type="hidden" name="opc" value="25">
                                                        <tr><td><input class="campo" type="text" placeholder="Documento de identidad DNI" id="txtDNI" name="DNIN" required>
                                                            <tr><td><br>
                                                            <tr><td><br>
                                                        <tr><td><input class="campo" type="text" placeholder="Nombres" id="txtNombres" name="Nombres" required>
                                                            <tr><td><br>
                                                            <tr><td><br>  
                                                        <tr><td><input class="campo" type="text" placeholder="Apellidos" id="txtApellidos" name="Apellidos" required>
                                                            <tr><td><br>
                                                            <tr><td><br>
                                                        <tr><td><input class="campo" type="date" placeholder="Fecha de nacimiento" id="txtFecha" name="Fecha" required>
                                                            <tr><td><br>
                                                            <tr><td><br>
                                                        <tr><td><input class="campo" type="text" placeholder="Correo electronico" id="txtcorreo" name="Correo" required>
                                                            <tr><td><br>
                                                            <tr><td><br>
                                                        <tr><td><input class="campo" type="tel" placeholder="telefono" id="txttelefono" name="telefono" required>
                                                            <tr><td><br>
                                                            <tr><td><br>                                                     
                                                    </table>

                                                    <p>
                                                        <input type="checkbox" id="chkacepto">He leído y acepto los 
                                                        <a href="#">Términos y condiciones de privacidad </a> 
                                                    </p>
                                                    <br><br>
                                                    
                                                    <input class="botonIngresar" type="submit" value="Ingresar">
                                                
                                            </section>
                                        
                                    </div>
                            </form><!-- fin session -->

                            </center>
                            </div><!-- contenedorT -->
            </section>


            <footer id="pie" class="espacios">
                <div class="fila">
                    <div class="columnaPIE">
                        <div class="opcionPIE"><!-- opcionPIE1 -->
                            <div class="columna">
                                <a href="" target="_blank">
                                    <i class="fa-solid fa-film"></i>
                                    Terminos de uso y seguridad
                                </a>
                            </div>
                        </div><!-- fin opcionPIE1 -->
                    </div>
        
                    <div class="columnaPIE">
                        <div class="opcionPIE"><!-- opcionPIE2 -->
                            <div class="columna">
                                <a href="" target="_blank" class="antiliquido">
                                    <i class="fa-solid fa-film"></i>
                                    Contactanos
                                </a>
                            </div>
                        </div> <!-- fin opcionPIE2 --> 
                    </div>
        
                </div>
              
            </footer>
    </body>
</html>
