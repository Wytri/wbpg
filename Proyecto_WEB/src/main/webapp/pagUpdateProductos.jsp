<%-- 
    Document   : pagPeliculas
    Created on : 20/05/2023, 07:32:06 PM
    Author     : henry
--%>

<%@page import="modelo.Categoria"%>
<%@page import="Controlador.Control"%>
<%@page import="modelo.*"%>
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
            ArrayList<Productos> lista=(ArrayList)request.getAttribute("dato");
            HttpSession ses=request.getSession();
            int idPro=(int)ses.getAttribute("codPro");
            ses.setAttribute("idPro", idPro);

            

            String nombre=""; 
            double precio=0;
            String desc="";
        %>
        
        <h2 class="alert-default-info">Actualizar Pelicula: <%=idPro%></h2>
        <a href="pagComida.jsp">Retornar</a><br>
        <form action="serv_control" method="post" name="fr">
            <table border=1 class="table table-hover">
                <%
                    for(Productos x:lista){
                    
                    idPro=x.getProd();
                    nombre=x.getNombre();
                    precio=x.getPrecio();
                    desc=x.getDescr();
                    }
                %>
                
                <input type="hidden" name="opc" value="20">
                <input type="tel" value="<%=nombre%>" id="txtnom" name="txtnom" class="campo" required><br>
                <input type="tel" value="<%=precio%>"  id="txtcosto" name="txtcosto" class="campo" required><br>
                
                <textarea type="text" id="txtdes" name="txtdes" class="campo" required><%=desc%></textarea><br>             
                   <%
                       
                %>
        <p>
                <input class="boton-enviar" type="submit" value="Enviar"> <!-- submit es para enviar los datos -->
                
        </p>
        </table>
        </form>
    </body>
</html>
