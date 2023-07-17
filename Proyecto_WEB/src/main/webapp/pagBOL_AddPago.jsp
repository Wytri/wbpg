<%-- 
    Document   : pagBOL_AddPago
    Created on : 11 jul. 2023, 23:46:39
    Author     : sebas
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.*"%>
<%@page import="Controlador.Control"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/BOL_estilo.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/liq.css"/>
        <title>JSP Page</title>
    </head>
    <%
        HttpSession ses=request.getSession();
        Control obj = new Control();
        ArrayList<Pelicula> listUnPe =(ArrayList)ses.getAttribute("ListUnaPeli");
        String cod ="";
        for(Pelicula p: listUnPe){
            cod = p.getIdpeli();
        }
        Pelicula p = obj.buscarP(cod).get(0);
        double total=Double.parseDouble(request.getParameter("sum"));
    %>
    <body>
        <header id="cabecera">
        <div class="contenedor">
            <nav id="op">
                <div class="contenedor">
                    <ul class="barra-top">
                        <li class="bordeado"><h1><a href="index.html" class="liq">
                            <div style="background-color: #007bff;" class="liquido"></div>
                                    <span style="font-size: 20px">Salir</span>
                                </a></h1></li>
                        <li><h1>Rellena con los datos de tu Tarjeta</h1></li>
                        <li><a href="serv_control?opc=28">X</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>
        
        <section id="login" >
            <div class="contenedorT">
                <form id="sesion" action="tienda" method="post">
                    <div class="txtsesion"><h1>Método de Pago</h1></div>

                            <div class="contenedorW1">

                                <div class="imagen">
                                    <img src="imagenes/<%=p.getNom()%>.jpg" alt="" class="img_login" >
                                </div>
                                
                                <div class="llenar">
                                    <section id="tabl">                                        
                                            <table class="tabla">
                                                <input type="hidden" name="opc" value="5">
                                                <input type="hidden" name="sum" value="<%=total%>">
                                                <tr><td><input class="campo" type="text" placeholder="# de tarjeta" name="correo" required>
                                                    <td><input class="campo" type="text" placeholder="CVV" name="cvv" required>
                                                <tr><td><br>
                                                <tr><td><br>                                                    
                                                <tr><td><select name="tipo" required>
                                                            <option hidden="" value="0">Tipo de Tarjeta</option>
                                                            <option value="Crédito">Crédito</option>
                                                            <option value="Débito">Débito</option>
                                                        </select>
                                                    <td><select name="mes" required>
                                                            <option hidden="" value="0">Escoger Mes</option>
                                                            <option value="Enero">Enero</option>
                                                            <option value="Febrero">Febrero</option>
                                                            <option value="Marzo">Marzo</option>
                                                            <option value="Abril">Abril</option>
                                                            <option value="Mayo">Mayo</option>
                                                            <option value="Junio">Junio</option>
                                                            <option value="Julio">Julio</option>
                                                            <option value="Agosto">Agosto</option>
                                                            <option value="Setiembre">Setiembre</option>
                                                            <option value="Octubre">Octubre</option>
                                                            <option value="Noviembre">Noviembre</option>
                                                            <option value="Diciembre">Diciembre</option>
                                                        </select>
                                                    <td><select name="anio" required>
                                                            <option hidden="" value="0">Año</option>
                                                            <%
                                                                for (int i = 2023; i <= 2034; i++) {
                                                            %>
                                                                <option value="<%=i%>"><%=i%></option>
                                                            <%
                                                                    }
                                                            %>
                                                        </select>
                                                <tr><td><br>
                                                <tr><td><br>
                                                <tr><td><select name="tipo" required>
                                                    <option hidden="" value="0">Tipo de Documento</option>
                                                    <option value="DNI">DNI</option>
                                                    <option value="Carnet de Extranjería">Carnet de Extranjería</option>
                                                    <option value="Pasaporte">Pasaporte</option>
                                                    <option value="RUT">RUT</option>
                                                </select>
                                                    <td><input class="campo" type="text" placeholder="# de documento" name="doc" required>
                                                <tr><td><br>
                                                <tr><td><br>
                                            </table>
                                            <input class="botonIngresar" type="submit" value="PAGAR">
                                        
                                    </section>
                                </div>
                            </div>
                    </form>
            </div>
        </section>
                                                        
       <!-- Pie de página -->
    <footer id="pie" class="espacios">
        <div class="fila">
            <div class="columnaPIE">
                <div class="opcionPIE"><!-- opcionPIE1 -->
                    <div class="columna">
                        <a href="" target="_blank">
                            <i class="fa-solid fa-film"></i>
                            Terminos de uso y seguridad
                        </a>
                    </div>
                </div><!-- fin opcionPIE1 -->
            </div>

            <div class="columnaPIE">
                <div class="opcionPIE"><!-- opcionPIE2 -->
                    <div class="columna">
                        <a href="" target="_blank" class="antiliquido">
                            <i class="fa-solid fa-film"></i>
                            Contactanos
                        </a>
                    </div>
                </div> <!-- fin opcionPIE2 --> 
            </div>

        </div>
      
    </footer>
        
    </body>
</html>
