<%-- 
    Document   : pagRegistro_asiento3
    Created on : 4 jul 2023, 21:21:27
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
                <li><h1>3.Confirmar su compra</h1></li>
                <li>.</li>
            </ul>
        </nav>
    </head>
    <body>
        <div class="contenedorW">
            <center>
              <h1>Detalles de la boleta</h1>
              <%
                  String a="aa";
                  %>
        <tr><td>Documento de identidad: <td><%=a%>
        <tr><td>Id detalle: <td><%=a%><br>
            <td>Nombre del Cliente: <td><%=a%><br>
            <tr><td>Ingrese su apellido: <td><%=a%><br>
            <tr><td>sala: <td><%=a%><br>
            <tr><td>Fecha: <td><%=a%><br>
            <tr><td>Asiento: <td><%=a%><br>
            <tr><td>costo de la peli: <td><%=a%><br>
                    <!--si se puede mostrar los productos-->
            <tr><td>costo total de productos comprados: <td><%=a%><br> 
            <tr><td>Pago total: <td><%=a%>
            <td><a href="serv_control?opc=25&iddetalle=<%=a%>&dni=<%=a%>&pago=<%=a%>">Pagos</a>
            </center>
        </div>
    </body>
</html>
