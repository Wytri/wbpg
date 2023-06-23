<%-- 
    Document   : pagCategoria
    Created on : 07/06/2023, 08:17:00 AM
    Author     : jefri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.*,Controlador.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/estiloliquido.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background: black">
        <a href="pagTiendaVirtual.jsp">INICIO</a>
        <%
        Control obj=new Control();
        int cuenta=0;
        %>
    <center>
        <h1 style="color: white; font-family: Arial;">COMPRAR COMBOS</h1>
            
        <table border="2">
            
            <tr>
                
                <%
                    for(Combo x: obj.liscom()){
                    
                    %>
                    <td>
            <center>
                            <img src="imagenes/<%=x.getNom()%>.jpg" width="200" height="200"/>
                            <div style="color: white;font-family: Arial;"><%=x.getNom()%></div>
                            <div style="color: white;font-family: Arial;">Apartir de:</div>
                            <div style="color: white;font-family: Arial;">S/ <%=x.getPrecio()%></div>
                            </center>
                            <a class="columna aa" href="tienda?opc=8&id=<%=x.getComb()%>">
                            <span style="color: white; font-family: Arial;">COMPRAR</span>
                            <div style="background-color: #0056b3" class="liquido"></div>
                            </a>
                        
                            
                <%
                    cuenta++;
                    if(cuenta%4==0)out.print("<tr>");
                    }
                %>
            </tr>
        </table>
            </center>
    </body>
</html>
