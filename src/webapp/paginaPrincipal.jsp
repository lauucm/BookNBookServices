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
        <div class="collapse navbar-collapse d-flex justify-content-between" id="navbarSupportedContent">
            <div>
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link active fw-bold" aria-current="page" href="#">Principal</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link fw-bold" href="#">Descubrir</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fw-bold" href="#">X</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fw-bold" href="#">Y</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled fw-bold" href="#" tabindex="-1" aria-disabled="true">Proximamente...</a>
                </li>
            </div>
            <div>
                <ul class="navbar-nav me-auto btn-group dropstart">
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fa-solid fa-user" style="color: #2fc0ca;"></i>
                      </a>
                      <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Mi usuario</a></li>
                        <li><a class="dropdown-item" href="#">Mis lecturas</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Estadisticas</a></li>
                      </ul>
                    </li>
                </ul>
              </ul>
            </div>
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
            <img src="https://i.pinimg.com/736x/d4/c2/82/d4c282c3abef8c8c977f42807ea3445b.jpg" class="d-block w-100 h-50 c-img" alt="Slide 1"/>
            <div class="carousel-caption d-none d-md-block">
                <p class="mt-5 fs-3 text-uppercase text-dark fw-bold">Descubre nuevas lecturas</p>
                <button class="btn btn-primary px-4 py-2 fs-5 mt-5sss" style="color: black; background-color: #993399; border: 0px solid">Descubrir</button>
            </div>
          </div>
          <div class="carousel-item c-item">
            <img src="https://i.pinimg.com/600x315/ba/15/d6/ba15d683cb3748bd057a3966fb777c99.jpg" class="d-block w-100 h-50 c-img" alt="Slide 2"/>
            <div class="carousel-caption d-none d-md-block">
                <p class="mt-5 fs-3 text-uppercase text-dark fw-bold">Observa tus lecturas pendientes, completas y en proceso</p>
                <button class="btn btn-primary px-4 py-2 fs-5 mt-5sss" style="color: black; background-color: #ff9966; border: 0px solid">Mis lecturas</button>
            </div>
          </div>
          <div class="carousel-item c-item">
            <img src="https://i.pinimg.com/originals/42/78/63/42786397e071d79469952f0cf3fe0668.jpg" class="d-block w-100 h-50 c-img" alt="Slide 3"/>
            <div class="carousel-caption d-none d-md-block">
                <p class="mt-5 fs-3 text-uppercase text-dark fw-bold">Informate sobre tus progresos</p>
                <button class="btn btn-primary px-4 py-2 fs-5 mt-5sss" style="color: black; background-color: #ff6699; border: 0px solid">Estadisticas</button>
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

    <!--Cartas del menu: obtener 3 libros de la base de dato más leidos-->
    <div class="card-group">
      <div class="card">
        <img src="https://th.bing.com/th/id/R.2a06f9a22bf545ea68006c7da0b53601?rik=RFbYtLzfFEy9kQ&pid=ImgRaw&r=0" class="card-img-top w-100 h-75" alt="">
        <div class="card-body" style="background-color: #c0ecef;">
          <p class="card-title fs-4 fw-bold">Libro 1</p>
          <p class="card-text fst-italic">Descripcion ...</p>
          <p class="card-text">Calificacion</p>
        </div>
      </div>
      <div class="card">
        <img src="https://th.bing.com/th/id/OIP.jzmqPLfT1iRpQuiU1leqWgHaLk?pid=ImgDet&rs=1" class="card-img-top w-100 h-75" alt="">
        <div class="card-body" style="background-color: #c0ecef;">
            <p class="card-title fs-4 fw-bold">Libro 2</p>
            <p class="card-text fst-italic">Descripcion ...</p>
            <p class="card-text">Calificacion</p>
        </div>
      </div>
      <div class="card">
        <img src="https://th.bing.com/th/id/OIP.jzmqPLfT1iRpQuiU1leqWgHaLk?pid=ImgDet&rs=1" class="card-img-top w-100 h-75" alt="">
        <div class="card-body" style="background-color: #c0ecef;">
            <p class="card-title fs-4 fw-bold">Libro 3</p>
            <p class="card-text fst-italic">Descripcion ...</p>
            <p class="card-text">Calificacion</p>
        </div>
      </div>
      <div class="card">
        <img src="https://th.bing.com/th/id/OIP.jzmqPLfT1iRpQuiU1leqWgHaLk?pid=ImgDet&rs=1" class="card-img-top w-100 h-75" alt="">
        <div class="card-body" style="background-color: #c0ecef;">
            <p class="card-title fs-4 fw-bold">Libro 4</p>
            <p class="card-text fst-italic">Descripcion ...</p>
            <p class="card-text">Calificacion</p>
        </div>
      </div>
      <div class="card">
        <img src="https://th.bing.com/th/id/OIP.SNlsUCcU5jzS3P-0uPwEBgHaLL?pid=ImgDet&rs=1" class="card-img-top w-100 h-75" alt="">
        <div class="card-body" style="background-color: #c0ecef;">
          <p class="card-title fs-4 fw-bold">Libro 5</p>
          <p class="card-text fst-italic">Descripcion ...</p>
          <p class="card-text">Calificacion</p>
        </div>
      </div>
      <div class="card">
        <img src="https://th.bing.com/th/id/OIP.ED14BqA779rd0etDpH3HDgAAAA?pid=ImgDet&rs=1" class="card-img-top w-100 h-75" alt="">
        <div class="card-body" style="background-color: #c0ecef;">
          <p class="card-title fs-4 fw-bold">Libro 6</p>
          <p class="card-text fst-italic">Descripcion ...</p>
          <p class="card-text">Calificacion</p>
        </div>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>