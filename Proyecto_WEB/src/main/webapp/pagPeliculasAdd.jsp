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
    </head>
    <body>
        <center>
        <section id="tabl" class="espaciado">
		<div class="contenedor">
                    <div class="fila">
                        <h2>Películas</h2>
                    </div>
                    <div class="fila">
                        <a href="crud.jsp">Retornar</a>
                        <table class="table table-hover">
                            <thead class="bg-dark">
                                <th>Película</th>
                                <th>Categoria</th>
                                <th>Nombre</th>
                                <th>Duración</th>
                                <th>Costo</th>
                                <th>Boletos</th>
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
                                    <td><a href="pagSalas.jsp?cod=<%=x.getCodp()%>&costo=<%=x.getCost()%>">Adicionar</a></td>
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
