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
    <body>
        <h2>Graficar Ventas por Año</h2>
        <form action="GRAF1.jsp" target="ventana">
            Ingrese año: <input name="an">
            <select name="cbc">
            <!--<select name="cbc" onclick="actualizar(this.form)">-->
                <option value="" selected>Selecciona gráfico</option>
                <option value="line">lineal</option>
                <option value="bar">barra</option>
                <option value="pie">pie</option>
                <option value="horizontalBar">barra horizontal</option>
                <option value="radar">radar</option>
                <option value="polarArea">Polar</option>
                <option value="doughnut">Doughnut</option>
            </select>
            <input type="submit">
        </form>
        
        <h2>Graficar por Opcion</h2>
        <form action="GRAF2.jsp" target="ventana">
            <select name="cba">
                <option value="" selected>Selecciona Metodo</option>
                <option value="graficopelicula()">Pelicula</option>
                <option value="graficocategoria()">Categoria</option>
                <option value="graficocombo()">Combo</option>
                <option value="graficoproducto()">Producto</option>
                <option value="graficosala()">Sala</option>
                <option value="graficomes()">Mes</option>
                <option value="graficoannio()">Annio</option>
            </select>
            <select name="cbc">
                <option value="" selected>Selecciona gráfico</option>
                <option value="line">lineal</option>
                <option value="bar">barra</option>
                <option value="pie">pie</option>
                <option value="horizontalBar">barra horizontal</option>
                <option value="radar">radar</option>
                <option value="polarArea">Polar</option>
                <option value="doughnut">Doughnut</option>
            </select>
            <input type="submit">
        </form>
    </body>
    <br>
    <iframe name="ventana" height="900" width="1400"></iframe>
    
    
</html>
