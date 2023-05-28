<%-- 
    Document   : pagPeliculas
    Created on : 20/05/2023, 07:32:06 PM
    Author     : henry
--%>

<%@page import="modelo.Categoria"%>
<%@page import="Controlador.Control"%>
<%@page import="modelo.Pelicula"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ejercicio 2 - Añadir Peliculas</h1>
        <%
            HttpSession ses=request.getSession();
            String categoria=(String)ses.getAttribute("codCate");
            Control obj = new Control();
            /*
            nombre,año,duracion,costo,clasificacion(G,PG,18A),sinopsis
            
            HttpSession ses=request.getSession();
            ArrayList<Pelicula> lista=(ArrayList)request.getAttribute("dato");
            String cate = request.getAttribute("codigo").toString();
            ses.setAttribute("codSala", cate);
            out.print("<h3>Lista de Peliculas de la Categoria: "+cate+"</h3>");
*/
        %>
        
        <h2 class="alert-default-info">Lista de Peliculas</h2>
        <a href="serv_control?opc=2&cod=<%=categoria%>">Retornar</a><br>
        
        <form action="serv_control" method="post" name="fr">
            <table border=1 class="table table-hover">
                <input type="hidden" name="opc" value="9">
                <!-- type="number" -->
                
                <input type="text" placeholder="Nombre" id="txtnom" name="txtnom" class="campo" required><br>
                <input type="tel" placeholder="Año" id="txtanio" name="txtanio" class="campo" required><br>
                <input type="tel" placeholder="Duración" id="txtdura" name="txtdura" class="campo" required><br>
                <input type="tel" placeholder="Costo" id="txtcosto" name="txtcosto" class="campo" required><br>
                <select id="listCla" name="listCla" required>
                    <option value="0" selected hidden>Escoger Clasificación</option>
                    <option value="G">G</option>
                    <option value="PG">PG</option>
                    <option value="18A">18A</option>
                </select><br>
                
                <textarea type="text" placeholder="Sinopsis" id="txtsin" name="txtsin" class="campo" required></textarea><br>             
                Imagen: <input type="file" accept="image/jpg" id="img" name="img" class="campo"><br>        
                

        <p>
                <input class="boton-enviar" type="submit" value="Enviar"> <!-- submit es para enviar los datos -->
        </p>
        </table>
        </form>
    </body>
</html>
