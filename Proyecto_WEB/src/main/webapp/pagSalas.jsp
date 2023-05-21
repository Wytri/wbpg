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
        <link rel="stylesheet" href="css/cssjsppeli.css">
    </head>
    <body>
        <section id="tabl" class="espaciado">
		<div class="contenedor">
                    <div class="fila">
                        <h1>Salas</h1>
                        <h3>Escoja la sala de su película</h3>
                        <%
                        String codPeli=request.getParameter("cod");
                        double costo=Double.parseDouble(request.getParameter("costo"));
                        HttpSession ses=request.getSession();
                        ses.setAttribute("codPeli", codPeli);
                        ses.setAttribute("costo", costo);
                        
                        String idsala=request.getParameter("tpg");
                        ses.setAttribute("codigo", idsala);
                        %>
                    </div>
                    <div class="fila">
                        <form action="pagRegistrar.jsp" method="post" name="fr">
                        <table border=1 class="caja">
                            <select class="campo" id="lstsala" name="lstsala" required onclick="cambio()">
                        <option value="S0001" selected>S0001</option>
                        <option value="S0002">S0002</option>
                        <option value="S0003">S0003</option>
                        </select>
                        </table><!-- fin tabla-->
                        <input type="submit">
                        </form>
                    </div> <!-- fila -->
                    
		</div> <!-- contenedor -->
	</section> <!-- tabla -->
    </body>
</html>
