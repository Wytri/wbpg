<%-- 
    Document   : pagRegistro_1-5
    Created on : 4 jul 2023, 19:44:28
    Author     : Code
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/sala.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        <nav>
            <ul>
                <li><h1><a href="crud.jsp">salir</a></h1></li>
                <li><h1>1.Selecciona tu asiento</h1></li>
                <li>.</li>
            </ul>
        </nav>
    </head>
    <body>
        <div class="contenedorW">
        <center>
            <div class="espaciado"></div>
            <h1>Ingreso de Usuario</h1>
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
                <li><h1><a href="pagRegistro_asiento2.jsp">No tengo cuenta</a></h1></li>

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
        </div>
    </body>
</html>
