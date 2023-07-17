<%-- 
    Document   : pagConfirma
    Created on : 13/06/2023, 11:08:07 AM
    Author     : jefri
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="modelo.*,Controlador.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        
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
    <body background="FOTOS/FONDOTRI.GIF">
    <center>
        <h1 class="alert-danger">CONFIRMA TU COMPRA</h1>
        <%
        HttpSession ses=request.getSession();
        DecimalFormat df = new DecimalFormat("#.00");
        double suma=0;
        List<CompraProducto> lista=(ArrayList<CompraProducto>)ses.getAttribute("canasta1");
        List<CompraCombo> lista2=(ArrayList<CompraCombo>)ses.getAttribute("canasta2");
        %>
        <table>
        <tr><td> Bienvenido, 
        <tr><td>
        <a href="pagTiendaVirtual.jsp" class="liq">
            <span>RETORNAR</span>
            <div style="background-color: #dc3545" class="liquido"></div>
        </a>
        </table>
        
        <br><span>TABLA DE PRODUCTOS</span>
        <table border="1">
        <tr><th>Codigo<th><center>Descripcion</center><th>Cantidad<th>Total a Pagar
        <%
        if(lista!=null){
        for(CompraProducto cp:lista){
        suma=suma+(cp.getPrecio()*cp.getCantidad());
        out.print("<tr><td>"+cp.getProd()+"<td>"+cp.getNombre()+"<td><center>"+cp.getCantidad()+"</center><td><center>"+cp.total()+"</center>");
        }
            }
        %>
        </table>
        
        <br><span>TABLA DE COMBOS</span>
        <table border="1">
        <tr><th>Codigo<th><center>Descripcion</center><th>Cantidad<th>Total a Pagar
        <%
        if(lista2!=null){
        for(CompraCombo cp:lista2){
        suma=suma+(cp.getPrecio()*cp.getCantidad());
        out.print("<tr><td>"+cp.getComb()+"<td>"+cp.getNom()+"<td><center>"+cp.getCantidad()+"</center><td><center>"+cp.total()+"</center>");
        }
            }
        %>

        </table>
        <br><span>SUMA TOTAL:</span>
        <input name="sum" value="<%=df.format(suma)%>" readonly=""><br>
        <br><div></div>
        <a href="tienda?opc=11&sum=<%=suma%>" class="liq">
            <span>Confirmar</span>
            <div style="background-color: #dc3545" class="liquido"></div>
        </a>
        </center>
        
    </body>
</html>
