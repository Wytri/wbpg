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
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <!-- libreria jquwey  -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    </head>
    <body>
        <center>
            <h1>TRABAJADORES</h1>
            <a href="crud.jsp">Retornar</a><br>
        <%
            Control obj = new Control();
        %>
            
            <!--<div class="pelic"></div>
            
            <div class="cli"></div>-->
            
            <a href="pagAgregarTrabajador.jsp">Agregar</a>
                            
            <section id="tabl" class="espaciado">
		<div class="contenedor">
                    <div class="fila">
                        <h2 class="alert-default-info">TRABAJADORES</h2>
                    </div>
                    <div class="fila">
                        <table class="tabla"  class="table table-hover">
                            <thead class="bg-dark">
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
                                <tr   class="table table-bordered">
                                    <td><%=x.getId()%> </td>
                                    <td><%=x.getNom()%> </td>
                                    <td><%=x.getApe()%> </td>
                                    <td><%=x.getFh()%> </td>
                                    <td style="text-align: center;"><%=x.edad()%> </td>
                                    <td><a href="pagEditarT.jsp?cod=<%=x.getId()%>">Editar</a></td>
                                    <td><a href="pagConfirmacion.jsp?cod=<%=x.getId()%>">Eliminar</a></td>
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
                    <div class="fila">
                        <h2 class="alert-default-info">USUARIOS</h2>
                    </div>
                    <div class="fila">
                        <table class="tabla"  class="table table-hover">
                            <thead class="bg-dark">
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
