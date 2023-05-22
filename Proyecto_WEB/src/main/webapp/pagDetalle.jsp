<%-- 
    Document   : pagDetalle
    Created on : 21/05/2023, 04:20:30 PM
    Author     : henry
--%>

<%@page import="Controlador.Control"%>
<%@page import="modelo.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ejercicio 1 - Listar Detalle (DEPENDINETE)!</h1>
        <%
            ArrayList<Pelicula> lista=(ArrayList)request.getAttribute("dato");
            int dni=Integer.parseInt(request.getAttribute("dni").toString());
            int cate = Integer.parseInt(request.getAttribute("codigo").toString());
            out.print("<h3>Lista de Detalle: "+cate+"</h3>");
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
        
        <h2 class="alert-default-info">Lista de Detalle</h2>
        
        <a href="serv_control?opc=5&cod=<%=dni%>">Retornar</a><br>
                
        <table class="table table-hover">
            <thead>
                <tr class="bg-dark"><th>Función<th>Fecha/Hora<th>Sala<th>Asiento<th>Nombre<th>Orden<th>Detalle de la Orden</tr>
            </thead>   
        <%
            for(Pelicula x:lista){
            out.print("<tr><td>"+x.getFuncion()+"<td>"+x.getInicio()+"<td>"+x.getSala()+"<td>"+x.getAsi()+"<td>"+x.getNom()+"<td>"+x.getOrden());
        %>
            <td><a href="serv_control?opc=7&cod=<%=x.getOrden()%>&dni=<%=dni%>&detalle=<%=cate%>">Orden</a>
        <%
            }  
        %>    
        </table>
    </body>
</html>
