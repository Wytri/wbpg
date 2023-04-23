<%-- 
    Document   : modificar
    Created on : 22/04/2023, 08:36:37 PM
    Author     : henry
--%>

<%@page import="modelo.Cliente"%>
<%@page import="Controlador.Control"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <a href="tablasbbdd.jsp">REGRESAR</a>
            <form method="post">
                    <input type="hidden" name="opc1" value="3">
                    DNI: <input type="text" name="dni">
                    <!--NOMBRE: <input type="text" name="nom">
                    APELLIDO: <input type="text" name="ape">
                    EDAD: <input type="number" name="eda">-->
                    <input type="submit" value="comprobar">        
                    <% 
                        int d=0;
                        if (request.getParameter("dni")!=null) { 
                        d=Integer.parseInt(request.getParameter("dni"));
                        %>
                        <h1>DNI: <%=d%></h1>
                        <%
                        }
                    %>
            </form>
        </center>    
        
        <center>
            <form method="post">
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
                                    if (x.getDni()==d) {
                        %>
                            <tr>
                                <td style="background-color: #d24d76"><%=x.getDni()%></td>
                                <td><%=x.getNombre()%> </td>
                                <td><%=x.getApellido()%> </td>
                                <td><%=x.getEdad()%> </td>
                            </tr>

                        <%
                                return;
                                    }
                                }
                        %>
                    </tbody><!-- fin cuerpoT-->
                </table><!-- fin tabla-->
            </form> 
        </center>
    </body>
</html>
