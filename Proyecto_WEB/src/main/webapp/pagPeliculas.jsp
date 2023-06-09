<%-- 
    Document   : pagPeliculas
    Created on : 20/05/2023, 07:32:06 PM
    Author     : henry
--%>

<%@page import="modelo.Categoria"%>
<%@page import="Controlador.Control"%>
<%@page import="modelo.Pelicula"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ejercicio 1 - Listar Peliculas (DEPENDIENTE)!</h1>
        <%
            HttpSession ses=request.getSession();
            ArrayList<Pelicula> lista=(ArrayList)request.getAttribute("dato");
            String cod=(String)request.getParameter("cod");

            int tampag=2;
            int canReg=lista.size();
            int inicio=0, fin, numPag=canReg/tampag+1;
            for(int p=1; p<=numPag;p++){
                %>
                <a href="serv_control?opc=2&cod=<%=cod%>&pa=<%=p%>"><%=p%></a>
        <%
            }
            int pagina;
            if(request.getParameter("pa")!=null){
            pagina=Integer.parseInt(request.getParameter("pa"));
            if(pagina==1)
            inicio=0;
            else
            inicio=(pagina-1)*tampag;
            }
            fin=inicio+tampag;
            if(fin>canReg) fin=canReg;
           
            
            String cate = request.getAttribute("codigo").toString();
            ses.setAttribute("codCate", cate);
            out.print("<h3>Lista de Peliculas de la Categoria: "+cate+"</h3>");
        %>
        
        
        <%
            Control obj = new Control();
            String nombre="";
            for (Categoria v : obj.buscarCat(cate)) {
                if(v.getId().equals(cate)){
                    nombre=v.getName();
                }
            }
            out.print("<h3>Categoria: "+nombre+"</h3>");
        %>
        
        <h2 class="alert-default-info">Lista de Peliculas</h2>
        
        <a href="pagCategorias.jsp">Retornar</a><br>
        <a href="pagNuevaPelicula.jsp">Adicionar</a><br><br>
        <table class="table table-hover">
            <thead>
                <tr class="bg-dark" style="text-align: center;"><th>Codigo<th>Nombre<th>Año<th>Duracion<th>Costo<th>Clasificacion<th>Sinopsis<th>Imagen<th>Actualizar<th>Eliminar</tr>
            </thead>   
        <%
            /*for(Pelicula x:lista){*/
            for(int f=inicio; f<fin; f++){
            Pelicula x=lista.get(f);
            out.print("<tr style='text-align: center;'><td>"+x.getIdpeli()+"<td>"+x.getNom()+"<td>"+x.getAnnio()+"<td>"+x.getDuracion()+"<td>"+x.getCosto()+"<td>"+x.getClasificacio()+"<td style='text-align: left;'>"+x.getSinop());
            %>
            <td><img style="max-width: 70%" src="imagenes/<%=x.getNom()%>.jpg" alt="alt"/>
            <td><a href="serv_control?opc=11&cod=<%=x.getIdpeli()%>">UPDATE</a>
            <td><a href="serv_control?opc=10&id=<%=x.getIdpeli()%>">DEL</a>
            <%
            }
        %>    
        </table>
    </body>
</html>
