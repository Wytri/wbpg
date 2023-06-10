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
            String tipo = request.getParameter("cbc");
            String labels="",data="";
            int an=Integer.parseInt(request.getParameter("an"));
            for (grafico v : obj.graficomesa(an)) {
                    labels +="'"+v.getNombre()+"',";
                    data += v.getTotal()+",";
                }
            labels="["+labels.substring(0,labels.length()-1)+"]";//quita ULTIMA COMA
            data="["+data.substring(0,data.length()-1)+"]";
    %>
   
    <div class="container">
      <h2>Grafico por Mes</h2>
      <div>
        <canvas id="myChart"></canvas>
      </div>
    </div>
  </body>
  <script>
    //color
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
    
   
   /**
    for (var i = 0; i < <%=data%>.length; i++) {
        backgroundColors.push('rgba(' + i*40 + ',' + i*80 + ',' + i*120 + ', 0.6)');
    }
    */
       
    //si es lineal
    var borderWidth = 0;
    var leyenda = false;
    
    <% if (tipo.equals("line")) { %>
        borderWidth = 1;
        leyenda = true;
      <% } else { %>
        borderWidth = 0;
        leyenda = false;
      <% } %>
      
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
        labels: <%=labels%>,
        datasets: [
          {
              label: "Venta por mes <%=an%>",
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
      
  },
});
  </script>
</html>