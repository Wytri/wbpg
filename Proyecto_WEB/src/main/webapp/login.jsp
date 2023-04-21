<%-- 
    Document   : login
    Created on : 21/04/2023, 03:24:27 AM
    Author     : jefri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <form action="servlet_control" method="post">
                <table border="1" style="margin-top: 100px">
                    <input type="hidden" name="opc" value="1">
                    <tr style="background-color: #7fff00"><td>Nombre:  <td><input type="text" name="nom" required>
                    <tr style="background-color: #7fff00"><td>Contraseña:  <td><input type="text" name="pss" required>
                    <tr style="background-color: #7fff00"><td><td><input type="submit">
                </table>
            </form>


            <%
                if (request.getAttribute("dato1")!=null) {
                    String cad=(String)request.getAttribute("dato1");
            %>

            <div class="espaciado">
                <h2>Tu edad es: <%=cad%></h2>
            </div>
            <%
                }
            %>
        </center>
    </body>
</html>
