<%-- 
    Document   : lista_peliculas
    Created on : 20/04/2023, 07:53:53 PM
    Author     : henry
--%>

<%@page import="Controlador.Control"%>
<%@page import="modelo.PeliCate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <section id="tabla" class="espaciado">
		<div class="contenedor">
			<div class="fila">
				<h2>Películas</h2>
				</div>
			<div class="fila">
                            <table class="tabla">
                                <thead>
                                        <th>Película</th>
                                        <th>Categoria</th>
                                        <th>Nombre</th>
                                        <th>Duración</th>
                                        <th>Costo</th>
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
                                        </tr>
                                    <%
                                        }
                                    %>
                                </tbody><!-- fin cuerpoT-->
                            </table><!-- fin tabla-->
			</div> <!-- fila -->
		</div> <!-- contenedor -->
	</section> <!-- tabla -->
    </body>
</html>
