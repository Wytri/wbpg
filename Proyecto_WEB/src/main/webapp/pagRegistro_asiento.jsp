<%-- 
    Document   : pagRegistro_asiento
    Created on : 26 jun. 2023, 23:28:53
    Author     : sebas
--%>

<%@page import="java.util.*"%>
<%@page import="modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/sala.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession ses=request.getSession();
            ArrayList<Detalle> listAsi=(ArrayList)request.getAttribute("listAsi");
            ArrayList<Pelicula> listUnPe=(ArrayList)ses.getAttribute("ListUnaPeli");
            ArrayList<Funciones> lisfunpeli = (ArrayList)ses.getAttribute("lisfunpeli");
            
            for(Pelicula p: listUnPe){
            %>
            <br><br><h1><%=p.nom%></h1>
            <%
            }
            for (Funciones F: lisfunpeli) {
            %>
            <h2><%=F.inicio%></h2><br><br>
            <%
            }
        %>
        
        
        <ul class="sala">
        <li>
            <div class="asiento"></div>
            <h3>Disponible</h3>
        </li>
        <li>
            <div class="asiento seleccionado"></div>
            <h3>Seleccionado</h3>
        </li>
        <li>
            <div class="asiento ocupado"></div>
            <h3>Ocupado</h3>
        </li>
    </ul>

    <div class="contenedor">
        <div class="pantalla">Pantalla</div>
            <%

               int[] asientos = new int[30];
               
               int asiento=1, top=6;
               String sala="";
                
                    for (Funciones x: lisfunpeli) {
                            sala = x.getSala();
                    }
                    
            out.print(sala);
                
                for(int i=1;i<=(asientos.length)/6;i++){
                
                %>
                    <div class="fila">
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
            
            <h3>Asientos escogidos: <div id="arr"></div> </h3>
            <br><br>
            

                <input type="submit" onclick="rpst()" value="COMPRAR">
            
            <a href="crud.jsp">retornar</a>
            

        <script>
            const contenedor = document.querySelector(".contenedor");
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
            
  
            function rpst(){
                
            var arregloJSON = JSON.stringify(Array);

            // Crear una URL con el nombre y el arreglo codificado
            var url = "PRUEBA_JS.jsp?" + encodeURIComponent("nombre") + "=" + encodeURIComponent(arregloJSON);
            
            window.location.href = url;

            }
        </script>
    </body>
</html>
