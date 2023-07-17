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
        <link rel="stylesheet" href="css/liq.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1 class="alert-danger">Eliminar Trabajador!</h1>
        <%
            String c = request.getParameter("cod");
            Control obj = new Control();
        %>
        <a class="liq" href="tablasbbdd.jsp">
            <div style="background-color: #dc3545" class="liquido"></div>
            <span>Retornar</span>
        </a><br>
        <h1>¿Estas seguro que quiere eliminar este registro?</h1>
        <!--<form action="serv_control" method="POST">
            <table border="1">
                <input type="hidden" name="opc" value="17">
                <input type="text" value="<%=c%>" name="cod">
                <input type="submit">
            </table>
        </form>-->
        <input style="font-size: 100px; border: none; color: #dc3545" type="text" name="cod" value="<%=c%>">
        <a class="liq" href="serv_control?opc=17&cod=<%=c%>">
            <div style="background-color: #33077c" class="liquido"></div>
            <span>Confirmar</span>
        </a><br>
    </body>
</html>
