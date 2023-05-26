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
        <h1>Ejercicio 3 - Actualizar Peliculas</h1>
        <%
            ArrayList<Pelicula> lista=(ArrayList)request.getAttribute("dato");
            //Pelicula x=lista.get(0);
            HttpSession ses=request.getSession();
            String idpeli=(String)ses.getAttribute("codPeli");
            ses.setAttribute("idPelic", idpeli);
            String categoria=(String)ses.getAttribute("codCate");
            Control obj = new Control();
            
            String nombre=""; 
            int anio=0; 
            double dura=0;
            double costo=0;
            String clasi=""; 
            String sinopsis="";
        %>
        
        <h2 class="alert-default-info">Actualizar Pelicula: <%=idpeli%></h2>
        <a href="serv_control?opc=2&cod=<%=categoria%>">Retornar</a><br>
        
        <form action="serv_control" method="post" name="fr">
            <table border=1 class="table table-hover">
                <%
                    for(Pelicula x:lista){
                    
                    nombre=x.getNom();
                    anio=x.getAnnio();
                    dura=x.getDuracion();
                    costo=x.getCosto();
                    clasi=x.getClasificacio();
                    sinopsis=x.getSinop();
                    }
                %>
                <input type="hidden" name="opc" value="7">
                <!-- type="number" -->
                <input type="text" value="<%=nombre%>" id="txtnom" name="txtnom" class="campo" required><br>
                <input type="tel" value="<%=anio%>" id="txtanio" name="txtanio" class="campo" required><br>
                <input type="tel" value="<%=dura%>" id="txtdura" name="txtdura" class="campo" required><br>
                <input type="tel" value="<%=costo%>"  id="txtcosto" name="txtcosto" class="campo" required><br>
                <select id="listCla" name="listCla" required>
                    <option value="<%=clasi%>" selected hidden><%=clasi%></option>
                    <option value="G">G</option>
                    <option value="PG">PG</option>
                    <option value="18A">18A</option>
                </select><br>
                
                <textarea type="text" id="txtsin" name="txtsin" class="campo" required><%=sinopsis%></textarea><br>             
                   <%
                       
                %>
        <p>
                <input class="boton-enviar" type="submit" value="Enviar"> <!-- submit es para enviar los datos -->
        </p>
        </table>
        </form>
    </body>
</html>
