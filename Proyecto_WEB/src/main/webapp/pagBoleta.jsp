<%-- 
    Document   : pagBoleta
    Created on : 21/05/2023, 01:47:15 PM
    Author     : henry
--%>

<%@page import="java.util.ArrayList"%>
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
        <h1>Ejercicio 1 - Listar Boleta (DEPENDINETE)!</h1>
        <%
            ArrayList<Boleto> lista=(ArrayList)request.getAttribute("dato");
            int cate = Integer.parseInt(request.getAttribute("codigo").toString());
            out.print("<h3>Lista de Boletos: "+cate+"</h3>");
        %>
        
        
        <%
            Control obj = new Control();
            String nombre="";
            for (Cliente v : obj.buscarC(cate)) {
                if(v.getDni()==cate){
                    nombre=v.getNombre()+" "+v.getApellido();
                }
            }
            out.print("<h3>Cliente: "+nombre+"</h3>");
        %>
        
        <h2 class="alert-default-info">Lista de Boleto</h2>
        
        <a href="pagClientes.jsp">Retornar</a><br>
                
        <table class="table table-hover">
            <thead>
                <tr class="bg-dark"><th>CodigoBoleta<th>CodigoDetalle<th>Pago<th>Ver</tr>
            </thead>   
        <%
            for(Boleto x:lista){
            out.print("<tr><td>"+x.getBoleta()+"<td>"+x.getDetalle()+"<td>"+x.getPago());
        %>
            <td><a href="serv_control?opc=6&cod=<%=x.getDetalle()%>&dni=<%=cate%>">Detalle</a>
        <%
            }  
        %>    
        </table>
    </body>
</html>
