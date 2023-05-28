<%-- 
    Document   : pagConfirmacion
    Created on : 27/05/2023, 07:55:08 PM
    Author     : henry
--%>

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
        <h1>Ejercicio 1 - Eliminar Trabajador!</h1>
        <%
            String c = request.getParameter("cod");
            Control obj = new Control();
        %>
        <a href="tablasbbdd.jsp">Retornar</a>
        <h1>¿Estas seguro que quiere eliminar este registro?</h1>
        <!--<form action="serv_control" method="POST">
            <table border="1">
                <input type="hidden" name="opc" value="17">
                <input type="text" value="<%=c%>" name="cod">
                <input type="submit">
            </table>
        </form>-->
        <input type="text" name="cod" value="<%=c%>">
        <a href="serv_control?opc=17&cod=<%=c%>">Confirmar</a>
    </body>
</html>
