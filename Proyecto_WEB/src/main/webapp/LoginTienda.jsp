<%-- 
    Document   : pagCategoria
    Created on : 07/06/2023, 08:17:00 AM
    Author     : jefri
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.*,Controlador.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="" >
        
        <center>
        <h1>REGISTRE SU PEDIDO</h1>
        <%
        HttpSession ses=request.getSession();
        String respuesta="";
        int nro=0;
        
        if(ses.getAttribute("resp")!=null){
            nro=(Integer)ses.getAttribute("resp");
            if(nro==1){
            respuesta="Usuario no existe";
            }
            else {
            respuesta="Clave incorrecta";
            }
        }
        %>
    
        <a href="pagCompraCombos.jsp">Retornar</a><br>
        <a href="pagRegistrar.jsp">Registrar Cliente</a>
        <form action="serlogin" method="post" >
            <table cellpadding="10" cellspacing="10" border="1">
                <input type="hidden" name="opc" value="4">
                <tr><td rowspan="5"><img src="imagenes/login.png" height="100"/>
                <tr><td>Número de tarjeta <td><input name="tarjeta">
                <tr><td>Clave <td><input name="psw" type="password" >                    
            </table>
            <input value="INICIAR SESIÓN" type="submit"><%=respuesta%>
        </form>
        
            </center>
    </body>
</html>
