<%-- 
    Document   : pagComida
    Created on : 20/05/2023, 07:53:14 PM
    Author     : henry
--%>

<%@page import="modelo.*"%>
<%@page import="Controlador.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/liq.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            body{
                font-size: 20px;
            }
            
            .liqu {
                position: relative;
                margin: 10px;
                padding: 30px;
                text-align: center;
                display: block;
                font-weight: 700;
                text-decoration: none;
                text-transform: uppercase;
                width: 350px;
                overflow: hidden;
                border-radius: 40px;
            }

            .liqu span {
                position: relative;
                color: #fff;
                font-size: 20px;
                font-family: Arial;
                letter-spacing: 8px;
                z-index: 1;
            }

            .liqu .liquido {
                position: absolute;
                top: -80px;
                left: 0;
                width: 350px;
                height: 270px;
                /* background: #4973ff; */
                box-shadow: inset 0 0 50px rgba(0, 0, 0, .5s);
                transition: .5s;
            }

            .liqu .liquido::after, .liqu .liquido::before {
                content: '';
                width: 170%;
                height: 250%;
                position: absolute;
                top: 0;
                left: 50%;
                transform: translate(-50%, -75%);
                background: #000;
            }

            .liqu .liquido::before {
                border-radius: 45%;
                background: rgba(20, 20, 20, 1);
                animation: animate 5s linear infinite;
            }

            .liqu .liquido::after {
                border-radius: 40%;
                background: rgba(20, 20, 20, .5);
                animation: animate 10s linear infinite;
            }

            .liqu:hover .liquido {
                top: -138px;
            }

            @keyframes animate {
                0% {
                    transform: translate(-50%, -70%) rotate(0deg);
                }

                100% {
                    transform: translate(-50%, -75%) rotate(360deg);
                }
            }
            
            .liqui {
                position: relative;
                margin: 10px;
                padding: 30px;
                text-align: center;
                display: block;
                font-weight: 700;
                text-decoration: none;
                text-transform: uppercase;
                width: 106px;
                overflow: hidden;
                border-radius: 40px;
            }

            .liqui span {
                position: relative;
                color: #fff;
                font-size: 20px;
                font-family: Arial;
                letter-spacing: 8px;
                z-index: 1;
            }

            .liqui .liquido {
                position: absolute;
                top: -100px;
                left: 0;
                width: 320px;
                height: 250px;
                /* background: #4973ff; */
                box-shadow: inset 0 0 50px rgba(0, 0, 0, .5s);
                transition: .5s;
            }

            .liqui .liquido::after, .liqui .liquido::before {
                content: '';
                width: 170%;
                height: 250%;
                position: absolute;
                top: 0;
                left: 50%;
                transform: translate(-50%, -75%);
                background: #000;
            }

            .liqui .liquido::before {
                border-radius: 45%;
                background: rgba(20, 20, 20, 1);
                animation: animate 5s linear infinite;
            }

            .liqui .liquido::after {
                border-radius: 40%;
                background: rgba(20, 20, 20, .5);
                animation: animate 10s linear infinite;
            }

            .liqui:hover .liquido {
                top: -148px;
            }
            
           
            
            .liquid {
                position: relative;
                margin: 0px;
                padding: 30px;
                text-align: center;
                display: block;
                font-weight: 300;
                text-decoration: none;
                text-transform: uppercase;
                width: 495px;
                overflow: hidden;
                border-radius: 40px;
            }

            .liquid span {
                position: relative;
                color: #fff;
                font-size: 20px;
                font-family: Arial;
                letter-spacing: 8px;
                z-index: 1;
            }

            .liquid .liquido {
                position: absolute;
                top: -150px;
                left: 0;
                width: 495px;
                height: 390px;
                /* background: #4973ff; */
                box-shadow: inset 0 0 50px rgba(0, 0, 0, .5s);
                transition: .5s;
            }

            .liquid .liquido::after, .liquid .liquido::before {
                content: '';
                width: 170%;
                height: 250%;
                position: absolute;
                top: 0;
                left: 50%;
                transform: translate(-50%, -75%);
                background: #000;
            }

            .liquid .liquido::before {
                border-radius: 45%;
                background: rgba(20, 20, 20, 1);
                animation: animate 5s linear infinite;
            }

            .liquid .liquido::after {
                border-radius: 40%;
                background: rgba(20, 20, 20, .5);
                animation: animate 10s linear infinite;
            }

            .liquid:hover .liquido {
                top: -198px;
            }
        </style>
    </head>
    <body>
        <a class="liq" href="crud.jsp">
            <div style="background-color: blue" class="liquido"></div>
            <span>Retornar</span>
        </a><br>
        
        <%
            Control obj=new Control();
        %>
        <div>
            <h2 class="alert-default-info">Lista de Combo</h2>
            
            <div style="zoom: 0.95">
            <table class="table table-hover">
                    <thead>
                    <tr class="bg-dark"><th>Codigo<th>Nombre<th>Descripcion<th>Actualizar<th>Ver
                    </thead>
                    <%
                        for(Combo x:obj.liscom()){
                    %>
                    <tr>
                        <td style="background-color: #c4c4c4">
                            <a href="" class="columna aa liqui" onclick="return false;">
                                <span style="font-size: 20px"><%=x.getComb()%></span>
                                <div style="background-color: #004085" class="liquido"></div>
                            </a>
                        </td>
                        <td style="background-color: #c4c4c4">
                            <a href="" class="columna aa liqu" onclick="return false;">
                                <span style="font-size: 20px"><%=x.getNom()%></span>
                                <div style="background-color: #e15361" class="liquido"></div>
                            </a>
                        </td>
                        <td style="background-color: #c4c4c4">
                            <!--<a href="" class="columna aa liquid" onclick="return false;">-->
                                <span style="font-size: 32px; font-weight: 500"><%=x.getDescr()%></span>
                               <!-- <div style="background-color: #008138" class="liquido"></div>
                            </a>-->
                        </td>
                        <td style="background-color: #c4c4c4">
                            <a class="columna aa liqui" href="serv_control?opc=4&cod=<%=x.getComb()%>">
                                <span style="font-size: 20px; font-weight: 300">MOD</span>
                                <div style="background-color: #382063" class="liquido"></div>
                            </a>
                        <td style="background-color: #c4c4c4">
                            <a class="columna aa liqui" href="serv_control?opc=3&cod=<%=x.getComb()%>&o=1">
                                <span style="font-size: 20px; font-weight: 300">MOS</span>
                                <div style="background-color: #d58512" class="liquido"></div>
                            </a>
                    <%
                        }  
                  %>  
            </table>
            </div>
            <div>
                <a class="liq" href="pagAddCombos.jsp">
                    <div style="background-color: #127155" class="liquido"></div>
                    <span>Adicionar</span>
                </a><br>    
            </div>
            
        </div>
        
        <div>
            <h2 class="alert-default-info">Lista de Producto</h2>
            <table class="table table-hover">
                <thead>
                <tr class="bg-dark"><th>Codigo<th>Nombre<th>Descripcion<th>Actualizar<th>Ver
                </thead>   
                <%
                    for(Productos x:obj.lisprod()){
                %>
                <tr>
                    <td style="background-color: #c4c4c4">
                        <a href="" class="columna aa liqui" onclick="return false;">
                            <span style="font-size: 20px"><%=x.getProd()%></span>
                            <div style="background-color: #004085" class="liquido"></div>
                        </a>
                    </td>
                    <td style="background-color: #c4c4c4">
                        <a href="" class="columna aa liqu" onclick="return false;">
                            <span style="font-size: 20px"><%=x.getNombre()%></span>
                            <div style="background-color: #e15361" class="liquido"></div>
                        </a>
                    </td>
                    <td style="background-color: #c4c4c4">
                        <!--<a href="" class="columna aa liquid" onclick="return false;">-->
                            <span style="font-size: 32px; font-weight: 500"><%=x.getDescr()%></span>
                           <!-- <div style="background-color: #008138" class="liquido"></div>
                        </a>-->
                    </td>
                    <td style="background-color: #c4c4c4">
                        <a class="columna aa liqui" href="serv_control?opc=19&cod=<%=x.getProd()%>">
                            <span style="font-size: 20px; font-weight: 300">MOD</span>
                            <div style="background-color: #382063" class="liquido"></div>
                        </a>
                    <td style="background-color: #c4c4c4">
                        <a class="columna aa liqui" href="serv_control?opc=3&cod=<%=x.getProd()%>&o=2">
                            <span style="font-size: 20px; font-weight: 300">MOS</span>
                            <div style="background-color: #d58512" class="liquido"></div>
                        </a>
                <%
                    }  
              %>  
            </table>
            
            <a class="liq" href="pagAddProductos.jsp">
                <div style="background-color: #127155" class="liquido"></div>
                <span>Adicionar</span>
            </a><br>
        </div>
        
    </body>
</html>
