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
        <a href="crud.jsp">Retornar</a><br>
        
        <%
            Control obj=new Control();
        %>
        <div>
            <h2 class="alert-default-info">Lista de Combo</h2>
            <a href="pagAddCombos.jsp">Adicionar</a><br>
            <table class="table table-hover">
                    <thead>
                    <tr class="bg-dark"><th>Codigo<th>Nombre<th>Descripcion<th>Actualizar<th>Ver
                    </thead>   
                    <%
                        for(Combo x:obj.liscom()){
                    %>
                    <tr><td><%=x.getComb()%><td><%=x.getNom()%><td><%=x.getDescr()%>
                        <td><a href="serv_control?opc=4&cod=<%=x.getComb()%>">Datos</a>
                        <td><a href="serv_control?opc=3&cod=<%=x.getComb()%>&o=1">Registro</a>
                    <%
                        }  
                  %>  
            </table>
        </div>
        
        <div>
            <h2 class="alert-default-info">Lista de Producto</h2>
            <a href="pagAddProductos.jsp">Adicionar</a><br>
            <table class="table table-hover">
                <thead>
                <tr class="bg-dark"><th>Codigo<th>Nombre<th>Descripcion<th>Actualizar<th>Ver
                </thead>   
                <%
                    for(Productos x:obj.lisprod()){
                %>
                <tr><td><%=x.getProd()%><td><%=x.getNombre()%><td><%=x.getDescr()%>
                    <td><a href="serv_control?opc=19&cod=<%=x.getProd()%>">Datos</a><br>
                    <td><a href="serv_control?opc=3&cod=<%=x.getProd()%>&o=2">Registro</a>
                <%
                    }  
              %>  
            </table>
        </div>
        
    </body>
</html>
