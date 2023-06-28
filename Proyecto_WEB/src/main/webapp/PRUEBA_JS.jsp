<%-- 
    Document   : PRUEBA_JS
    Created on : 27 jun. 2023, 21:17:58
    Author     : sebas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <h1>Procesar Arreglo</h1> 

        <%-- Obtener el nombre y el arreglo de la URL --%>
        <%
          String nombre = request.getParameter("nombre");
          String[] lista = nombre.split(",",-1);
          int[] selected = new int[lista.length]; 
          
          for (int i = 0; i < lista.length; i++) {
            if(i==0){
                selected[i]=Integer.parseInt(lista[i].substring(1,lista[i].length()));
                out.println("Asientos:"+lista[i].substring(1,lista[i].length())+"<br>");
            }else{
                if(i==lista.length-1){
                    selected[i]=Integer.parseInt(lista[i].substring(0,lista[i].length()-1));
                    out.println("Asientos:"+lista[i].substring(0,lista[i].length()-1)+"<br>");
                }else{
                    selected[i]=Integer.parseInt(lista[i]);
                    out.println("Asientos:"+lista[i]+"<br>");
                }
            }
                  
          }
          
          for (int i = 0; i < selected.length; i++) {
                  out.println("Asientos con int:"+selected[i]+"<br>");
              }
            
          //}
        %>
    </body>
</html>
