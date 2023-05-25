<html>
<head>
    <title>Book N Book: Inicio</title>
	<meta charset="UTF-8">
    <link href="/BookNBookServices/webapp/css/bookNBookCss.css" rel="stylesheet" type="text/css">
    <script src="https://use.fontawesome.com/releases/v5.12.0/js/all.js" data-auto-replace-svg="nest"></script>
    <script src="https://kit.fontawesome.com/6c0d70b43d.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Principal</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Descubrir</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">X</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Y</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Proximamente...</a>
            </li>
            <ul class="navbar-nav me-auto d-flex user">
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="fa-solid fa-user" style="color: #2fc0ca;"></i>
                  </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="#">Mi usuario</a></li>
                    <li><a class="dropdown-item" href="#">Mis lecturas</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="#">Estadisticas</a></li>
                  </ul>
                </li>
            </UL>
          </ul>
        </div>
      </div>
    </nav>

    <!-- CARRUSEL -->
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel" style="width: 100% ">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <!-- Single item -->
        <div class="carousel-item active c-item">
            <img src="https://blog.vicensvives.com/wp-content/uploads/2018/11/Evolucion-librerias-1.jpg" class="d-block w-100 h-100 c-img" alt="Slide 1"/>
            <div class="carousel-caption d-none d-md-block">
                <p class="mt-5 fs-3 text-uppercase">Descubre nuevas lecturas</p>
                <button class="btn btn-primary px-4 py-2 fs-5 mt-5sss">Descubrir</button>
            </div>
        </div>
        <div class="carousel-item c-item">
            <img src="https://static.vecteezy.com/system/resources/previews/013/531/101/original/cartoon-background-luxury-old-room-or-library-free-vector.jpg" class="d-block w-100 h-100 c-img" alt="Slide 2"/>
            <div class="carousel-caption d-none d-md-block">
                <p class="mt-5 fs-3 text-uppercase">Observa tus lecturas pendientes, completas y en proceso</p>
                <button class="btn btn-primary px-4 py-2 fs-5 mt-5sss">Mis lecturas</button>
            </div>
        </div>
        <div class="carousel-item c-item">
            <img src="https://static.vecteezy.com/system/resources/previews/012/912/323/non_2x/bookcase-in-the-library-bestseller-bookshop-in-cartoon-style-illustration-vector.jpg" class="d-block w-100 h-100 c-img" alt="Slide 3"/>
            <div class="carousel-caption d-none d-md-block">
                <p class="mt-5 fs-3 text-uppercase">Informate sobre tus progresos</p>
                <button class="btn btn-primary px-4 py-2 fs-5 mt-5sss">Estadisticas</button>
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
      <div class="card">
        <img src="https://blog.vicensvives.com/wp-content/uploads/2018/11/Evolucion-librerias-1.jpg"" class="card-img-top" alt="Imagen Descubrir">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
      <div class="card">
        <img src="https://static.vecteezy.com/system/resources/previews/013/531/101/original/cartoon-background-luxury-old-room-or-library-free-vector.jpg" class="card-img-top" alt="Mis Lecturas">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
      <div class="card">
        <img src="https://static.vecteezy.com/system/resources/previews/012/912/323/non_2x/bookcase-in-the-library-bestseller-bookshop-in-cartoon-style-illustration-vector.jpg" class="card-img-top" alt="Estadisticas">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>