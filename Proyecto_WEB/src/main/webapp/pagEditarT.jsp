<%-- 
    Document   : pagEditar
    Created on : 27/05/2023, 04:08:57 PM
    Author     : henry
--%>

<%@page import="modelo.*"%>
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
        <h1>Ejercicio 1 - Modificar Trabajador!</h1>
        <%
            String c = request.getParameter("cod");
            Control obj = new Control();
        %>
        <a href="tablasbbdd.jsp">Retornar</a>
     
        <form action="serv_control" method="POST">
            <table border="1">
                <input type="hidden" name="opc" value="15">
                <tr><td>Trabajador: <td><input name="codigo" value="<%=c%>">
                <%
                    for (Trabajadores x: obj.listra()) {
                            if (x.getId().equals(c)) {
                %>
                <tr><td>Nombre: <td><input type="text" name="nombre" value="<%=x.getNom()%>">
                <tr><td>Apellido: <td><input type="text" name="ape" value="<%=x.getApe()%>">
                <tr><td>Nacimiento: <td><input type="date" name="fe" value="<%=x.getFh()%>">
                <%                  
                                }
                        }
                    for (Usuarios x: obj.lisusu()) {
                            if (x.getId().equals(c)) {
                %>
                <tr><td>Usuario: <td><input type="text" name="user" value="<%=x.getUser()%>">
                <tr><td>Contraseña: <td><input type="text" name="pss" value="<%=x.getPssw()%>">
                <%                  
                        }
                }
                %>
                <tr><td><td><input type="submit"> 
            </table>
        </form>
    </body>
</html>
