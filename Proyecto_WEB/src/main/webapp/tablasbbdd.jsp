<%-- 
    Document   : tablasbbdd
    Created on : 22/04/2023, 06:59:14 PM
    Author     : henry
--%>

<%@page import="modelo.*"%>
<%@page import="Controlador.Control"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/liq.css"/>
        <title>JSP Page</title>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <!-- libreria jquwey  -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <style>
            .li {
                position: relative;
                padding: 5px;
                text-align: center;
                display: block;
                font-weight: 700;
                text-decoration: none;
                text-transform: uppercase;
                width: 187px;
                overflow: hidden;
                border-radius: 40px;
            }

            .li span {
                position: relative;
                color: #fff;
                font-size: 20px;
                font-family: Arial;
                letter-spacing: 8px;
                z-index: 1;
            }

            .li .liquido {
                position: absolute;
                top: -120px;
                left: 0;
                width: 287px;
                height: 230px;
                /* background: #4973ff; */
                box-shadow: inset 0 0 50px rgba(0, 0, 0, .5s);
                transition: .5s;
            }

            .li .liquido::after, .li .liquido::before {
                content: '';
                width: 170%;
                height: 250%;
                position: absolute;
                top: 0;
                left: 50%;
                transform: translate(-50%, -75%);
                background: #000;
            }

            .li .liquido::before {
                border-radius: 45%;
                background: rgba(20, 20, 20, 1);
                animation: animate 5s linear infinite;
            }

            .li .liquido::after {
                border-radius: 40%;
                background: rgba(20, 20, 20, .5);
                animation: animate 10s linear infinite;
            }

            .li:hover .liquido {
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
            
            th, td{
                font-size: 30px;
                padding: 10px;
            }
        </style>
    </head>
    <body>
        <center>
            <div class="fila">
                <div class="columna">
                    <a href="crud.jsp" class="liq">
                        <span>Retornar</span>
                        <div style="background-color: #6610f2" class="liquido"></div>
                    </a>  
                </div>
                 
        <%
            Control obj = new Control();
        %>
                <div class="columna">
                    <a href="pagAgregarTrabajador.jsp" class="liq">
                        <span>Agregar</span>
                        <div style="background-color: #DC3545" class="liquido"></div>
                    </a>        
                </div>
            </div>      
            
            <h2 class="alert-danger">TRABAJADORES</h2>
            <section id="tabl" class="espaciado">
		<div class="contenedor">
                    <div class="fila">
                        <table class="tabla"  class="table table-hover">
                            <thead class="bg-danger">
                                <th>ID </th>
                                <th>NOMBRE </th>
                                <th>APELLIDO </th>
                                <th>FECHA </th>
                                <th>EDAD </th>
                            </thead>
                            <tbody>
                                <%
                                    for (Trabajadores x: obj.listra()) {
                                %>
                                <tr class="table table-bordered">
                                    <td><%=x.getId()%> </td>
                                    <td><%=x.getNom()%> </td>
                                    <td><%=x.getApe()%> </td>
                                    <td><%=x.getFh()%> </td>
                                    <td style="text-align: center;"><%=x.edad()%> </td>
                                    <td>
                                        <a href="pagEditarT.jsp?cod=<%=x.getId()%>" class="li">
                                            <span>Editar</span>
                                            <div style="background-color: #7b0861" class="liquido"></div>
                                        </a>    
                                    <td>
                                        <a href="pagConfirmacion.jsp?cod=<%=x.getId()%>" class="li">
                                            <span>Eliminar</span>
                                            <div style="background-color: #008138" class="liquido"></div>
                                        </a>  
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
		</div>
            </section>
                            
            <section id="tabl" class="espaciado" style="margin-top: 100px">
		<div class="contenedor">
                        <h2 class="alert-danger">USUARIOS</h2>
                    <div class="fila">
                        <table class="tabla"  class="table table-hover">
                            <thead class="bg-danger">
                            <th>ID</th>
                                <th>USUARIO</th>
                                <th>PSS</th>
                            </thead>
                            <tbody>
                                <%
                                    for (Usuarios x: obj.lisusu()) {
                                %>
                                <tr class="table table-active">
                                    <td><%=x.getId()%></td>
                                    <td><%=x.getUser()%></td>
                                    <td><input type="password" value="<%=x.getPssw()%>" readonly></td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
		</div>
            </section>
        </center>
                      
        <!--<script>
            $(document).ready(function () {
            $('.pelic').load('./lista_peliculas.jsp');
            $('.cli').load('./tabla_cliente.jsp');
            });
        </script>-->
    </body>
</html>
