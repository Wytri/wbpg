<%-- 
    Document   : pagAgregarTrabajador
    Created on : 27/05/2023, 06:50:23 PM
    Author     : henry
--%>

<%@page import="modelo.Usuarios"%>
<%@page import="Controlador.Control"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ejercicio 1 - Agregar Trabajador!</h1>
        <%
            Control obj = new Control();
            String codigo="";
            for(Usuarios u: obj.coduser()){
                codigo=u.getId();
            }
        %>
        <a href="tablasbbdd.jsp">Retornar</a>
     
        <form action="serv_control" method="POST">
            <table border="1">
                <input type="hidden" name="opc" value="16">
                <tr><td>Trabajador: <td><input name="codigo" value="<%=codigo%>">
                <tr><td>Nombre: <td><input type="text" name="nombre">
                <tr><td>Apellido: <td><input type="text" name="ape" value="">
                <tr><td>Nacimiento: <td><input type="date" name="fe">
                <tr><td>Usuario: <td><input type="text" name="user">
                <tr><td>Contraseña: <td><input type="text" name="pss">
                <tr><td><td><input type="submit"> 
            </table>
        </form>
    </body>
</html>
