<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.Control"%>
<%@page import="modelo.Pelicula"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="action">
		<div class="entrada">
                    <h3>Quiero recibir información</h3>
                    <input type="text" placeholder="Nombre" id="txtnombres" name="txtnombres" class="campo" required> 
            </div>
            
            <div class="entrada">
                    <input type="text" placeholder="Apellidos" id="txtapellidos" name="txtapellidos" class="campo" required>
            </div>
            
            <div class="entrada"> 
                <select class="campo" id="lstpelicula" name="lstpelicula" required onclick="cambio()">

                            <option value="" selected hidden>Escoger Película</option>
                            
                            <%
                                    int i=1;    
                                    Control obj = new Control();
                                    for (Pelicula x: obj.lispe()) {
                            %>
                            <option value="<%=i%>"><%=x.getNom()%></option>
                            

                            <%
                                i++;
                                
                                
                                        }

                                       

                                    %>
                                    <script>
                                        
                                        function cambio(){
                                       valor=document.getElementById("lstpelicula").value;
                                       precio=0;
                                       
                                       if(valor==1){
                                           precio=32;
                                       }else if(valor==2){
                                           precio=21;
                                       }else if(valor==3){
                                           precio=22;
                                       }else if(valor==4){
                                           precio=40;
                                       }else if(valor==5){
                                           precio=21;
                                       }else if(valor==6){
                                           precio=28;
                                       }else if(valor==7){
                                           precio=37;
                                       }else if(valor==8){
                                           precio=19;
                                       }
                                       
                                        console.log(precio);
                                        
                                        document.getElementById("res").innerHTML=precio;
                                        }
                                        
                                    </script>
                            
                    </select>
            </div>
                                         
            
            <div class="entrada">
                    <input type="tel" placeholder="Edad" id="txtedad" name="txtedad" class="campo" required>
            </div>
            <div class="entrada">
                    <input type="tel" placeholder="DNI" id="txtdni" name="txtdni" class="campo" required>
            </div>
            
            <div id="res">0</div>

            
            
        <p>
                <input class="boton-enviar" type="submit" value="Enviar" onclick="validacionFormulario()"> <!-- submit es para enviar los datos -->
        </p>
        </form>
    </body>
</html>
