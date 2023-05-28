<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Controlador.Control,modelo.*"%>
<html>
    <script src="Chart.min.js" type="text/javascript"></script>
  <link
    rel=
"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
    type="text/css"
  />
  <script src=
"https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script
    src=
"https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"
    type="text/javascript"
  ></script>
  <script src=
"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  
  <script src=
"https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.2.2/Chart.min.js"></script>
  <style>
    .container {
      width: 100%;
      margin: 15px auto;
    }
    body {
      text-align: center;
      color: green;
    }
    h2 {
      text-align: center;
      font-family: "Verdana", sans-serif;
      font-size: 30px;
    }
  </style>
  <body>
      <%
            Control obj = new Control();
            String met = request.getParameter("cba");
            String tipo = request.getParameter("cbc");
            String gtipo="";
            List<grafico> listaGraficos = null;
            switch (met) {
                case "graficopelicula()":
                    listaGraficos = obj.graficopelicula();
                    gtipo="Pelicula";
                    break;
                case "graficocategoria()":
                    listaGraficos = obj.graficocategoria();
                    gtipo="Categoria";
                    break;
                case "graficocombo()":
                    listaGraficos = obj.graficocombo();
                    gtipo="Combo";
                    break;
                case "graficoproducto()":
                    listaGraficos = obj.graficoproducto();
                    gtipo="Prducto";
                    break;
                case "graficosala()":
                    listaGraficos = obj.graficosala();
                    gtipo="Sala";
                    break;
                case "graficomes()":
                    listaGraficos = obj.graficomes();
                    gtipo="Mes";
                    break;
                case "graficoannio()":
                    listaGraficos = obj.graficoannio();
                    gtipo="Año";
                    break;
                // Agregar casos para otros métodos
                default:
                    // Manejar caso en el que met no coincide con ningún método
            }
            
            String labels="",data="";
            for (grafico v : listaGraficos) {
                    labels +="'"+v.getNombre()+"',";
                    data += v.getTotal()+",";
                }
            labels="["+labels.substring(0,labels.length()-1)+"]";//quita ULTIMA COMA
            data="["+data.substring(0,data.length()-1)+"]";
    %>
   
    <div class="container">
      <h2>Grafico por <%=gtipo%></h2>
      <div>
        <canvas id="myChart"></canvas>
      </div>
    </div>
  </body>
  <script>
    var ctx = document.getElementById("myChart").getContext("2d");
    var myChart = new Chart(ctx, {
        type: "<%=tipo%>",
      data: {
        labels: <%=labels%>,
        datasets: [
          {
              label: "Venta por <%=gtipo%>",
            data: <%=data%>,
            backgroundColor: "rgba(153,205,1,0.6)",
          },
        ],
      },
    });
  </script>
</html>