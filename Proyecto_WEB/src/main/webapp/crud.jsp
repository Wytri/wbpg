<%-- 
    Document   : crud
    Created on : 20/05/2023, 07:13:43 PM
    Author     : henry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/CSS_CRUD.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        
        <style>
            body{
                font-size: 30px;
                font-weight: 100;
            }
            
            h1{
                font-size: 50px;
            }
            
            .cell-hover {
                background-color: black;
            }

            .cell-hover:hover {
                background-color: #0074f0;
                border-radius: 15%;
            }
              
            .cell-hover:hover a{
                color: white;
            }

            #texto {
                padding-top: 50px;
                padding-bottom: 50px;
                display: flex;
                align-items: center;
                justify-content: center; 
            }

            #texto h1 {
              font-family: 'Oswald', sans-serif;
              font-size: 60px; 
            }

            #texto h1:hover {
              text-shadow: red -4px 0, cyan 4px 0;
              color: #1a1818; 
            }
        </style>
    </head>
    <body>
        <center>    
        <div class="todo">
            <div id="texto"><h1>Bienvenido Administrador(a)</h1><br></div>
                <table class="tabla_op" cellpadding="10" cellspacing="20">

                    <td class="cell-hover">
                        <a href="pagCategorias.jsp">
                            <img src="img_crud/peliculas.jpg" class="ajustar_img"><br>
                            Categoria de Peliculas</a></td>

                    <td class="cell-hover">
                        <a href="pagComida.jsp">
                            <img src="img_crud/canchita.jpg" class="ajustar_img"><br>
                            Venta de Comida</a></td>
    
                    <td class="cell-hover">
                        <a href="pagPeliculasAdd.jsp">
                            <img src="img_crud/boletos.jpg" class="ajustar_img"><br>
                            Registro de Boletas</a></td>

                    <tr></tr>

                    <td class="cell-hover">
                        <a href="pagClientes.jsp">
                            <img src="img_crud/clientes.jpg" class="ajustar_img"><br>
                            Clientes</a></td>
    
                    <td class="cell-hover">
                        <a href="tablasbbdd.jsp">
                            <img src="img_crud/empleados.jpg" class="ajustar_img"><br>
                            Trabajadores</a></td>

                    <td class="cell-hover">
                        <a href="pagSala.jsp">
                            <img src="img_crud/salas.jpg" class="ajustar_img"><br>
                            Ver Salas Ocupadas</a></td>

                    <tr></tr>
                    <td class="cell-hover">
                        <a href="pagTiendaVirtual.jsp">
                            <img src="img_crud/Tienda_Virtual.jpg" class="ajustar_img"><br>
                            Tienda virtual</a></td>
                            
                    <td class="cell-hover">
                        <a href="GraficoVentas.jsp">
                            <img src="img_crud/estadistica2.jpg" class="ajustar_img"><br>
                            GRÁFICOS</a></td>
                </table>                
            </div>

        </center> 
    </body>
</html>
