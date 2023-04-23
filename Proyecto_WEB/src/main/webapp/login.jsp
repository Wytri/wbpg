<%-- 
    Document   : login
    Created on : 21/04/2023, 03:24:27 AM
    Author     : jefri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/login.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <div class="espaciado"></div>
            <h1>ACCESO AL MODO ADMINISTRADOR PARA EDITAR</h1>
            <h1>VERIFICACIÓN DE USUARIO</h1>
            <img src="imagenes/logo.png" alt="">
            <section id="tabl">
                <form action="serv_control" method="post">
                    <table class="tabla">
                        <input type="hidden" name="opc" value="1">
                        <tr><td>Nombre:  <td><input type="text" name="nom" required>
                        <tr><td>Contraseña:  <td><input type="password" name="pss" required>
                        <tr><td><td><input type="submit">
                    </table>
                </form>


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

            </section>
        </center>
    </body>
</html>
