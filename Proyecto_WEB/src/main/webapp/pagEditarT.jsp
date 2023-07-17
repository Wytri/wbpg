<%-- 
    Document   : pagEditar
    Created on : 27/05/2023, 04:08:57 PM
    Author     : henry
--%>

<%@page import="modelo.*"%>
<%@page import="Controlador.Control"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/liq.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            span{
                font-size: 40px;
                color: #dc3545;
            }
            
            .campo{
                font-size: 40px;
            }
            
            /*Efectos para todas las clases fila*/
            .fila {
                    display: flex;
                    flex-direction: row;
                    align-items: center;
                    justify-content: space-around;
            }

            /*Efectos para todas las clases columna*/
            .columna {
                    flex-basis: 0;
                    flex-grow: 1;
                    margin-left: 5px;
                    margin-right: 5px;
                    padding-left: 10px;
                    padding-right: 10px;
            }
        </style>
    </head>
    <body>
        <h1 class="alert-danger">Ejercicio 1 - Modificar Trabajador!</h1>
        <%
            String c = request.getParameter("cod");
            Control obj = new Control();
        %>
        <a class="liq" href="tablasbbdd.jsp">
            <div style="background-color: #dc3545" class="liquido"></div>
            <span>Retornar</span>
        </a><br>
        
        <div class="fila">
            <div class="columna">
                <form action="serv_control" method="POST">
                    <table border="1">
                        <input type="hidden" name="opc" value="15">
                        <tr><td><span>TRABAJADOR: </span><td><input class="campo" name="codigo" value="<%=c%>">
                        <%
                            for (Trabajadores x: obj.listra()) {
                                    if (x.getId().equals(c)) {
                        %>
                        <tr><td><span>NOMBRE: </span><td><input class="campo" type="text" name="nombre" value="<%=x.getNom()%>">
                        <tr><td><span>APELLIDO: </span><td><input class="campo" type="text" name="ape" value="<%=x.getApe()%>">
                        <tr><td><span>NACIMIENTO: </span><td><input class="campo" style="width: 100%" type="date" name="fe" value="<%=x.getFh()%>">
                        <%                  
                                        }
                                }
                            for (Usuarios x: obj.lisusu()) {
                                    if (x.getId().equals(c)) {
                        %>
                        <tr><td><span>USUARIO: </span><td><input class="campo" type="text" name="user" value="<%=x.getUser()%>">
                        <tr><td><span>CONTRASEÑA: </span><td><input class="campo" type="text" name="pss" value="<%=x.getPssw()%>">
                        <%                  
                                }
                        }
                        %>
                        <tr><td><td><input class="campo alert-danger" type="submit"> 
                    </table>
                </form>
            </div>
            <div class="columna">
                <img src="imagenes/logo.png" alt="alt"/>
            </div>
        </div>
    </body>
</html>
