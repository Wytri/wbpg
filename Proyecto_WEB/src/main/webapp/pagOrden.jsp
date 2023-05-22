<%-- 
    Document   : pagOrden
    Created on : 21/05/2023, 08:21:50 PM
    Author     : henry
--%>

<%@page import="Controlador.Control"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ejercicio 1 - Listar Orden (DEPENDINETE)!</h1>
        <%
            ArrayList<DetalleComida> lista=(ArrayList)request.getAttribute("dato");
            int dni=Integer.parseInt(request.getAttribute("dni").toString());
            int deta=Integer.parseInt(request.getAttribute("detalle").toString());
            int cate = Integer.parseInt(request.getAttribute("codigo").toString());
            out.print("<h3>Lista de Orden: "+cate+"</h3>");
        %>
        
        
        <%
            Control obj = new Control();
            String nombre="";
            for (Cliente v : obj.buscarC(dni)) {
                if(v.getDni()==dni){
                    nombre=v.getNombre()+" "+v.getApellido();
                }
            }
            out.print("<h3>Cliente: "+nombre+"</h3>");
        %>
        
        <h2 class="alert-default-info">Lista de Orden</h2>
        
        <a href="serv_control?opc=6&cod=<%=deta%>&dni=<%=dni%>">Retornar</a><br>
                
        <table class="table table-hover">
            <thead>
                <tr class="bg-dark"><th>Orden<th>Combo<th>Cantidad<th>Producto<th>Cantidad<th>Coste</tr>
            </thead>   
        <%
            for(DetalleComida x:lista){
            out.print("<tr><td>"+x.getOrden()+"<td>"+x.getCombo()+"<td>"+x.getCantc()+"<td>"+x.getProd()+"<td>"+x.getCantp()+"<td>"+x.getPago());
    
            }  
        %>    
        </table>
    </body>
</html>
