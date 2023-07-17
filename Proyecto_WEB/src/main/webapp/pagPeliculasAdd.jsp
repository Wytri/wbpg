<%-- 
    Document   : lista_peliculas
    Created on : 20/04/2023, 07:53:53 PM
    Author     : henry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.Control"%>
<%@page import="modelo.PeliCate"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/liq.css"/>
        <style>
            
            .li {
                position: relative;
                padding: 5px;
                text-align: center;
                display: block;
                font-weight: 700;
                text-decoration: none;
                text-transform: uppercase;
                width: 287px;
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
                top: -80px;
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
            
            body{
                font-size: 30px;
            }
            
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
            
            .liqu {
                position: relative;
                padding: 20px;
                text-align: center;
                display: block;
                font-weight: 700;
                text-decoration: none;
                text-transform: uppercase;
                width: 287px;
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
                width: 287px;
                height: 230px;
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
        </style>
    </head>
    <body>
        <center>
        <section id="tabl" class="espaciado">
		<div class="contenedor">
                        <h2 class="alert-danger">Películas</h2>
                        <a class="liqu" href="crud.jsp">
                            <div style="background-color: #dc3545;" class="liquido"></div>
                            <span>Retornar</span>
                        </a><br>
                            
                    <div class="fila">
                        <table class="table table-hover">
                            <thead class="bg-danger">
                                <th>Película</th>
                                <th>Categoria</th>
                                <th>Nombre</th>
                                <th>Duración</th>
                                <th>Costo</th>
                                <th>Funciones</th>
                            </thead>
                            <tbody>
                                <%
                                    Control obj = new Control();
                                    for (PeliCate x: obj.lispelicat()) {
                                %>
                                <tr>
                                    <td><%=x.getCodp()%></td>
                                    <td><%=x.getNomec()%></td>
                                    <td><%=x.getNomp()%></td>
                                    <td><%=x.getDur()%></td>
                                    <td><%=x.getCost()%></td>

                                    <td>
                                        <a class="li" href="serv_control?opc=21&codP=<%=x.getCodp()%>">
                                            <div style="background-color: #dc3545" class="liquido"></div>
                                            <span>Entrar</span>
                                        </a></td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody><!-- fin cuerpoT-->
                        </table><!-- fin tabla-->
                    </div> <!-- fila -->
		</div> <!-- contenedor -->
	</section> <!-- tabla -->
        </center>
    </body>
</html>
