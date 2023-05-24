
<html>
<head>
    <title>Book N Book: Registro</title>
	<meta charset="UTF-8">
    <link href="/AplicativoWebTemplate/css/bookNBookCss.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/6c0d70b43d.js" crossorigin="anonymous"></script>
</head>
<body>
 <section class="vh-100">
      <div class="container-fluid">
        <div class="row align-items-center">
          <div class="col-sm-6 text-black">

            <div class="d-flex justify-content-center px-5 ms-xl-4">
                <span class="h1 fw-bold mb-0" style="color: #2fc0ca;"><i class="fa-solid fa-book-open" style="color: #2fc0ca;"></i> BOOK N BOOK <i class="fa-solid fa-book-open" style="color: #2fc0ca;"></i></span>
             </div>

            <div class="d-flex justify-content-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">

              <form class="row g-3">
              <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">REGISTRO</h3>
                <div class="col-md-4">
                  <div class="form-outline">
                    <input type="text" class="form-control" id="validationDefault01" required />
                    <label for="validationDefault01" class="form-label">Nombre</label>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-outline">
                    <input type="text" class="form-control" id="validationDefault02" required />
                    <label for="validationDefault02" class="form-label">Primer Apellido</label>
                  </div>
                </div>
                <div class="col-md-4">
                    <div class="form-outline">
                        <input type="text" class="form-control" id="validationDefault02"/>
                        <label for="validationDefault02" class="form-label">Segundo Apellido</label>
                    </div>
                </div>
                <div class="col-md-6">
                  <div class="form-outline">
                    <input type="text" class="form-control" id="validationDefault03" required />
                    <label for="validationDefaultUsername" class="form-label">Email</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-outline">
                    <input type="text" class="form-control" id="validationDefault03" required />
                    <label for="validationDefault03" class="form-label">Password</label>
                  </div>
                </div>

 <!-- NOTIFICACION REGISTRO REALIZADO CON EXITO Y BOTON PARA VOLVER A LA PAGINA DE ACCESO -->
                <div class="col-12">
                  <button class="btn btn-primary" type="submit" style="color: black; background-color: #2fc0ca; border: 0px solid" >Registrarse</button>
                </div>
              </form>

            </div>

          </div>
          <div class="col-sm-6 px-0 d-none d-sm-block">
            <img src="https://img.freepik.com/foto-gratis/abierto-volando-libros-antiguos_1232-2096.jpg"
              alt="Login image" class="w-100 vh-100" style="object-fit: cover; object-position: left;">
          </div>
        </div>
      </div>
    </section>

</body>
</html>