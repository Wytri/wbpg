<%-- 
    Document   : PRUEBA_JS
    Created on : 27 jun. 2023, 21:17:58
    Author     : sebas
--%>

<%@page import="Controlador.Control"%>
<%@page import="modelo.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <h1>Procesar Arreglo</h1> 
          <script>
              const continerQR = document.getElementById('continerQR');
                new QRCode(continerQR, 'B0001');              
          </script>
        <%-- Obtener el nombre y el arreglo de la URL --%>
        <%
            Control c = new Control();
            HttpSession ses=request.getSession();
            Cliente cli = new Cliente();
            
            cli = (Cliente) ses.getAttribute("CLIENTE");
            
            c.addcli(cli);
            out.println(cli.getDni()+"--"+cli.getNombre()+"--"+cli.getApellido()+"--"+cli.getCorreo()+"--"+cli.getTel()+"--"+cli.getBirth());
            
            //String tipo =(String) ses.getAttribute("tipoAsi");
            //int[] XD = (int[])ses.getAttribute("Asi_bol");
            
          //String nombre = request.getParameter("nombre");          
          //String[] lista = nombre.split(",",-1);
          //int[] selected = new int[lista.length]; 
          
          //for (int i = 0; i < lista.length; i++) {
          //  if(i==0){
          //      selected[i]=Integer.parseInt(lista[i].substring(1,lista[i].length()));
          //      out.println("Asientos:"+lista[i].substring(1,lista[i].length())+"<br>");
          //  }else{
          //      if(i==lista.length-1){
          //          selected[i]=Integer.parseInt(lista[i].substring(0,lista[i].length()-1));
          //          out.println("Asientos:"+lista[i].substring(0,lista[i].length()-1)+"<br>");
          //      }else{
          //          selected[i]=Integer.parseInt(lista[i]);
          //          out.println("Asientos:"+lista[i]+"<br>");
          //      }
          //  }
          //        
          //}
          
         // for (int i = 0; i < XD.length; i++) {
           //       out.println("Asientos con int:"+XD[i]+"<br>");
            //  }
           // out.println("<br>TIPO DE ASI:  "+tipo);
          //}
        %>
    </body>
</html>
