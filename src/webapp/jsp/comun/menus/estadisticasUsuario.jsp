<html>
<head>
    <title>Book N Book: Estadisticas</title>
	<meta charset="UTF-8">
    <script src="https://use.fontawesome.com/releases/v5.12.0/js/all.js" data-auto-replace-svg="nest"></script>
    <script src="https://kit.fontawesome.com/6c0d70b43d.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <!-- CALENDARIO -->
    <script type="text/javascript">
        google.charts.load("current", {packages:["calendar"]});
        google.charts.setOnLoadCallback(drawChart);

       function drawChart() {
           var dataTable = new google.visualization.DataTable();
           dataTable.addColumn({ type: 'date', id: 'Date' });
           dataTable.addColumn({ type: 'number', id: 'Won/Loss' });
           dataTable.addRows([
              [ new Date(2023, 3, 13), 33 ],
              [ new Date(2023, 3, 14), 2 ],
              [ new Date(2023, 3, 15), 12 ],
              [ new Date(2023, 3, 16), 6 ],
              [ new Date(2023, 3, 17), 1 ]
            ]);

           var chart = new google.visualization.Calendar(document.getElementById('calendar_basic'));

           var options = {
             title: "Calendario paginas leidas",
             height: 350,
             calendar: {
                   cellColor: {
                      stroke: '#D0EBEF',
                      strokeOpacity: 0.5,
                      strokeWidth: 1,
                   },
                   monthLabel: {
                     fontName: 'Times-Roman',
                     fontSize: 12,
                     color: '#2FC0CA',
                     bold: true,
                     italic: true
                   },
                   monthOutlineColor: {
                     stroke: '#1799A2',
                     strokeOpacity: 0.8,
                     strokeWidth: 2
                   },
                   underMonthSpace: 10,
                   underYearSpace: 10,
                   yearLabel: {
                        fontName: 'Times-Roman',
                        fontSize: 32,
                        color: '#2FC0CA',
                        bold: true,
                        italic: true
                   },
                   dayOfWeekLabel: {
                        fontName: 'Times-Roman',
                        fontSize: 12,
                        color: '#1799A2',
                        bold: true,
                        italic: true,
                   },
                   unusedMonthOutlineColor: {
                        stroke: '#67C8CF',
                        strokeOpacity: 0.8,
                        strokeWidth: 1
                   },
                   dayOfWeekRightSpace: 10,
                   daysOfWeek: 'DLMMJVS',
                 }
           };

           chart.draw(dataTable, options);
       }
    </script>

    <!-- CIRCULO -->
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Libros', 'Estado'],
          ['Lecturas finalizadas',     11],
          ['Lecturas en proceso',      2],
          ['Lecturas a la espera',  2]
        ]);

        var options = {
          title: 'Porcentaje de lecturas',
          is3D: true,
          slices: {
             0: { color: 'B6F4B8' },
             1: { color: 'FCF997' },
             2: { color: 'FCA297' }
          },
          pieSliceTextStyle: {
             color: 'black',
          },
          titleTextStyle: {
              color: '#2FC0CA',
              fontName: 'Times-Roman',
              fontSize: 32,
              bold: true,
              italic: true
          },
          legendTextStyle: {
              color: '#1799A2',
              fontName: 'Times-Roman',
              fontSize: 12,
              bold: true
          },
          pieSliceTextStyle: {
              color: '#0D5E63',
              fontName: 'Times-Roman',
              fontSize: 16,
              bold: true
          }
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));

        chart.draw(data, options);
      }
    </script>

</head>
<body>
    <%@ include file="../encabezado/encabezado.jsp" %>

    <!-- CALENDARIO -->
    <div class="container">
        <div class="row justify-content-center">
            <div id="calendar_basic" class="mt-5" style="width: 1000px; height: 200px;"></div>
            <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>