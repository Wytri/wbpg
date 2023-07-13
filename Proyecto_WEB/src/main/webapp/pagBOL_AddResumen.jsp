<%-- 
    Document   : pagBOL_AddResumen
    Created on : 11 jul. 2023, 21:51:00
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
        <title>JSP Page</title>
    </head>
    <body>
        
        
    <header id="cabecera">
        <div class="contenedor">
            <nav id="op">
                <div class="contenedor">
                    <ul class="barra-top">
                        <li><h1><a href="serv_control?opc=28">salir</a></h1></li>
                        <li><h1>LOGIN</h1></li>
                        <li id="antiliquido"><a href="serv_control?opc=28">X</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>
        
        <section id="login" >
            <div class="contenedorT">
                <center>
                    <form id="sesion" action="serv_control" method="post">
                        <div class="txtsesion"><h1>RESUMEN</h1></div>
                            <table class="tabla">
                                <%
                                    Control obj = new Control();
                                    String a="aa";
                                    HttpSession ses=request.getSession();
                                    ArrayList<Pelicula> listUnPe=(ArrayList)ses.getAttribute("ListUnaPeli");
                                    ArrayList<Funciones> lisfunpeli = (ArrayList)ses.getAttribute("lisfunpeli");
                                    int [] asibol = (int[]) ses.getAttribute("Asi_bol");
                                    String tipoAsi = (String) ses.getAttribute("tipoAsi");
                                    int ord = (int) ses.getAttribute("codORDEN");
                                    int DNI = (int) ses.getAttribute("DNI");

                                    
                                    //datos extraidos
                                    String IDpeli="",sala="",inicio="";
                                    
                                    
                                    //PAGOS
                                    int cont = asibol.length;
                                    double pagarBol=0, costo=0;

                                    for(Pelicula p: listUnPe){
                                        System.out.println(p.getIdpeli()+"///"+p.getNom()+"///"+p.getCosto()+"///");
                                        costo = p.getCosto();
                                        IDpeli = p.getNom();
                                    }        
                                    
                                    for(Funciones f: lisfunpeli){
                                        System.out.println(f.getFuncion()+"///"+f.getInicio()+"///"+f.getSala()+"///");
                                        inicio = f.getInicio();
                                        sala = f.getSala();
                                    }
                                    pagarBol = cont*costo;
                                %>
                                <tr><td>Pelicula: <td><%=IDpeli%><br>
                                <tr><td>Documento de identidad: <td><%=DNI%><br>       
                                <tr><td>sala: <td><%=sala%><br>
                                <tr><td>Fecha: <td><%=inicio%><br>
                                <tr><td>Asiento(s): <td>
                                        <%
                                            for(int i=0;i<=asibol.length-1;i++){
                                                out.print(asibol[i]+" ");
                                            }
                                        %>
                                <tr><td>Tipo de Asiento(s): <td><%=tipoAsi%><br>
                                <tr><td>costo de la peli: <td><%=costo%><br>
                                <tr><td>Pago total boletas: <td><%=pagarBol%><br>  
                                        <!--si se puede mostrar los productos-->
                                        
                                        
                                        
                                <tr><td>costo total de productos comprados: <td><%=a%><br> 
                                 
                                        
                                    <%                                        
                                    ses.setAttribute("ListUnaPeli", null); //opc=21, codpeliAfunc
                                    ses.setAttribute("lisfunpeli", null);  //opc=22, codFunAseat
                                    ses.setAttribute("Asi_bol", null);     //opc 23, Asibol
                                    ses.setAttribute("DNI", null);         //opc=25, BOLlogin
                                    ses.setAttribute("tipoAsi", null);     //opc 23, Asibol
                                    ses.setAttribute("CLIENTE", null);     //opc 28, Crearcueta
                                    ses.setAttribute("codORDEN", null);    //opc 6,  Entrar ---> servlet=tienda
                                    %>
                            </table>
                    </form>
                </center>
            </div>
        </section>
        
        
        
    </body>
</html>
