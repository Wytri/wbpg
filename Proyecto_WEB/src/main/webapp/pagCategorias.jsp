<%-- 
    Document   : pagCategorias
    Created on : 20/05/2023, 07:21:04 PM
    Author     : henry
--%>

<%@page import="modelo.Categoria"%>
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
        <h1>Lista Categoria JSP!</h1>
        <a href="crud.jsp">Retornar</a>
        <%
            Control obj=new Control();
        %>
        <h2 class="alert-default-info">Lista de Categoria</h2>
        <table class="table table-hover">
            <thead>
            <tr class="bg-dark"><th>Categoria<th>Nombre<th>Ver
            </thead>   
            <%
                for(Categoria x:obj.liscat()){
            %>
            <tr><td><%=x.getId()%><td><%=x.getName()%>
                <td><a href="serv_control?opc=2&cod=<%=x.getId()%>">Pelicula</a>
            <%
                }  
          %>  
          </table><!-- fin tabla-->
    </body>
</html>
