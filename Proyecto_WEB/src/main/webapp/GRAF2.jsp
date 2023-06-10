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
            boolean condicion = false;
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
      
    //var backgroundColors = ["rgba(255, 99, 132, 0.6)", "rgba(54, 162, 235, 0.6)", "rgba(255, 206, 86, 0.6)", "rgba(75, 192, 192, 0.6)", "rgba(153, 102, 255, 0.6)", "rgba(255, 159, 64, 0.6)"];
    
    function getRandomColor() {
        var r = Math.floor(Math.random() * 255);
        var g = Math.floor(Math.random() * 255);
        var b = Math.floor(Math.random() * 255);
        var a = 0.6;
        return "rgba(" + r + ", " + g + ", " + b + ", " + a + ")";
    }
    
    
    function getRandomColorB() {
        var r = Math.floor(Math.random() * 255);
        var g = Math.floor(Math.random() * 255);
        var b = Math.floor(Math.random() * 255);
        var a = 1;
        return "rgba(" + r + ", " + g + ", " + b + ", " + a + ")";
    }

    var backgroundColors = [];
    var backgroundColorsB = [];

    
    for (var i = 0; i < <%=data%>.length; i++) {
        backgroundColors.push(getRandomColor());
        backgroundColorsB.push(getRandomColorB());
    }
    
       
    //si es lineal
    var borderWidth = 0;
    var leyenda = false;
    
    <% if (gtipo.equals("line")) { %>
        borderWidth = 1;
        leyenda = true;
      <% } else { %>
        borderWidth = 0;
        leyenda = false;
      <% } %>
          
    //part
    var img = new Image();
img.src = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNk+P+/HgAF3gJpXN6JvwAAAABJRU5ErkJggg==";
      
    var ctx = document.getElementById("myChart").getContext("2d");
    var myChart = new Chart(ctx, {
        <% if (tipo.equals("lines")) { 
            tipo = "line";
            condicion = true;
        %>
        type: "<%=tipo%>",
        <% } else {
            condicion = false;
        %>
        type: "<%=tipo%>",
        <% } %>
      data: {
        //labels: <%=labels%>,
        labels: <%=labels%>.map(function(label) { return label.toString(); }),
        datasets: [
          {
            label: "<%=gtipo%>",
            data: <%=data%>,
            backgroundColor: backgroundColors,
            //"rgba(153,205,1,0.6)",
            //
            borderColor: backgroundColorsB,
            borderWidth: borderWidth,
            //"rgba(255, 99, 132, 1)",
            //borderWidth: 1,
            <% if (condicion == true) { %>
                fill: false,
            <% } else { %>
                fill: true,
            <% } %>
            //fill: true, // Establece la opción fill en true para pintar el área del gráfico
            //fill: false,
          },
        ],
      },
      //mostrar desde 0
    options: {
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero: true,
            min: 0, // Establece el valor mínimo del eje Y en cero
            fontSize: 20
          }
        }],
        xAxes: [{
            ticks: {
              beginAtZero: true,
              min: 0, // Establece el valor mínimo del eje x en cero
              fontSize: 20
            }
          }]
      },
      legend: {
        labels: {
      <% if (tipo.equals("pie") || tipo.equals("doughnut") || tipo.equals("polarArea")) { %>
      <% } else { %>
        display: true,
          boxWidth: 0,
      <% } %>
        fontSize: 23,
        }
      },

      elements: {
      line: {
        tension: 0.4,
      },
      point: {
        radius: 0,
      },
    },
    layout: {
      padding: {
        left: 20,
        right: 20,
        top: 20,
        bottom: 20,
      },
    },
    responsive: true,
    //maintainAspectRatio: false,
    backgroundImage: img,
    backgroundRepeat: "repeat-x",
  },
});
  </script>
</html>