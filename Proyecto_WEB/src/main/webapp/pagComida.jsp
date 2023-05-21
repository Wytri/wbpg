<%-- 
    Document   : pagComida
    Created on : 20/05/2023, 07:53:14 PM
    Author     : henry
--%>

<%@page import="modelo.*"%>
<%@page import="Controlador.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista Comida JSP!</h1>
        <a href="crud.jsp">Retornar</a>
        <%
            Control obj=new Control();
        %>
        <div>
            <h2 class="alert-default-info">Lista de Combo</h2>
            <table class="table table-hover">
                    <thead>
                    <tr class="bg-dark"><th>Codigo<th>Nombre<th>Descripcion<th>Ver
                    </thead>   
                    <%
                        for(Combo x:obj.liscom()){
                    %>
                    <tr><td><%=x.getComb()%><td><%=x.getNom()%><td><%=x.getDescr()%>
                        <td><a href="serv_control?opc=2&cod=<%=x.getComb()%>">Registro</a>
                    <%
                        }  
                  %>  
            </table>
        </div>
        
        <div>
            <h2 class="alert-default-info">Lista de Producto</h2>
            <table class="table table-hover">
                <thead>
                <tr class="bg-dark"><th>Codigo<th>Nombre<th>Descripcion<th>Ver
                </thead>   
                <%
                    for(Productos x:obj.lisprod()){
                %>
                <tr><td><%=x.getProd()%><td><%=x.getNombre()%><td><%=x.getDescr()%>
                    <td><a href="serv_control?opc=2&cod=<%=x.getProd()%>">Registro</a>
                <%
                    }  
              %>  
            </table>
        </div>
        
    </body>
</html>
