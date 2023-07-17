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
        <link rel="stylesheet" href="css/liq.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            span{
                font-size: 40px;
                color: #dc3545;
            }
            
            .campo{
                font-size: 40px;
            }
            
            /*Efectos para todas las clases fila*/
            .fila {
                    display: flex;
                    flex-direction: row;
                    align-items: center;
                    justify-content: space-around;
            }

            /*Efectos para todas las clases columna*/
            .columna {
                    flex-basis: 0;
                    flex-grow: 1;
                    margin-left: 5px;
                    margin-right: 5px;
                    padding-left: 10px;
                    padding-right: 10px;
            }
        </style>
    </head>
    <body>
        <%
            HttpSession ses=request.getSession();
            String categoria=(String)ses.getAttribute("codCate");
    /*        Control obj = new Control();
            
            nombre,año,duracion,costo,clasificacion(G,PG,18A),sinopsis
            
            HttpSession ses=request.getSession();
            ArrayList<Pelicula> lista=(ArrayList)request.getAttribute("dato");
            String cate = request.getAttribute("codigo").toString();
            ses.setAttribute("codSala", cate);
            out.print("<h3>Lista de Peliculas de la Categoria: "+cate+"</h3>");
*/
        %>
        
        <a class="liq" href="serv_control?opc=2&cod=<%=categoria%>">
            <div style="background-color: #dc3545" class="liquido"></div>
            <span>Retornar</span>
        </a><br>
        
        <h2 class="alert-danger">Añadir Peliculas</h2>
        
        <form action="serv_control" method="post" name="fr">
            <table border=1 class="table table-hover">
                <input type="hidden" name="opc" value="9">
                <!-- type="number" -->
                <center>
                    <div class="fila">
                        <div class="columna">
                            <span>NOMBRE: </span><input type="text" id="txtnom" name="txtnom" class="campo" required><br>
                            <span>AÑO: </span><input type="tel" id="txtanio" name="txtanio" class="campo" required><br>
                            <span>DURACIÓN: </span><input type="tel" id="txtdura" name="txtdura" class="campo" required><br>
                            <span>COSTO: </span><input type="tel" id="txtcosto" name="txtcosto" class="campo" required><br>
                            
                            <select style="width: 100%" class="campo alert-danger" id="listCla" name="listCla" required>
                                <option value="0" selected hidden>Escoger Clasificación</option>
                                <option value="G">G</option>
                                <option value="PG">PG</option>
                                <option value="18A">18A</option>
                            </select><br>
                        </div>
                        
                        <div class="columna">
                            <img src="imagenes/logo.png" alt="alt"/>
                        </div>
                        
                        <div class="columna">
                            <p>
                                <input class="boton-enviar alert-danger campo" type="submit" value="Enviar"> <!-- submit es para enviar los datos -->
                            </p>                
                        </div>
                    </div>
            </center>
        </table>
        </form>
    </body>
</html>
