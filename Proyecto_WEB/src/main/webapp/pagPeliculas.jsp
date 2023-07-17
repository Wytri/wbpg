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
        
        <style>
.liq {
    position: relative;
    margin: 10px;
    padding: 30px;
    text-align: center;
    display: block;
    font-weight: 700;
    text-decoration: none;
    text-transform: uppercase;
    width: 287px;
    overflow: hidden;
    border-radius: 40px;
}

.liq span {
    position: relative;
    color: #fff;
    font-size: 20px;
    font-family: Arial;
    letter-spacing: 8px;
    z-index: 1;
}

.liq .liquido {
    position: absolute;
    top: -80px;
    left: 0;
    width: 287px;
    height: 230px;
    /* background: #4973ff; */
    box-shadow: inset 0 0 50px rgba(0, 0, 0, .5s);
    transition: .5s;
}

.liq .liquido::after, .liq .liquido::before {
    content: '';
    width: 170%;
    height: 250%;
    position: absolute;
    top: 0;
    left: 50%;
    transform: translate(-50%, -75%);
    background: #000;
}

.liq .liquido::before {
    border-radius: 45%;
    background: rgba(20, 20, 20, 1);
    animation: animate 5s linear infinite;
}

.liq .liquido::after {
    border-radius: 40%;
    background: rgba(20, 20, 20, .5);
    animation: animate 10s linear infinite;
}

.liq:hover .liquido {
    top: -138px;
}

@keyframes animate {
    0% {
        transform: translate(-50%, -70%) rotate(0deg);
    }

    100% {
        transform: translate(-50%, -75%) rotate(360deg);
    }
}
        </style>
    </head>
    <body>
        <h1>Listar Peliculas (DEPENDIENTE)!</h1>
        <%
            HttpSession ses=request.getSession();
            ArrayList<Pelicula> lista=(ArrayList)request.getAttribute("dato");
            String cod=(String)request.getParameter("cod");

            int tampag=2;
            int canReg=lista.size();
            int inicio=0, fin, numPag=canReg/tampag+1;
            for(int p=1; p<=numPag;p++){
                %>
                <a href="serv_control?opc=2&cod=<%=cod%>&pa=<%=p%>" style="font-size: 30px"><%=p%></a>
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
            out.print("<h3>Lista de Peliculas de la Categoria: <span style='color: blue'>"+cate+"</span></h3>");
        %>
        
        
        <%
            Control obj = new Control();
            String nombre="";
            for (Categoria v : obj.buscarCat(cate)) {
                if(v.getId().equals(cate)){
                    nombre=v.getName();
                }
            }
            out.print("<h3>Categoria: <span style='color: blue'>"+nombre+"</span></h3>");
        %>
        
        <a class="liq" href="pagCategorias.jsp">
            <span>Retornar</span>
            <div style="background-color: blue" class="liquido"></div>
        </a>
        <a class="liq" href="pagNuevaPelicula.jsp">
            <span>Adicioon</span>
            <div style="background-color: #DC3545" class="liquido"></div>
        </a>
        
        <h2 class="alert-default-info">Lista de Peliculas</h2>
        
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
