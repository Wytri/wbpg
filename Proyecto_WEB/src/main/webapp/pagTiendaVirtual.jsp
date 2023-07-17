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
        <%
        Control obj=new Control();
        int cuenta=0;
        %>
    <center>
            <br>
            <h1 style="color: white; font-family: Arial;">TIENDA VIRTUAL</h1>
            <form action="" name="fr">
                <div class="fila">
                    <%
                            double suma = 1.1;
                            %>
                        <a href="serv_control?opc=26&sum=<%=suma%>" class="liq">
                        <span>SALIR</span>
                        <div style="background-color: #ffca2c" class="liquido"></div>
                    </a>
                </div>
                <div class="fila">
                    <div class="columna">
                        <div class="columna">
                            <a href="pagTiendaProductos.jsp" class="columna">
                                <span>PRODUCTOS</span>
                                <div style="background-color: #009a43" id="emp" class="liquido"></div>
                            </a>
                        </div>
                
                        <div class="columna">
                            <a href="pagTiendaCombos.jsp" class="columna">
                                <span>COMBOS</span>
                                <div style="background-color: #3d0894" id="emp" class="liquido"></div>
                            </a>
                        </div>
                        
                        <div class="columna">
                            <a href="pagConfirmaProductos.jsp" class="liq">
                                <span>RESUMEN</span>
                                <div style="background-color: #DC3545" class="liquido"></div>
                            </a>
                        </div>
                    </div>
                </div>
            </form>
            </center>
    </body>
</html>
