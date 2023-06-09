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
    </head>
    <body>
        <center>    
        <div class="todo">
                <h1>Bienvenido Administrador(a)</h1><br>
                <table class="tabla_op" cellpadding="10" cellspacing="20">

                    <td onmouseover="bgColor='#bf0404'" onmouseout="bgColor='black'">
                        <a href="pagCategorias.jsp">
                            <img src="img_crud/peliculas.jpg" class="ajustar_img"><br>
                            Categoria de Peliculas</a></td>

                    <td onmouseover="bgColor='#bf0404'" onmouseout="bgColor='black'">
                        <a href="pagComida.jsp">
                            <img src="img_crud/canchita.jpg" class="ajustar_img"><br>
                            Venta de Comida</a></td>
    
                    <td onmouseover="bgColor='#bf0404'" onmouseout="bgColor='black'">
                        <a href="pagPeliculasAdd.jsp">
                            <img src="img_crud/boletos.jpg" class="ajustar_img"><br>
                            Registro de Boletas</a></td>

                    <tr></tr>

                    <td onmouseover="bgColor='#bf0404'" onmouseout="bgColor='black'">
                        <a href="pagClientes.jsp">
                            <img src="img_crud/clientes.jpg" class="ajustar_img"><br>
                            Clientes</a></td>
    
                    <td onmouseover="bgColor='#bf0404'" onmouseout="bgColor='black'">
                        <a href="tablasbbdd.jsp">
                            <img src="img_crud/empleados.jpg" class="ajustar_img"><br>
                            Trabajadores</a></td>

                    <td onmouseover="bgColor='#bf0404'" onmouseout="bgColor='black'">
                        <a href="pagSala.jsp">
                            <img src="img_crud/salas.jpg" class="ajustar_img"><br>
                            Ver Salas Ocupadas</a></td>

                    <tr></tr>
                    <td onmouseover="bgColor='#bf0404'" onmouseout="bgColor='black'">
                        <a href="GraficoVentas.jsp">
                            <img src="img_crud/estadistica2.jpg" class="ajustar_img"><br>
                            GRÁFICOS</a></td>
                </table>
            </div>

        </center> 
    </body>
</html>
