<%-- 
    Document   : pagBOL_AddLogin
    Created on : 6 jul. 2023, 23:42:57
    Author     : sebas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Reg_Sala.css" rel="stylesheet" type="text/css"/>
        <title>Login</title>
    </head>
    <body>
    <!-- Cabezera -->
    <header id="cabecera">
        <div class="contenedor">
            <nav id="op">
                <div class="contenedor">
                    <ul class="barra-top">
                        <li><h1><a href="crud.jsp">salir</a></h1></li>
                        <li><h1>LOGIN</h1></li>
                        <li><a href="crud.jsp">X</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>

    
    <section id="login" >
        <div class="contenedorT">
            <center>
                
                <form id="sesion" action="serv_control" method="post">
                    
                    <div class="txtsesion"><h1>Iniciar sesión</h1></div>

                            <div class="contenedorW1">

                                <div class="imagen">
                                    <img src="imagenes/logo.png" alt="" class="img_login" >
                                </div>
                                
                                <div class="llenar">
                                    <section id="tabl">
                                        
                                            <table class="tabla">
                                                <input type="hidden" name="opc" value="25">
                                                <tr><td><input class="campo" type="text" placeholder="Correo electrónico" id="txtcorreo" name="correo" required><!-- ya va salir convalidado si se pone email -->
                                                <tr><td><br>
                                                <tr><td><br>                                                    
                                                <tr><td><input class="campo" type="password" placeholder="Contraseña" id="txtcelular" name="pss" required>
                                                <tr><td><br>
                                                <tr><td><br>                                                     
                                            </table>
                                            <input class="botonIngresar" type="submit" value="Ingresar">
                                        
                                    </section>

                                    <br>
                                    <h3><a href="pagRegistro_asiento2.jsp">Crear una cuenta</a></h3>
                                </div>
                                
                            </div>
                    </form><!-- fin session -->
                    
                                    <%
                                        if (request.getAttribute("dato1")!=null) {
                                            String cad=(String)request.getAttribute("dato1");
                                    %>

                                    <div class="espaciado">
                                        <h2>Rq: <%=cad%></h2>
                                    </div>
                                    <%
                                        }
                                    %>
                    </center>
                    </div><!-- contenedorT -->
                                                   


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
                        <a href="" target="_blank">
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
