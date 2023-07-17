<%-- 
    Document   : pagCategorias
    Created on : 20/05/2023, 07:21:04 PM
    Author     : henry
--%>

<%@page import="modelo.Categoria"%>
<%@page import="Controlador.Control"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/estiloliquidoinput.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            
* {
    margin: 0;
    padding: 0;
	box-sizing: border-box;
}

/* conf para fondo negro */
body {
	/* display: flex; */
	align-items: center;
	justify-content: center;
	/* min-height: 100vh; */
	/* background: #0c0c0c; */
}

a {
    position: relative;
    margin: 10px;
    padding: 30px;
    text-align: center;
    display: block;
    font-weight: 700;
    text-decoration: none;
    text-transform: uppercase;
    width: 287px;
    overflow: hidden;
    border-radius: 40px;
}

a span {
    position: relative;
    color: #fff;
    font-size: 20px;
    font-family: Arial;
    letter-spacing: 8px;
    z-index: 1;
}

a .liquido {
    position: absolute;
    top: -80px;
    left: 0;
    width: 287px;
    height: 230px;
    /* background: #4973ff; */
    box-shadow: inset 0 0 50px rgba(0, 0, 0, .5s);
    transition: .5s;
}

#ini {
    background: #4973ff;
}

#nos {
    background: #49e4ff;
}

#peli {
    background: #49ff64;
}

#ubi {
    background: #f3ff49;
}

#cont {
    background: #ff4970;
}

a .liquido::after, a .liquido::before {
    content: '';
    width: 170%;
    height: 250%;
    position: absolute;
    top: 0;
    left: 50%;
    transform: translate(-50%, -75%);
    background: #000;
}

a .liquido::before {
    border-radius: 45%;
    background: rgba(20, 20, 20, 1);
    animation: animate 5s linear infinite;
}

a .liquido::after {
    border-radius: 40%;
    background: rgba(20, 20, 20, .5);
    animation: animate 10s linear infinite;
}

a:hover .liquido {
    top: -138px;
}

#salir:hover span{
    color: black;
    font-weight: 900;
}

@keyframes animate {
    0% {
        transform: translate(-50%, -70%) rotate(0deg);
    }

    100% {
        transform: translate(-50%, -75%) rotate(360deg);
    }
}
        </style>
    </head>
    <body>
        <h1 style="background-color: #fff; padding: 10px">Lista Categoria JSP!</h1>
        <a id="salir" href="crud.jsp" class="columna aa">
            <span>Retornar</span>                
            <div style="background-color: #fff" class="liquido"></div>
        </a>
        <%
            Control obj=new Control();
        %>
    <center>
        <div style="zoom: 1.3">
            <table>
                <thead>
                    <tr>
                        <th>
                            <a href="" class="columna aa" onclick="return false;">
                                <span>Categoria</span>
                                <div style="background-color: blue" class="liquido"></div>
                            </a>
                        </th>
                        <th>
                            <a href="" class="columna aa" onclick="return false;">
                                <span>Nombre</span>
                                <div style="background-color: blue" class="liquido"></div>
                            </a>
                        </th>
                        <th>
                            <a href="" class="columna aa" onclick="return false;">
                                <span>Ver</span>
                                <div style="background-color: blue" class="liquido"></div>
                            </a>
                        </th>
                </thead>   
                <%
                    for(Categoria x:obj.liscat()){
                %>
                <tr>
                    <td>
                        <a href="" class="columna aa" onclick="return false;">
                            <span><%=x.getId()%></span>
                            <div style="background-color: #5f0de6" class="liquido"></div>
                        </a>
                    </td>
                    <td>
                        <a href="" class="columna aa" onclick="return false;">
                            <span><%=x.getName()%></span>
                            <div style="background-color: #ab0b87" class="liquido"></div>
                        </a>
                    </td>
                    <td>
                        <a href="serv_control?opc=2&cod=<%=x.getId()%>" class="columna aa">
                            <span>Pelicula</span>
                            <div style="background-color: #dc3545" class="liquido"></div>
                        </a>
                <%
                    }  
              %>  
              </table><!-- fin tabla-->
          </div>
    </center>      
    </body>
</html>
