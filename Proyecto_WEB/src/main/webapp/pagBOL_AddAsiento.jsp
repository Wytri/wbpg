<%-- 
    Document   : pagBOL_AddAsiento
    Created on : 5 jul. 2023, 20:03:27
    Author     : sebas
--%>
<%@page import="Controlador.Control"%>
<%@page import="java.util.*"%>
<%@page import="modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/BOL_estilo.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/liq.css"/>
        <title>Registro Asiento</title>
    </head>
    <body>
        
    <header id="cabecera">
        <div class="contenedor">
            <nav id="op">
                <div class="contenedor">
                    <ul class="barra-top">
                        <li class="bordeado">
                            <h1>
                                <a class="liq" href="index.html">
                                    <div style="background-color: #007bff;" class="liquido"></div>
                                    <span style="font-size: 20px">Salir</span>
                                </a><br>
                            </h1>
                        </li>
                        <li><h1>Selecciona tus butacas</h1></li>
                        <li><a href="serv_control?opc=28">X</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>
        
    <section id="butacas" class="espacios">
        <div class="contenedor">
            <div class="fila">

                <div class="columna"><!-- comienza columna 1 -->        
                    <div class="contenedorT">
                        <div class="contenedorW">
                
            <%
            HttpSession ses=request.getSession();
            ArrayList<Detalle> listAsi=(ArrayList)request.getAttribute("listAsi");
            ArrayList<Pelicula> listUnPe=(ArrayList)ses.getAttribute("ListUnaPeli");
            ArrayList<Funciones> lisfunpeli = (ArrayList)ses.getAttribute("lisfunpeli");
                
                double at=0;
                String sala="";
                String Fecha="",Inicio="";
                for(Pelicula p: listUnPe){
            %>
            <center>
                <img src="imagenes/<%=p.nom%>.jpg" alt="alt" class="img_Asi"/>
                <br><br><h1><%=p.nom%></h1><br>
            </center>
            
            <%
            at=p.costo;
            }
            for (Funciones F: lisfunpeli) {
                Fecha=F.inicio;
                sala=F.sala;
            }
        %>
                            <form name="FRA">
                                <table class="tabla" cellspacing="20">
                                    <tr><td>Sala:<td><%=sala%>
                                    <tr><td>Fecha:<td><%=Fecha%>
                                    <tr><td>Horario: <td><%=Fecha%>
                                    <tr><td>Costo por butaca:<td><%=at%>
                                    <!-- div class="caja" -->

                                        <tr><td>Tipo de Asiento<td><br>
                                        <input type="radio" value="VIP" name="op" id="vip" onclick="cambia()">
                                        <label for="vip">VIP</label>

                                        <input type="radio" value="EST" name="op" id="Estandar" onclick="cambia()">
                                        <label for="Estandar">Estandar</label>

                                        <input type="radio" value="REG" name="op" id="Regular" onclick="cambia()">
                                        <label for="Regular">Regular</label>
                                        <!-- /div -->


                                        <td>
                                    <tr><td>
                                </table>
                            </form>
                                    <input id="boton" style="background-color: blue; color: white; 
                                           font-size: 40px; border-radius: 30px; padding: 10px
                                           " type="submit" onclick="rpst()" value="COMPRAR">
                        </div><!-- contenedorW -->


            <DIV class="contenedorSALA">
                <div class="contenedorA">
                    <div class="pantalla">Pantalla</div>
                    <%

                        int[] asientos = new int[30];
                       
                        int asiento=1, top=6;                        

                        for(int i=1;i<=(asientos.length)/6;i++){

                        %>
                            <div class="filaA">
                        <%
                            for(int j=asiento;j<=top;j++){
                            boolean ojo = false;
                            for (Detalle pas : listAsi) {
                                if(j==pas.asi){
                                    ojo = true;
                                }
                            }

                            if(ojo){
                                %>
                                <div class="asiento ocupado"><%=j%></div>
                                <%
                            }else{
                                    %>
                                        <div class="asiento" onclick="nani(<%=j%>)"><%=j%></div>
                                    <%
                                }

                            }
                            asiento=asiento+6;
                            top=top+6;
                            %>
                            </div>
                            <%
                        }
                    %>
                </div>
                
                    <ul class="sala">
                        <li>
                            <div class="asiento P"></div>
                            <h3>Disponible</h3>
                        </li>
                        <li>
                            <div class="asiento seleccionadoP"></div>
                            <h3>Seleccionado</h3>
                        </li>
                        <li>
                            <div class="asiento ocupadoP"></div>
                            <h3>Ocupado</h3>
                        </li>
                    </ul>
                <br><br>
                <!-- Asientos view mediante script -->
                <h3>Asientos escogidos: <div id="arr"></div> </h3>
                <br><br>
                
                
            </DIV> <!-- contenedorA --> 
        </div><!-- contenedorT -->
    </div><!-- termina columna 1 -->
    </div>
    </div>
    </section>
                
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
                        <a href="" target="_blank">
                            <i class="fa-solid fa-film"></i>
                            Contactanos
                        </a>
                    </div>
                </div> <!-- fin opcionPIE2 --> 
            </div>

        </div>
      
    </footer>            
                
        <!-- Script de asientos, mostrar y url -->
        <script>
            const contenedor = document.querySelector(".contenedorA");
            const asiento = document.querySelectorAll(".fila .asiento:not(.ocupado)");
            const Array = [];
            
            var cont = document.getElementById("arr");
            // Crea la tabla y el cuerpo de la tabla
            var tabla = document.createElement("table");
            var tbody = document.createElement("tbody");
            
            contenedor.addEventListener("click", (e) => {
                if(e.target.classList.contains("asiento") && !e.target.classList.contains("ocupado")){
                    e.target.classList.toggle("seleccionado");
                    console.log(e.target);
                }
            });
            
            function nani(x){
                cont.innerHTML="";
                tabla.innerHTML="";
                tbody.innerHTML="";
                var encont = Array.indexOf(x);
                
                
                if(encont !== -1){
                    Array.splice(encont,1);
                    
                    // Recorre el arreglo y crea una fila por cada elemento
                    for (var i = 0; i < Array.length; i++) {
                      var fila = document.createElement("td");
                      var celda = document.createElement("td");
                      celda.textContent = Array[i];
                      fila.append(celda);
                      tbody.appendChild(fila);
                    }

                    // Agrega el cuerpo el elemento 
                    tabla.appendChild(tbody);

                    // Agrega la tabla 
                    cont.appendChild(tabla);
                }else{
                    Array.push(x);

                    // Recorre el arreglo y crea una fila por cada elemento
                    for (var i = 0; i < Array.length; i++) {
                      var fila = document.createElement("td");
                      var celda = document.createElement("td");
                      celda.textContent = Array[i];
                      fila.append(celda);
                      tbody.appendChild(fila);
                    }

                    // Agrega el cuerpo de la tabla al elemento de la tabla
                    tabla.appendChild(tbody);

                    // Agrega la tabla al contenedor
                    cont.appendChild(tabla);
                }                
                console.log(Array);
            }
            
            function cambia(){
                var valor="vacio";
                for(var i=0;i<document.FRA.op.length;i++){
                    if(document.FRA.op[i].checked){
                        valor = document.FRA.op[i].value;
                    }
                }
                
                return valor;
            }
  
            function rpst(){
                
            var arregloJSON = JSON.stringify(Array);

            // Crear una URL con el nombre y el arreglo codificado
            var url = "serv_control?opc=23&" + encodeURIComponent("nombre") + "=" + encodeURIComponent(arregloJSON)+"&tipoAsi="+cambia();
            
            window.location.href = url;

            }
        </script>
        
    </body>
</html>
