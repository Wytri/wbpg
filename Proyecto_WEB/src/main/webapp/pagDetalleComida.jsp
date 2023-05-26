<%-- 
    Document   : pagDetalleComida
    Created on : 20/05/2023, 08:37:50 PM
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
            <h1>Ejercicio 1 - Listar Detalle de Comida (DEPENDINETE)!</h1>
             <%
                 String o = request.getAttribute("o").toString();
                 ArrayList<DetalleCombo> lista=(ArrayList)request.getAttribute("dato");;
                 ArrayList<DetalleProducto> lista2=(ArrayList)request.getAttribute("dato");;
                if (o.equals("1")) {
                     lista=(ArrayList)request.getAttribute("dato");
                }else if (o.equals("2")) {
                        lista2=(ArrayList)request.getAttribute("dato");
                    }
                    String c = request.getAttribute("codigo").toString();
                 int cod = Integer.parseInt(c);
                 out.print("<h3>Lista de Detalle: "+cod+"</h3>");
             %>


             <%
                 Control obj = new Control();
             %>

             <h2 class="alert-default-info">Lista de Compras</h2>

             <a href="pagComida.jsp">Retornar</a><br>

             <table class="table table-hover">
                 <thead>
                     <tr class="bg-dark"><th>CodigoDetalle<th>Codigo<th>Cantidad Compra<th>
                 </thead>   
             <%
                  if (o.equals("1")) {
                    for(DetalleCombo x:lista){
                 out.print("<tr><td>"+x.getDetcom()+"<td>"+x.getCom()+"<td>"+x.getCantidad());
                 }  
                }else if (o.equals("2")) {
                        for(DetalleProducto x:lista2){
                 out.print("<tr><td>"+x.getDetprod()+"<td>"+x.getProd()+"<td>"+x.getCant());
                }  
                   }
                 
             %>    
    </body>
</html>
