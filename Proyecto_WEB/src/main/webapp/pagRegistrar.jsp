<%@page import="modelo.Asiento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.Control"%>
<%@page import="modelo.Pelicula"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <center>
        <%
            HttpSession ses=request.getSession();
            String codPeli=(String)ses.getAttribute("codPeli");
            String idsala=request.getParameter("lstsala");
            double costo=(double)ses.getAttribute("costo");
            ses.setAttribute("idsala", idsala);
            Control obj = new Control();
        %>
        <h3>Nuevo registro para la Película: <%=codPeli%></h3>
        <form action="serv_control" method="post" name="fr">
            <table border=1 class="table table-hover">
                <input type="hidden" name="opc" value="3">
                
                <input type="text" placeholder="Nombre" id="txtnombres" name="txtnombres" class="campo" required><br>
                <input type="text" placeholder="Apellidos" id="txtapellidos" name="txtapellidos" class="campo" required><br>
                

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
                    </select><br>
            
                    <input type="tel" placeholder="Pago" id="txtpago" name="txtpago" class="campo" required><br>             
                    <input type="tel" placeholder="Edad" id="txtedad" name="txtedad" class="campo" required><br>
                    <input type="tel" placeholder="DNI" id="txtdni" name="txtdni" class="campo" required>            
                    <br>Costo de la Entrada: S/<%=costo%>

        <p>
                <input class="boton-enviar" type="submit" value="Enviar" onclick="validacionFormulario()"> <!-- submit es para enviar los datos -->
        </p>
        </table>
        </form>
                    </center>
    </body>
</html>
