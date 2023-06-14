<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="org.BookNBookServices.dao.Libro" %>
<%@ page import="java.util.ArrayList" %>

<html lang="es">
<head>
    <title>Book N Book: Inicio</title>
	<meta charset="UTF-8">
    <script src="https://use.fontawesome.com/releases/v5.12.0/js/all.js" data-auto-replace-svg="nest"></script>
    <script src="https://kit.fontawesome.com/6c0d70b43d.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <%@ include file="../encabezado/encabezado.jsp" %>

    <!-- CARRUSEL -->
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel" style="width: 100%">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <!-- Single item -->
          <div class="carousel-item active c-item">
            <img src="https://i.pinimg.com/736x/d4/c2/82/d4c282c3abef8c8c977f42807ea3445b.jpg" class="d-block w-100 h-50" alt="Slide 1"/>
            <div class="carousel-caption d-none d-md-block">
                <p class="mt-5 fs-3 text-uppercase text-dark fw-bold">Descubre nuevas lecturas</p>
                <a href="/BookNBookServices/jsp/comun/menus/descubrirLecturas.jsp"><button class="btn btn-primary px-4 py-2 fs-5 mt-5sss" style="color: black; background-color: #993399; border: 0px solid">Descubrir</button></a>
            </div>
          </div>
          <div class="carousel-item c-item">
            <img src="https://i.pinimg.com/600x315/ba/15/d6/ba15d683cb3748bd057a3966fb777c99.jpg" class="d-block w-100 h-50" alt="Slide 2"/>
            <div class="carousel-caption d-none d-md-block">
                <p class="mt-5 fs-3 text-uppercase text-dark fw-bold">Observa tus lecturas pendientes, completas y en proceso</p>
                <a href="/BookNBookServices/jsp/comun/menus/menuLecturas.jsp"><button class="btn btn-primary px-4 py-2 fs-5 mt-5sss" style="color: black; background-color: #ff9966; border: 0px solid">Mis lecturas</button></a>
            </div>
          </div>
          <div class="carousel-item c-item">
            <img src="https://i.pinimg.com/originals/42/78/63/42786397e071d79469952f0cf3fe0668.jpg" class="d-block w-100 h-50" alt="Slide 3"/>
            <div class="carousel-caption d-none d-md-block">
                <p class="mt-5 fs-3 text-uppercase text-dark fw-bold">Informate sobre tus progresos</p>
                <a href="/BookNBookServices/jsp/comun/menus/estadisticasLecturas.jsp"><button class="btn btn-primary px-4 py-2 fs-5 mt-5sss" style="color: black; background-color: #ff6699; border: 0px solid">Estadisticas</button></a>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!--Cartas del menu-->
    <div class="card-group">
       <%ArrayList<Libro> listadoLibros = (ArrayList<Libro>) request.getSession().getAttribute("listadoLibros");
          if(listadoLibros != null && listadoLibros.size() > 0) {%>
          <%for (Libro libro : listadoLibros) {%>
            <div class="card">
                <a href="/BookNBookServices/libroDetalleServlet?idLibro=<%= libro.getId()%>"><img src=<%= libro.getUrl() %> class="card-img-top" height="300" alt=""></a>
                <div class="card-body" style="background-color: #c0ecef;">
                    <p class="card-title fs-4 fw-bold"><%= libro.getNombre() %></p>
                    <p class="card-text fst-italic"><%= libro.getDescripcion() %></p>
                </div>
            </div>
          <% }
       }%>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>