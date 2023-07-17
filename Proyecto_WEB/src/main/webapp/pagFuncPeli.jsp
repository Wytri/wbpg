<%-- 
    Document   : pagFuncPeli
    Created on : 26 jun. 2023, 18:10:24
    Author     : sebas
--%>

<%@page import="java.util.*"%>
<%@page import="modelo.*"%>
<%@page import="Controlador.Control"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        <style>
            body{
                font-size: 40px;
            }
            
            .li {
                position: relative;
                padding: 15px;
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
            
            .liq {
                position: relative;
                text-align: center;
                display: block;
                font-weight: 700;
                text-decoration: none;
                text-transform: uppercase;
                width: 287px;
                overflow: hidden;
                border-radius: 40px;
            }

            .liq span {
                position: relative;
                color: #fff;
                font-size: 20px;
                font-family: Arial;
                letter-spacing: 8px;
                z-index: 1;
            }

            .liq .liquido {
                position: absolute;
                top: -80px;
                left: 0;
                width: 287px;
                height: 230px;
                /* background: #4973ff; */
                box-shadow: inset 0 0 50px rgba(0, 0, 0, .5s);
                transition: .5s;
            }

            .liq .liquido::after, .liq .liquido::before {
                content: '';
                width: 170%;
                height: 250%;
                position: absolute;
                top: 0;
                left: 50%;
                transform: translate(-50%, -75%);
                background: #000;
            }

            .liq .liquido::before {
                border-radius: 45%;
                background: rgba(20, 20, 20, 1);
                animation: animate 5s linear infinite;
            }

            .liq .liquido::after {
                border-radius: 40%;
                background: rgba(20, 20, 20, .5);
                animation: animate 10s linear infinite;
            }

            .liq:hover .liquido {
                top: -138px;
            }
        </style>
    </head>
    <body>
        <center>
            <%
            HttpSession ses=request.getSession();
            ArrayList<Pelicula> listUnPe=(ArrayList)ses.getAttribute("ListUnaPeli");
            ArrayList<Funciones> lisfunpeli = (ArrayList)request.getAttribute("datoF");
            //int CostP = Integer.parseInt(request.getParameter("costo"));
            String CodP="";
            for(Pelicula p:listUnPe){
            %>
                <section id="tabl" class="espaciado">
                        <div class="contenedor">
                            
                            <div class="fila">
                                <h2 style="color: white; background-color: #007bff; padding: 10px;">Funciones para <%=p.getNom()%></h2>
                            </div>
                            <a class="li" href="index.html">
                                <div style="background-color: #007bff;" class="liquido"></div>
                                <span style="font-size: 20px">Retornar</span>
                            </a><br>
            <%
                CodP = p.getIdpeli();
                        }
            %>
                            <table class="table table-hover">
                                <thead class="bg-cyan">
                                    <th>Función</th>
                                    <th>Fecha y hora</th>
                                    <th>Sala</th>
                                    <th>Boleta</th>

                                </thead>
                                <tbody>
                                    <%
                                        for (Funciones x: lisfunpeli) {
                                    %>
                                    <tr>
                                        <td><%=x.funcion%></td>
                                        <td><%=x.getInicio()%></td>
                                        <td><%=x.getSala()%></td>                                        

                                        <td><a class="liq" href="serv_control?opc=22&codF=<%=x.funcion%>">
                                                <div style="background-color: #007bff;" class="liquido"></div>
                                            <span style="font-size: 20px">Adicionar</span>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody><!-- fin cuerpoT-->
                            </table><!-- fin tabla-->
                        </div> <!-- contenedor -->
                </section>
        </center>
    </body>
</html>
