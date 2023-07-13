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
            <h1 style="color: white; font-family: Arial;">¿Desea añadir algún Combo o Producto a su compra?</h1>
            <form action="" name="fr">
                <div class="fila">
                    <div class="columna">
                        <div class="columna">
                            <a href="tienda?opc=6" class="columna">
                                <span>SÍ</span>
                                <div style="background-color: #0056b3" id="emp" class="liquido"></div>
                            </a>
                        </div>
                
                
                
                        <div class="columna">
                            <%
                            double suma = 1.1;
                            %>
                            <a href="serv_control?opc=26&sum=<%=suma%>" class="columna">
                                <span>NO</span>
                                <div style="background-color: #0056b3" id="emp" class="liquido"></div>
                            </a>
                        </div>
                    </div>
                </div>
            </form>
            </center>
    </body>
</html>
