<%-- 
    Document   : pagClientes
    Created on : 21/05/2023, 01:33:29 PM
    Author     : henry
--%>

<%@page import="modelo.Cliente"%>
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
        <h1>Lista Cliente JSP!</h1>
        <a href="crud.jsp">Retornar</a>
        <%
            Control obj=new Control();
        %>
        <h2 class="alert-default-info">Lista de Clientes</h2>
        <table class="table table-hover">
            <thead>
            <tr class="bg-dark"><th>DNI<th>Nombre<th>Apellido<th>Edad<th>Correo<th>Telefono<th>Ver
            </thead>   
            <%
                for(Cliente x:obj.liscli()){
            %>
            <tr><td><%=x.getDni()%><td><%=x.getNombre()%><td><%=x.getApellido()%><td><%=x.edad()%><td><%=x.getCorreo()%><td><%=x.getTel()%>
                <td><a href="serv_control?opc=5&cod=<%=x.getDni()%>">Boletas</a>
            <%
                }  
          %>  
    </body>
</html>
