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
    var ctx = document.getElementById("myChart").getContext("2d");
    var myChart = new Chart(ctx, {
        type: "<%=tipo%>",
      data: {
        labels: <%=labels%>,
        datasets: [
          {
              label: "Venta por mes <%=an%>",
            data: <%=data%>,
            backgroundColor: "rgba(153,205,1,0.6)",
          },
        ],
      },
    });
  </script>
</html>