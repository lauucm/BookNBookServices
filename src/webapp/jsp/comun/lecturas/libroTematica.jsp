<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="org.BookNBookServices.dao.TematicaLibro" %>

<html lang="es">
<head>
    <title>Book N Book: Descubrir</title>
	<meta charset="UTF-8">
    <script src="https://use.fontawesome.com/releases/v5.12.0/js/all.js" data-auto-replace-svg="nest"></script>
    <script src="https://kit.fontawesome.com/6c0d70b43d.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <%@ include file="../encabezado/encabezado.jsp" %>

    <!-- NAVEGACION ENTRE TEMATICAS -->
    <!-- TEMATICAS -->
    <div class="container">
        <div class="m-5 ">
          <!--Grid row-->
          <div class="row">
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.LITERARIA %>">
                    <img src="/BookNBookServices/imagenes/imagenLibroLeido.jpg"
                        class="img-fluid rounded-4 shadow-2-strong"
                        alt=""/>
                    <p class="text-center fs-5 fw-bold">LITERARIA</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.NEGRA %>">
                    <img src="/BookNBookServices/imagenes/imagenLibroProceso.jpg"
                    class="img-fluid rounded-4 shadow-2-strong"
                    alt=""/>
                    <p class="text-center fs-5 fw-bold">NEGRA</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.ROMANTICA %>">
                  <img src="/BookNBookServices/imagenes/imagenLibroNoLeido.jpg"
                    class="img-fluid rounded-4 shadow-2-strong"
                    alt=""/>
                  <p class="text-center fs-5 fw-bold">ROMANTICA</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.EROTICA %>">
                    <img src="/BookNBookServices/imagenes/imagenLibroLeido.jpg"
                        class="img-fluid rounded-4 shadow-2-strong"
                        alt=""/>
                    <p class="text-center fs-5 fw-bold">EROTICA</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.CIENCIAFICCION %>">
                    <img src="/BookNBookServices/imagenes/imagenLibroProceso.jpg"
                    class="img-fluid rounded-4 shadow-2-strong"
                    alt=""/>
                    <p class="text-center fs-5 fw-bold">CIENCIA FICCION</p>
                </a>
            </div>
            <div class="row">
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.TERROR %>">
                  <img src="/BookNBookServices/imagenes/imagenLibroNoLeido.jpg"
                    class="img-fluid rounded-4 shadow-2-strong"
                    alt=""/>
                  <p class="text-center fs-5 fw-bold">TERROR</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.FANTASIA %>">
                  <img src="/BookNBookServices/imagenes/imagenLibroNoLeido.jpg"
                    class="img-fluid rounded-4 shadow-2-strong"
                    alt=""/>
                  <p class="text-center fs-5 fw-bold">FANTASIA</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.TEMASOCIAL %>">
                    <img src="/BookNBookServices/imagenes/imagenLibroLeido.jpg"
                        class="img-fluid rounded-4 shadow-2-strong"
                        alt=""/>
                    <p class="text-center fs-5 fw-bold">TEMA SOCIAL</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.HUMOR %>">
                    <img src="/BookNBookServices/imagenes/imagenLibroProceso.jpg"
                    class="img-fluid rounded-4 shadow-2-strong"
                    alt=""/>
                    <p class="text-center fs-5 fw-bold">HUMOR</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.HISTORICA %>">
                    <img src="/BookNBookServices/imagenes/imagenLibroProceso.jpg"
                    class="img-fluid rounded-4 shadow-2-strong"
                    alt=""/>
                    <p class="text-center fs-5 fw-bold">HISTORICA</p>
                </a>
            </div>
          </div>
        </div>
        </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>