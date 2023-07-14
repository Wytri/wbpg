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
    <body background="FOTOS/FONDOTRI.GIF">
        
        
        
        <%
        Combo art=(Combo)request.getAttribute("dato");
        int x=20;
        %>
    <center>
        <h1>Detalle</h1>
        <a href="pagTiendaCombos.jsp">Retornar</a>
        <form name="fr">
        <table cellpadding="10" cellspacing="10" class="table table-hover">
            
            <tr><td rowspan="5"><img src="imagenes/<%=art.getNom()%>.jpg" height="200"/>
            <tr><td>Descripcion <td><%=art.getDescr()%>
            <tr><td>Precio <td>S/ <%=art.getPrecio()%>
            <tr><td>Stock <td><%=x%>
            <tr><td>Cantidad a comprar <td>
                    <select name="cantidad" required>
                        <%
                        for(int i=1; i<=x;i++){
                        %>
                            <option value="<%=i%>"><%=i%></option>
                            <%
                                }
                            %>
                            </select>
                <input type="hidden" name="opc" value="9">
                <input type="hidden" name="coda" value="<%=art.getComb()%>">
            <tr><td><center><a href="#" onclick="envia()">
                        <img width="100" height="100" src="imagenes/COMP.png"/></a></center>
        </table>
            </form>
            </center>
    <script>
        function envia(){
            stk=<%=x%>;
            can=Number(fr.cantidad.value);
            if(can>stk){
        alert('stock no disponible');
        return;
        }
        fr.action="tienda";
        fr.submit();
            }
    </script>
    </body>
</html>
