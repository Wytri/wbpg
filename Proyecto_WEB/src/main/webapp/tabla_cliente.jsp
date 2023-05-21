<%-- 
    Document   : tabla_cliente
    Created on : 21/04/2023, 03:26:47 AM
    Author     : jefri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.Control"%>
<%@page import="modelo.Cliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css"/>
        <title>JSP Page</title>
    </head>
    <body>
    
        <center><a href="tablasbbdd.jsp" style="color: #000">IR A LA BASE DE DATOS</a></center>
        <section id="tabla_cliente" class="espaciado">
            <div class="contenedor">    
                <div class="fila"  style="justify-content: space-around">
                    <h1>Clientes</h1>
                </div>       
                
                <div class="fila">
                    <form action="serv_control" method="post">
                        <input type="hidden" name=opc value="2">
                        <table class="tabla" border="1">
                        <tr><td>INGRESE DNI: <td><input type="number" name="dni">
                        <tr><td>NOMBRE: <td><input type="text" name="nom">
                        <tr><td>APELLIDO: <td><input type="text" name="ape"> 
                        <tr><td>EDAD: <td><input type="number" name="eda">
                        <!--<input type="submit" value="comprobar">-->
                        <tr><td><input type="submit" value="modificar">
                        </table>
                        
                        <table class="tabla"  border="1">
                            <thead>
                                <th style="background-color: #a02d76">DNI</th>
                                <th style="background-color: #a02d76">NOMBRE</th>
                                <th style="background-color: #a02d76">APELLIDO</th>
                                <th style="background-color: #a02d76">EDAD</th>
                            </thead>
                            <tbody>
                                <%
                                    Control obj = new Control();
                                    for (Cliente x: obj.liscli()) {
                                %>
                                    <tr>
                                        <td style="background-color: #d24d76"><%=x.getDni()%></td>
                                        <td><%=x.getNombre()%> </td>
                                        <td><%=x.getApellido()%> </td>
                                    </tr>

                                <%
                                    }
                                %>
                            </tbody><!-- fin cuerpoT-->
                        </table><!-- fin tabla-->
                    </form> 
                </div> <!-- fila -->      
                
                    
                     
            </div> <!-- contenedor -->
        </section> <!-- tabla -->
    </body>
</html>
