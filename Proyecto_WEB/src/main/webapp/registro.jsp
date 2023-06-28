<%@page import="modelo.Asiento"%>
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
        <%
            String idsala="S0001";
        %>
        <form action="serv_control" method="post" name="fr">
            <table border=1 class="caja">
                <input type="hidden" name="opc" value="3">
                
                    <input type="text" placeholder="Nombre" id="txtnombres" name="txtnombres" class="campo" required> 
                    <input type="text" placeholder="Apellidos" id="txtapellidos" name="txtapellidos" class="campo" required>
                    
                    <select class="campo" id="lstsala" name="lstsala" required onchange="lista()">
                        <option value="S0001" selected>S0001</option>
                        <option value="S0002">S0002</option>
                        <option value="S0003">S0003</option>
                        </select>
                <select class="campo" id="lstpelicula" name="lstpelicula" required onchange="cambio()">

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
                                       idsala=document.getElementById("lstsala").value;
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
                                        console.log(idsala);
                                        document.getElementById("res").innerHTML=precio;
                                        }
                                        
                                    </script>
                            
                                    <script>
                                        function lista(){
                                        let sala=document.getElementById("lstsala");
                                        let asiento=document.getElementById("tasiento");
                                        sala.onchange= function(){
                                            asiento.innerHTML="<option></option>";
                                            if(this.value=="S0001"){
                                                addToAsiento(asientos);
                                            }
                                            if(this.value=="S0002"){
                                                addToAsiento(asientos);
                                            }
                                            if(this.value=="S0003"){
                                                addToAsiento(asientos);
                                            }
                                        }
                                        
                                        function addToAsiento(arr){
                                            
                                        }
                                    }
                                    </script>
                    </select>

                    <select id="tasiento" name="tasiento" required>

                            <option value="0" selected hidden>Escoger Asiento</option>
                            
                            <%
                                   int z=0;
                                   int con=0;
                                   boolean t=false;
                                   
                                    
                                    
                                for(Asiento x: obj.lisasibus(idsala)){
                                    z++;
                                }
                                
                                int vec []= new int [z];
                                
                                for(Asiento x: obj.lisasibus(idsala)){
                                    vec[con]=x.getAsiento();
                                    %>
                                            <%
                                    con++;
                                }
                                
                                    for (int x=1; x<=20; x++){
                                    t=false;
                                for(int n=0;n<vec.length;n++){
                                    if(x==vec[n]){
                                    t=true;
                                    }
                                }

                                    if(t==false){
                            %>
                            <option value="<%=x%>"><%=x%></option>
                            <%
                                }
                                    
                                                            
                        }
                        
                                    %>
                            
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
