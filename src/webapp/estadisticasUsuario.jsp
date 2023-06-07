<html>
<head>
    <title>Book N Book: Estadisticas</title>
	<meta charset="UTF-8">
    <link href="/BookNBookServices/webapp/css/bookNBookCss.css" rel="stylesheet" type="text/css">
    <script src="https://use.fontawesome.com/releases/v5.12.0/js/all.js" data-auto-replace-svg="nest"></script>
    <script src="https://kit.fontawesome.com/6c0d70b43d.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
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
             title: "Paginas leidas",
             height: 350,
             calendar: {
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

</head>
<body>
    <!-- BARRA DE NAVEGACION -->
    <nav class="navbar navbar-expand-lg sticky-top navbar-light" style="background-color: #c0ecef;">
      <div class="container-fluid">
        <a class="navbar-brand" href="#"><i class="fa-solid fa-book-open" style="color: #2fc0ca;"></i></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div>
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link fw-bold" aria-current="page" href="/BookNBookApi/paginaPrincipal.jsp">Principal</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link fw-bold" href="/BookNBookApi/descubrirLecturas.jsp">Descubrir</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fw-bold" href="/BookNBookApi/menuLecturas.jsp">Mis Lecturas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active fw-bold" href="/BookNBookApi/estadisticasUsuario.jsp">Estadisticas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled fw-bold" href="#" tabindex="-1" aria-disabled="true">Proximamente...</a>
                </li>
            </div>
            <div>
                <ul class="navbar-nav me-auto btn-group dropend">
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fa-solid fa-user" style="color: #2fc0ca;"></i>
                      </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/BookNBookApi/paginaUsuario.jsp">Mi usuario</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="/BookNBookApi/paginaSugerencias.jsp">Sugerencias</a></li>
                        </ul>
                    </li>
                </ul>
              </ul>
            </div>
        </div>
      </div>
    </nav>

    <!-- CALENDARIO -->
    <div class="container">
        <div id="calendar_basic" class="row justify-content-center m-5" style="width: 1000px; height: 350px;"></div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>