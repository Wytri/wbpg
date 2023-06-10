<%-- 
    Document   : GraficoVentas
    Created on : 15 may. 2023, 09:00:35
    Author     : LAB-USR-AQ265-A0701
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <script language='JavaScript'>
            function actualizar(formulaire){
            destino = 'GRAF1.jsp';
            if (formulaire.cbc.selectedIndex !== 0)
            {location.href = destino + '?an='+formulaire.an.value+ '&cbc='+formulaire.cbc.options[formulaire.cbc.selectedIndex].value;}}
        </Script>
    </head>
    <body style="font-size: 25px">
        <h2 class="alert-default-info">Graficar Ventas por Año</h2>
        <form action="GRAF1.jsp" target="ventana">
            Ingrese año: <input name="an" class="bg-gray-dark">
            <select name="cbc" class="list-group-item-light" style="border-radius: 20px 10px 30px 30px;
                                                                -webkit-border-radius: 20px 50px 50px 30px;
                                                                -moz-border-radius: 20px 10px 50px 30px;
                                                                border: 5px double;
                                                                ">
            <!--<select name="cbc" onclick="actualizar(this.form)">-->
                <option value="" selected>Selecciona gráfico</option>
                <option value="lines">lineal simple</option>
                <option value="line">lineal</option>
                <option value="bar">barra</option>
                <option value="pie">pie</option>
                <option value="horizontalBar">barra horizontal</option>
                <option value="radar">radar</option>
                <option value="polarArea">polar</option>
                <option value="doughnut">doughnut</option>
                <!--<option value="scatter">scatter</option>-->
            </select>
            <input type="submit"class="btn-dark" class="list-group-item-light" style="border-radius: 20px 10px 30px 30px;
                                                                -webkit-border-radius: 20px 50px 50px 30px;
                                                                -moz-border-radius: 20px 10px 50px 30px;
                                                                border: 5px double;
                                                                ">
        </form>
        
        <h2 class="alert-default-info">Graficar por Opcion</h2>
        <form action="GRAF2.jsp" target="ventana">
            <select name="cba" class="list-group-item-light" style="border-radius: 20px 10px 30px 30px;
                                                                -webkit-border-radius: 20px 50px 50px 30px;
                                                                -moz-border-radius: 20px 10px 50px 30px;
                                                                border: 5px double;
                                                                ">
                <option value="" selected>Selecciona Metodo</option>
                <option value="graficopelicula()">Pelicula</option>
                <option value="graficocategoria()">Categoria</option>
                <option value="graficocombo()">Combo</option>
                <option value="graficoproducto()">Producto</option>
                <option value="graficosala()">Sala</option>
                <option value="graficomes()">Mes</option>
                <option value="graficoannio()">Annio</option>
            </select>
            <select name="cbc" class="list-group-item-light" style="border-radius: 20px 10px 30px 30px;
                                                                -webkit-border-radius: 20px 50px 50px 30px;
                                                                -moz-border-radius: 20px 10px 50px 30px;
                                                                border: 5px double;
                                                                ">
                <option value="" selected>Selecciona gráfico</option>
                <option value="lines">lineal simple</option>
                <option value="line">lineal</option>
                <option value="bar">barra</option>
                <option value="pie">pie</option>
                <option value="horizontalBar">barra horizontal</option>
                <option value="radar">radar</option>
                <option value="polarArea">polar</option>
                <option value="doughnut">doughnut</option>
                <!--<option value="scatter">scatter</option>-->
            </select>
            <input type="submit" class="btn-dark" class="list-group-item-light" style="border-radius: 20px 10px 30px 30px;
                                                                -webkit-border-radius: 20px 50px 50px 30px;
                                                                -moz-border-radius: 20px 10px 50px 30px;
                                                                border: 5px double;
                                                                ">
        </form>
    </body>
    <br>
    <iframe name="ventana" height="900" width="1400"></iframe>
    
    
</html>
