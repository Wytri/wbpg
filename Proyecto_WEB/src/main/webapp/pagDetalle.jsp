<%-- 
    Document   : pagDetalle
    Created on : 21/05/2023, 04:20:30 PM
    Author     : henry
--%>

<%@page import="Controlador.Control"%>
<%@page import="modelo.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            
            .li {
                position: relative;
                padding: 5px;
                text-align: center;
                display: block;
                font-weight: 700;
                text-decoration: none;
                text-transform: uppercase;
                width: 287px;
                overflow: hidden;
                border-radius: 40px;
            }

            .li span {
                position: relative;
                color: #fff;
                font-size: 20px;
                font-family: Arial;
                letter-spacing: 8px;
                z-index: 1;
            }

            .li .liquido {
                position: absolute;
                top: -80px;
                left: 0;
                width: 287px;
                height: 230px;
                /* background: #4973ff; */
                box-shadow: inset 0 0 50px rgba(0, 0, 0, .5s);
                transition: .5s;
            }

            .li .liquido::after, .li .liquido::before {
                content: '';
                width: 170%;
                height: 250%;
                position: absolute;
                top: 0;
                left: 50%;
                transform: translate(-50%, -75%);
                background: #000;
            }

            .li .liquido::before {
                border-radius: 45%;
                background: rgba(20, 20, 20, 1);
                animation: animate 5s linear infinite;
            }

            .li .liquido::after {
                border-radius: 40%;
                background: rgba(20, 20, 20, .5);
                animation: animate 10s linear infinite;
            }

            .li:hover .liquido {
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
            
            body{
                font-size: 22px;
            }
            
            h2{
                text-shadow:
                  -1px -1px 0 #000,
                  1px -1px 0 #000,
                  -1px 1px 0 #000,
                  1px 1px 0 #000;
                text-decoration: none;
            }
            
            span{
                color: cyan;
                text-shadow:
                  -1px -1px 0 #000,
                  1px -1px 0 #000,
                  -1px 1px 0 #000,
                  1px 1px 0 #000;
                text-decoration: none;
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
            
            .liqu {
                position: relative;
                padding: 20px;
                text-align: center;
                display: block;
                font-weight: 700;
                text-decoration: none;
                text-transform: uppercase;
                width: 287px;
                overflow: hidden;
                border-radius: 40px;
            }

            .liqu span {
                position: relative;
                color: #fff;
                font-size: 20px;
                font-family: Arial;
                letter-spacing: 8px;
                z-index: 1;
            }

            .liqu .liquido {
                position: absolute;
                top: -80px;
                left: 0;
                width: 287px;
                height: 230px;
                /* background: #4973ff; */
                box-shadow: inset 0 0 50px rgba(0, 0, 0, .5s);
                transition: .5s;
            }

            .liqu .liquido::after, .liqu .liquido::before {
                content: '';
                width: 170%;
                height: 250%;
                position: absolute;
                top: 0;
                left: 50%;
                transform: translate(-50%, -75%);
                background: #000;
            }

            .liqu .liquido::before {
                border-radius: 45%;
                background: rgba(20, 20, 20, 1);
                animation: animate 5s linear infinite;
            }

            .liqu .liquido::after {
                border-radius: 40%;
                background: rgba(20, 20, 20, .5);
                animation: animate 10s linear infinite;
            }

            .liqu:hover .liquido {
                top: -138px;
            }
           
        </style>
    </head>
    <body>
        <h2 class="alert-default-info" style="background-color: cyan; color: white">Lista de Detalle</h2>
        <%
            ArrayList<Pelicula> lista=(ArrayList)request.getAttribute("dato");
            int dni=Integer.parseInt(request.getAttribute("dni").toString());
            int cate = Integer.parseInt(request.getAttribute("codigo").toString());
            out.print("<h3>Lista de Detalle: <span>"+cate+"</span></h3>");
        %>
        
        
        <%
            Control obj = new Control();
            String nombre="";
            for (Cliente v : obj.buscarC(dni)) {
                if(v.getDni()==dni){
                    nombre=v.getNombre()+" "+v.getApellido();
                }
            }
            out.print("<h3>Cliente: <span>"+nombre+"</span></h3>");
        %>
        
        <a class="liqu" href="serv_control?opc=5&cod=<%=dni%>">
            <span>Retornar</span>
            <div style="background-color: cyan" class="liquido"></div>
        </a>
                
        <table class="table table-hover">
            <thead>
                <tr style="background-color: cyan; "><th>Función<th>Fecha/Hora<th>Sala<th>Asiento<th>Nombre<th>Orden<th>Orden</tr>
            </thead>   
        <%
            for(Pelicula x:lista){
            out.print("<tr><td>"+x.getFuncion()+"<td>"+x.getInicio()+"<td>"+x.getSala()+"<td>"+x.getAsi()+"<td>"+x.getNom()+"<td>"+x.getOrden());
        %>
            <td><a href="serv_control?opc=7&cod=<%=x.getOrden()%>&dni=<%=dni%>&detalle=<%=cate%>" class="li">
                    <span>Adicioon</span>
                    <div style="background-color: cyan" class="liquido"></div>
                </a>
        <%
            }  
        %>    
        </table>
    </body>
</html>
