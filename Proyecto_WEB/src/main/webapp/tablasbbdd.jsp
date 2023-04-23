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
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/estilos.css"/>
        <!-- libreria jquwey  -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    </head>
    <body>
        <center>
            <h1>BASE DE DATOS</h1>
            
            <section id="tabl" class="espaciado">
		<div class="contenedor">
                    <div class="fila">
                        <h2>CATEGORIAS</h2>
                    </div>
                    <div class="fila">
                        <table class="tabla">
                            <thead>
                                <th>ID</th>
                                <th>NOMBRE</th>
                            </thead>
                            <tbody>
                                <%
                                    Control obj = new Control();
                                    for (Categoria x: obj.liscat()) {
                                %>
                                <tr>
                                    <td><%=x.getId()%></td>
                                    <td><%=x.getName()%></td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
		</div>
            </section>
            
            <div class="pelic"></div>
            
            <div class="cli"></div>
            
            <section id="tabl" class="espaciado">
		<div class="contenedor">
                    <div class="fila">
                        <h2>Asientos-Salas</h2>
                    </div>
                    <div class="fila">
                        <table class="tabla">
                            <thead>
                                <th>ASIENTO</th>
                                <th>SALA</th>
                            </thead>
                            <tbody>
                                <%
                                    for (Asiento x: obj.lisasi()) {
                                %>
                                <tr>
                                    <td><%=x.getAsiento()%></td>
                                    <td><%=x.getSala()%></td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
		</div>
            </section>
            
            <section id="tabl" class="espaciado">
		<div class="contenedor">
                    <div class="fila">
                        <h2>Boleto</h2>
                    </div>
                    <div class="fila">
                        <table class="tabla">
                            <thead>
                                <th>CODIGO</th>
                                <th>DNI</th>
                                <th>ID ASIENTO</th>
                                <th>ID SALA</th>
                                <th>ID PELICULA</th>
                                <th>FECHA</th>
                                <th>PAGO</th>
                            </thead>
                            <tbody>
                                <%
                                    for (Boleto x: obj.lisbole()) {
                                %>
                                <tr>
                                    <td><%=x.getCod()%></td>
                                    <td><%=x.getDni()%></td>
                                    <td><%=x.getIdasiento()%></td>
                                    <td><%=x.getIdsala()%></td>
                                    <td><%=x.getIdpeli()%></td>
                                    <td><%=x.getFecha()%></td>
                                    <td><%=x.getPago()%></td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
		</div>
            </section>
                            
            <section id="tabl" class="espaciado">
		<div class="contenedor">
                    <div class="fila">
                        <h2>TRABAJADORES</h2>
                    </div>
                    <div class="fila">
                        <table class="tabla">
                            <thead>
                                <th>ID</th>
                                <th>NOMBRE</th>
                                <th>APELLIDO</th>
                                <th>FECHA</th>
                            </thead>
                            <tbody>
                                <%
                                    for (Trabajadores x: obj.listra()) {
                                %>
                                <tr>
                                    <td><%=x.getId()%></td>
                                    <td><%=x.getNom()%></td>
                                    <td><%=x.getApe()%></td>
                                    <td><%=x.getFh()%></td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
		</div>
            </section>
                            
            <section id="tabl" class="espaciado">
		<div class="contenedor">
                    <div class="fila">
                        <h2>USUARIOS</h2>
                    </div>
                    <div class="fila">
                        <table class="tabla">
                            <thead>
                            <th>ID</th>
                                <th>USUARIO</th>
                                <th>PSS</th>
                            </thead>
                            <tbody>
                                <%
                                    for (Usuarios x: obj.lisusu()) {
                                %>
                                <tr>
                                    <td><%=x.getId()%></td>
                                    <td><%=x.getUser()%></td>
                                    <td><input type="password" value="<%=x.getPssw()%>"></td>
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
    
        <script>
            $(document).ready(function () {
            $('.pelic').load('./lista_peliculas.jsp');
            $('.cli').load('./tabla_cliente.jsp');
            });
        </script>
    </body>
</html>
