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
        <h3>Quiero hacer mi Registro</h3>
        <form action="serv_control" method="post" name="fr">
            <table border=1 class="caja">
                <input type="hidden" name="opc" value="3">
                    <input type="text" placeholder="Nombre" id="txtnombres" name="txtnombres" class="campo" required> 
                    <input type="text" placeholder="Apellidos" id="txtapellidos" name="txtapellidos" class="campo" required>

                <select class="campo" id="lstpelicula" name="lstpelicula" required onclick="cambio()">

                            <option value="" selected hidden>Escoger Película</option>
                            
                            <%
                                    int i=1;    
                                    Control obj = new Control();
                                    for (Pelicula x: obj.lispe()) {
                            %>
                            <option value="<%=x.getIdpeli()%>"><%=x.getNom()%></option>
                            

                            <%
                                i++;
                                
                                
                                        }

                                       

                                    %>
                                    <script>
                                        
                                        function cambio(){
                                       valor=document.getElementById("lstpelicula").value;
                                       precio=0;
                                       <%
                                           String cod=request.getParameter("lstpelicula");
                                           //Pelicula x=obj.buscarP(cod).get(0);
                                           
                                       %>
                                       
                                       if(valor=="P0001"){
                                           precio=32;
                                       }else if(valor=="P0002"){
                                           precio=21;
                                       }else if(valor=="P0003"){
                                           precio=22;
                                       }else if(valor=="P0004"){
                                           precio=40;
                                       }else if(valor=="P0005"){
                                           precio=21;
                                       }else if(valor=="P0006"){
                                           precio=28;
                                       }else if(valor=="P0007"){
                                           precio=37;
                                       }else if(valor=="P0008"){
                                           precio=19;
                                       }
                                       
                                        console.log(precio);
                                        
                                        document.getElementById("res").innerHTML=precio;
                                        }
                                        
                                    </script>
                            
                    </select>
            
                    <input type="tel" placeholder="Pago" id="txtpago" name="txtpago" class="campo" required>              
            
                    <input type="tel" placeholder="Edad" id="txtedad" name="txtedad" class="campo" required>


                    <input type="tel" placeholder="DNI" id="txtdni" name="txtdni" class="campo" required>
            
            Costo:<div id="res">0</div>

            
            
        <p>
                <input class="boton-enviar" type="submit" value="Enviar" onclick="validacionFormulario()"> <!-- submit es para enviar los datos -->
        </p>
        </table>
        </form>
    </body>
</html>
