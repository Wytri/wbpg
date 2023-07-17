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
            ArrayList<Combo> lista=(ArrayList)request.getAttribute("dato");
            HttpSession ses=request.getSession();
            int idcom=0;
            if(ses.getAttribute("codCombos")!=null)
            idcom=(int)ses.getAttribute("codCombos");
            ses.setAttribute("idCom", idcom);

        %>
        
        <h2 class="alert-danger">Añadir Combo</h2>
        <a class="liq" href="pagComida.jsp">
            <div style="background-color: #dc3545" class="liquido"></div>
            <span>Retornar</span>
        </a><br>
        <form action="serv_control" method="post" name="fr">
            <table border=1 class="table table-hover">
                <%
                    
                %>
                
                <input type="hidden" name="opc" value="14">
                <div class="fila">
                    <div class="columna">
                    <span>NOMBRE: </span><br><input type="tel" placeholder="Nombre" id="txtnom" name="txtnom" class="campo" required><br>
                    <span>COSTO: </span><br><input type="tel" placeholder="Costo"  id="txtcosto" name="txtcosto" class="campo" required><br>
                
                    <span>DESCRIPCIÓN: </span><textarea style="width: 100%" placeholder="Descripción" type="text" id="txtdes" name="txtdes" class="campo" required></textarea><br>             
                   <%
                       
                %>
                <p>
                    <input class="alert-danger campo" type="submit" value="Enviar"> <!-- submit es para enviar los datos -->
                
                </p>
                </div>
                    
                    <div class="columna">
                        <img src="imagenes/logo.png" alt="alt"/>
                    </div>
                </div>
        </table>
        </form>
    </body>
</html>
