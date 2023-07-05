<%-- 
    Document   : NuevoCliente
    Created on : 4 jul 2023, 19:25:25
    Author     : Code
--%>
<%@page import="Controlador.Control"%>
<%@page import="java.util.*"%>
<%@page import="modelo.*"%>
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
                <li><h1>2.Ingrese sus Datos</h1></li>
                <li>.</li>
            </ul>
        </nav>
    <body>
        <div class="contenedorW">
        <center>
                <h1>Ingrese sus datos</h1>
                    <form action="serv_control" method="post" name="fr">
                        <table border=1 class="caja">
                            <input type="hidden" name="tcos" value="1">
                            <input type="hidden" name="tcod" value="1">
                            <input type="hidden" name="tipo" value="4">
                            <tr><td>Ingrese su documento de identidad<td><input type="text" placeholder="DNI" id="txtdni" name="txtdni" class="campo" required> 
                            <tr><td>Ingrese su nombre<td><input type="text" placeholder="Nombre" id="txtnombres" name="txtnombres" class="campo" required><br>
                            <tr><td>Ingrese su apellido<td><input type="text" placeholder="Apellidos" id="txtapellidos" name="txtapellidos" class="campo" required><br>
                            <tr><td>Fecha de nacimiento<td><input type="date" id="txtfecha" name="txtfecha" class="campo" required><br>
                            <tr><td>Direccion de correo<td><input type="email" placeholder="Correo" id="txtcorreo" name="txtcorreo" class="campo" required><br>
                            <tr><td>Telefono celular<td><input type="tel" placeholder="Telefono" id="txttelefono" name="txttelefono" class="campo" required><br>
                            <tr><td>costo de la peli<td>1
                    <tr><td><input type="submit">
                        </table>
                    </form>
        </center>
        </div>    
    </body>
</html>
