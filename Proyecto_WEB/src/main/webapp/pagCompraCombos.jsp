<%-- 
    Document   : pagCategoria
    Created on : 07/06/2023, 08:17:00 AM
    Author     : jefri
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.*,Controlador.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body background="imagenes/FONDOTRI.GIF">
        <%
        HttpSession ses=request.getSession();
        List<CompraCombo> lista;
        lista=(ArrayList<CompraCombo>)ses.getAttribute("canasta2");
        %>
    <center>
        <h2>Compra</h2>
        <a href="pagTiendaCombos.jsp">Retornar</a><br>
        <a href="LoginTienda.jsp">Hacer efectiva la compra</a>
        <form name="fr">
        <table cellpadding="10" cellspacing="10" border="2" class="table table-hover">
            <tr><th>Artículos<th>Descripcion<th>Precio Unitario<th>Cantidad<th>Importe Total<th>
            <%
                int indice=0;
                double suma=0;
                for(CompraCombo x:lista){
                double total=x.getCantidad()*x.getPrecio();
                suma+=total;
                %>
                <tr>
                    <td><img src="imagenes/<%=x.getNom()%>.jpg" width="100" height="100"/>
                    <td><%=x.getNom()%>
                    <td><%=x.getPrecio()%>€
                    <td><%=x.getCantidad()%>
                    <td>S/ <%=total%>
                    <td><center><a href="tienda?opc=10&ind=<%=indice%>">
                        <img width="40" height="40" src="imagenes/borrar.png"/></a></center>
            <%
                indice++;
                }
            %>
                
        </table>
            <h4>El costo de su carrito es de S/<%=suma%></h4>
            </form>
            </center>
        
    </body>
</html>
