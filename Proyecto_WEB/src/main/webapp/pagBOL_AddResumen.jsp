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
        <link rel="stylesheet" href="css/liq.css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js" integrity="sha512-CNgIRecGo7nphbeZ04Sc13ka07paqdeTu0WR1IM4kNcpmBAUSHSQX0FslNhTDadL4O5SAGapGt4FodqL8My0mA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <title>JSP Page</title>
    </head>
    <body>
        
        
    <header id="cabecera">
        <div class="contenedor">
            <nav id="op">
                <div class="contenedor">
                    <ul class="barra-top">
                        <li><h1><a href="serv_control?opc=28">
                            <div style="background-color: #007bff;" class="liquido"></div>
                                    <span style="font-size: 20px">Salir</span>
                                </a></h1></li>
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
                                        <%
                                            if((int)ses.getAttribute("codORDEN")!=0){
                                        %>
                                        <tr><td>Lista de Compras de la Tienda:
                                        <%
                                        int cod=(int)ses.getAttribute("codORDEN");
                                        double total=0;
                                        List<DetalleProducto> lisPro=(ArrayList)obj.lisBolPro(cod);
                                        List<DetalleCombo> lisCom=obj.lisBolCom(cod);
                                        for(DetalleProducto x: lisPro){
                                        
                                            %>
                                        <tr><td>Nombre: <%=x.getNombre()%>, Cantidad: <%=x.getCant()%>, Total: <%=x.getTotal()%>
                                        <%
                                            total=total+x.getTotal();
                                            }

                                        for(DetalleCombo x: lisCom){
                                        
                                            %>
                                        <tr><td>Nombre: <%=x.getNombre()%>, Cantidad: <%=x.getCantidad()%>, Total: <%=x.getTotal()%>
                                        <%
                                            total=total+x.getTotal();
                                            }

                                        %>
                                        
                                <tr><td>Costo total de Productos Comprados: <td><%=total%><br> 
                                 
                                        
                                    <%
                                        }

                                        List<Boleto> lisbol = obj.NUMBOL(asibol.length);
                                        String todo="";
                                        for(Boleto b:lisbol){
                                            todo = todo + b.getBoleta();                                        
                                        }
                                        todo = todo+"|"+DNI+"|"+inicio;
                                    %>
                                    

                            </table>
                                    <br><br><br>
                                    <div class="contenedorQR">
                                        <div id="continerQR" class="continerQR"></div>
                                    </div>
                                    
                                    
                    </form>
                </center>
            </div>
        </section>
        
        
        <script>
            const continerQR = document.getElementById('continerQR');
            new QRCode(continerQR, '<%=todo%>');
        </script>
        
        
            <%
                ses.setAttribute("ListUnaPeli", null); //opc=21, codpeliAfunc
                ses.setAttribute("lisfunpeli", null);  //opc=22, codFunAseat
                ses.setAttribute("Asi_bol", null);     //opc 23, Asibol
                ses.setAttribute("DNI", null);         //opc=25, BOLlogin
                ses.setAttribute("tipoAsi", null);     //opc 23, Asibol
                ses.setAttribute("CLIENTE", null);     //opc 28, Crearcueta
                ses.setAttribute("codORDEN", null);    //opc 6,  Entrar ---> servlet=tienda
            %>
    </body>
</html>
