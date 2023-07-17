<%-- 
    Document   : pagCategoria
    Created on : 07/06/2023, 08:17:00 AM
    Author     : jefri
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.*,Controlador.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/liq.css"/>
        <style>
            body{
                font-size: 40px;
            }
            
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
            
            .liq {
                position: relative;
                padding: 10px;
                text-align: center;
                display: block;
                font-weight: 700;
                text-decoration: none;
                text-transform: uppercase;
                width: 287px;
                overflow: hidden;
                border-radius: 40px;
            }

            .liq span {
                position: relative;
                color: #fff;
                font-size: 20px;
                font-family: Arial;
                letter-spacing: 8px;
                z-index: 1;
            }

            .liq .liquido {
                position: absolute;
                top: -80px;
                left: 0;
                width: 287px;
                height: 230px;
                /* background: #4973ff; */
                box-shadow: inset 0 0 50px rgba(0, 0, 0, .5s);
                transition: .5s;
            }

            .liq .liquido::after, .liq .liquido::before {
                content: '';
                width: 170%;
                height: 250%;
                position: absolute;
                top: 0;
                left: 50%;
                transform: translate(-50%, -75%);
                background: #000;
            }

            .liq .liquido::before {
                border-radius: 45%;
                background: rgba(20, 20, 20, 1);
                animation: animate 5s linear infinite;
            }

            .liq .liquido::after {
                border-radius: 40%;
                background: rgba(20, 20, 20, .5);
                animation: animate 10s linear infinite;
            }

            .liq:hover .liquido {
                top: -138px;
            }

            @keyframes animate {
                0% {
                    transform: translate(-50%, -70%) rotate(0deg);
                }

                100% {
                    transform: translate(-50%, -75%) rotate(360deg);
                }
            }
            
            th, td{
                padding: 20px;
            }
        </style>
    </head>
    <body background="imagenes/FONDOTRI.GIF">
        <%
        HttpSession ses=request.getSession();
        DecimalFormat df = new DecimalFormat("#.00");
        List<CompraProducto> lista;
        lista=(ArrayList<CompraProducto>)ses.getAttribute("canasta1");
        %>
    <center>
        <h2>Compra</h2>
        <a href="pagTiendaProductos.jsp" class="liq">
            <span>RETORNAR</span>
            <div style="background-color: #dc3545" class="liquido"></div>
        </a>
        <a href="pagConfirmaProductos.jsp" class="liq">
            <span>COMPRAR</span>
            <div style="background-color: #dc3545" class="liquido"></div>
        </a>
        <form name="fr">
        <table cellpadding="10" cellspacing="10" border="2" class="table table-hover">
            <tr><th>Artículos<th>Descripcion<th>Precio Unitario<th>Cantidad<th>Importe Total<th>
            <%
                int indice=0;
                double suma=0;
                for(CompraProducto x:lista){
                double total=x.getCantidad()*x.getPrecio();
                suma+=total;
                %>
                <tr>
                    <td><img src="imagenes/<%=x.getNombre()%>.jpg" width="100" height="100"/>
                    <td><%=x.getNombre()%>
                    <td><%=x.getPrecio()%>€
                    <td><%=x.getCantidad()%>
                    <td>S/ <%=total%>
                    <td><center><a href="tienda?opc=3&ind=<%=indice%>">
                        <img width="40" height="40" src="imagenes/borrar.png"/></a></center>
            <%
                indice++;
                }
            %>
                
        </table>
            <h4>El costo de su carrito es de S/<span><%=suma%></span></h4>
            </form>
            </center>
        
    </body>
</html>
