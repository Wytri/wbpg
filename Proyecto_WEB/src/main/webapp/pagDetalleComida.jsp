<%-- 
    Document   : pagDetalleComida
    Created on : 20/05/2023, 08:37:50 PM
    Author     : henry
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.*"%>
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
             <%
                 Control obj = new Control();
                 String nom="";
                 String o = request.getAttribute("o").toString();
                 ArrayList<DetalleCombo> lista=(ArrayList)request.getAttribute("dato");
                 ArrayList<DetalleProducto> lista2=(ArrayList)request.getAttribute("dato");
                if (o.equals("1")) {         
                lista=(ArrayList)request.getAttribute("dato");
                    for (Combo c: obj.liscom()) {
                        for(DetalleCombo DC:lista){
                            if (c.getComb()==DC.getCom()) {
                                     nom = c.getNom();
                            }                                
                        }
                    }
                }
                else if (o.equals("2")) {
                        lista2=(ArrayList)request.getAttribute("dato");
                        for (Productos p: obj.lisprod()) {
                            for(DetalleProducto DP:lista2){
                            if (p.getProd()==DP.getProd()) {
                                     nom = p.getNombre();
                            }                                
                        }
                    }
                 }
                 
                    String c = request.getAttribute("codigo").toString();
                 int cod = Integer.parseInt(c);
                 
                 
                 out.print("<h3>Lista de Detalle: "+nom+"</h3>");
             %>


             <h2 class="alert-danger">Lista de Compras</h2>

             <a class="liq" href="pagComida.jsp">
                <div style="background-color: #dc3545" class="liquido"></div>
                <span>Retornar</span>
            </a><br>

             <div style="max-width: 30%">
                <table>
                    <thead>
                        <tr>
                            <th><a class="columna aa liq">
                            <span style="font-size: 20px; font-weight: 300">Codigo</span>
                            <div style="background-color: blue" class="liquido"></div>
                        </a>
                            <th><a class="columna aa liq">
                            <span style="font-size: 20px; font-weight: 300">Cantidad</span>
                            <div style="background-color: blue" class="liquido"></div>
                        </a>
                    </thead>   
                <%
                     if (o.equals("1")) {
                       for(DetalleCombo x:lista){
                %>
                <tr>
                    <td>
                        <a class="columna aa liq">
                            <span style="font-size: 20px; font-weight: 300"><%=x.getDetcom()%></span>
                            <div style="background-color: #6610f2" class="liquido"></div>
                        </a>
                    </td>
                    <td>
                        <a class="columna aa liq">
                            <span style="font-size: 20px; font-weight: 300"><%=x.getCantidad()%></span>
                            <div style="background-color: #008138" class="liquido"></div>
                        </a>
                    </td>
                </tr>
                <%
                    }  
                   }else if (o.equals("2")) {
                           for(DetalleProducto x:lista2){
                    out.print("<tr><td>"+x.getDetprod()+"<td>"+x.getCant());
                   }  
                      }

                %>  
                </table>
            </div>
    </body>
</html>
