<%-- 
    Document   : pagFuncPeli
    Created on : 26 jun. 2023, 18:10:24
    Author     : sebas
--%>

<%@page import="java.util.*"%>
<%@page import="modelo.*"%>
<%@page import="Controlador.Control"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <%
            HttpSession ses=request.getSession();
            ArrayList<Pelicula> listUnPe=(ArrayList)ses.getAttribute("ListUnaPeli");
            ArrayList<Funciones> lisfunpeli = (ArrayList)request.getAttribute("datoF");
            //int CostP = Integer.parseInt(request.getParameter("costo"));
            String CodP="";
            for(Pelicula p:listUnPe){
            %>
                <section id="tabl" class="espaciado">
                        <div class="contenedor">
                            
                            <div class="fila">
                                <h2>Funciones para <%=p.getNom()%></h2>
                            </div>
                            
                            <a href="pagPeliculasAdd.jsp">Retornar</a>
            <%
                CodP = p.getIdpeli();
                        }
            %>
                            <table class="table table-hover">
                                <thead class="bg-dark">
                                    <th>Función</th>
                                    <th>Fecha y hora</th>
                                    <th>Sala</th>
                                    <th>Boleta</th>

                                </thead>
                                <tbody>
                                    <%
                                        for (Funciones x: lisfunpeli) {
                                    %>
                                    <tr>
                                        <td><%=x.funcion%></td>
                                        <td><%=x.getInicio()%></td>
                                        <td><%=x.getSala()%></td>                                        

                                        <td><a href="serv_control?opc=22&codF=<%=x.funcion%>">Adicionar</a></td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody><!-- fin cuerpoT-->
                            </table><!-- fin tabla-->
                        </div> <!-- contenedor -->
                </section>
        </center>
    </body>
</html>
