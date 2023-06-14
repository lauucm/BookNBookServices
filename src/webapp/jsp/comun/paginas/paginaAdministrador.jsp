<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="es">
<head>
    <title>Book N Book</title>
	<meta charset="UTF-8">
    <script src="https://use.fontawesome.com/releases/v5.12.0/js/all.js" data-auto-replace-svg="nest"></script>
    <script src="https://kit.fontawesome.com/6c0d70b43d.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

    <%@ include file="../encabezado/encabezadoAdministrador.jsp" %>

    <!-- OPCIONES -->
    <div class="container">
        <div class="m-5 ">
          <!--Grid row-->
          <div class="row">
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/adminPaginaServlet">
                    <img src="/BookNBookServices/imagenes/imagenLibroLeido.jpg"
                        class="img-fluid rounded-4 shadow-2-strong"
                        alt=""/>
                    <p class="text-center fs-5 fw-bold">USUARIOS</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="">
                    <img src="/BookNBookServices/imagenes/imagenLibroProceso.jpg"
                    class="img-fluid rounded-4 shadow-2-strong"
                    alt=""/>
                    <p class="text-center fs-5 fw-bold">LIBROS</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="">
                  <img src="/BookNBookServices/imagenes/imagenLibroNoLeido.jpg"
                    class="img-fluid rounded-4 shadow-2-strong"
                    alt=""/>
                  <p class="text-center fs-5 fw-bold">AUTORES</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="">
                    <img src="/BookNBookServices/imagenes/imagenLibroLeido.jpg"
                        class="img-fluid rounded-4 shadow-2-strong"
                        alt=""/>
                    <p class="text-center fs-5 fw-bold">SAGAS</p>
                </a>
            </div>
          </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>