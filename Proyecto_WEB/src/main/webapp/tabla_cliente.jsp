<%-- 
    Document   : tabla_cliente
    Created on : 21/04/2023, 03:26:47 AM
    Author     : jefri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.Control"%>
<%@page import="modelo.Cliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <section id="tabla_cliente" class="espaciado">
            <div class="contenedor">
                <div class="fila"  style="justify-content: space-around">
                    <h1>Clientes</h1>
                </div>
                <div class="fila" style="justify-content: space-around">
                    <form action="servlet_control" method="POST">
                        <!-- comment <input type="hidden" name=opc value="2">-->
                        <table class="tabla"  border="1" style="margin-top: 100px">
                            <thead>
                                <th style="background-color: #a02d76">DNI</th>
                                <th style="background-color: #a02d76">NOMBRE</th>
                                <th style="background-color: #a02d76">APELLIDO</th>
                                <th style="background-color: #a02d76">EDAD</th>
                            </thead>
                            <tbody>
                                <%
                                    Control obj = new Control();
                                    for (Cliente x: obj.liscli()) {
                                %>
                                    <tr>
                                        <td style="background-color: #d24d76"><%=x.getDni()%></td>
                                        <td><%=x.getNombre()%> </td>
                                        <td><%=x.getApellido()%> </td>
                                        <td><%=x.getEdad()%> </td>
                                    </tr>
                                <%
                                    }
                                    if (request.getAttribute("dato1")!=null) {
                                        String cad=(String)request.getAttribute("dato1");
                                %>

                                <div>
                                    <h2><%=cad%></h2>
                                </div>
                                <%
                                    }

                                %>
                            </tbody><!-- fin cuerpoT-->
                        </table><!-- fin tabla-->
                    </form>
                </div> <!-- fila -->
            </div> <!-- contenedor -->
        </section> <!-- tabla -->
    </body>
</html>
