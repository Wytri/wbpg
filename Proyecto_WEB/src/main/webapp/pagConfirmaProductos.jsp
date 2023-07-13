<%-- 
    Document   : pagConfirma
    Created on : 13/06/2023, 11:08:07 AM
    Author     : jefri
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="modelo.*,Controlador.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body background="FOTOS/FONDOTRI.GIF">
    <center>
        <h1>CONFIRMA TU COMPRA</h1>
        <%
        HttpSession ses=request.getSession();
        DecimalFormat df = new DecimalFormat("#.00");
        double suma=0;
        List<CompraProducto> lista=(ArrayList<CompraProducto>)ses.getAttribute("canasta1");
        List<CompraCombo> lista2=(ArrayList<CompraCombo>)ses.getAttribute("canasta2");
        %>
        <table>
        <tr><td> Bienvenido, 
        <tr><td><a href="pagTiendaVirtual.jsp">Retornar</a><br>
        
        </table>
        
        <br>TABLA DE PRODUCTOS
        <table border="1">
        <tr><th>Codigo<th><center>Descripcion</center><th>Cantidad<th>Total a Pagar
        <%
        if(lista!=null){
        for(CompraProducto cp:lista){
        suma=suma+(cp.getPrecio()*cp.getCantidad());
        out.print("<tr><td>"+cp.getProd()+"<td>"+cp.getNombre()+"<td><center>"+cp.getCantidad()+"</center><td><center>"+cp.total()+"</center>");
        }
            }
        %>
        </table>
        
        <br>TABLA DE COMBOS
        <table border="1">
        <tr><th>Codigo<th><center>Descripcion</center><th>Cantidad<th>Total a Pagar
        <%
        if(lista2!=null){
        for(CompraCombo cp:lista2){
        suma=suma+(cp.getPrecio()*cp.getCantidad());
        out.print("<tr><td>"+cp.getComb()+"<td>"+cp.getNom()+"<td><center>"+cp.getCantidad()+"</center><td><center>"+cp.total()+"</center>");
        }
            }
        %>

        </table>
        <br>SUMA TOTAL:
        <br><input name="sum" value="<%=df.format(suma)%>" readonly="">
        <br><a href="tienda?opc=11&sum=<%=suma%>">Confirmar Compra</a><br>
        </center>
        
    </body>
</html>
