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
                    <img src="https://th.bing.com/th/id/OIP.gUgqUVctqjLA2G1jGvrHUAHaHa?pid=ImgDet&w=300&h=300&rs=1"
                        class="img-fluid rounded-4 shadow-2-strong"
                        alt=""/>
                    <p class="text-center fs-5 fw-bold">LITERARIA</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.NEGRA %>">
                    <img src="https://yt3.ggpht.com/a/AATXAJyFfn5kOfWRm617CSGL3Dzlgf9eY9RnCNbPdQ=s900-c-k-c0xffffffff-no-rj-mo"
                    class="img-fluid rounded-4 shadow-2-strong"
                    alt=""/>
                    <p class="text-center fs-5 fw-bold">NEGRA</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.ROMANTICA %>">
                  <img src="https://i.pinimg.com/originals/fd/d0/4f/fdd04ff2c69188519387413e0c392a87.png"
                    class="img-fluid rounded-4 shadow-2-strong"
                    alt=""/>
                  <p class="text-center fs-5 fw-bold">ROMANTICA</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.EROTICA %>">
                    <img src="https://th.bing.com/th/id/OIP.m76jEuB_2rJZ2I_lH1EaegHaHZ?pid=ImgDet&rs=1"
                        class="img-fluid rounded-4 shadow-2-strong"
                        alt=""/>
                    <p class="text-center fs-5 fw-bold">EROTICA</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.CIENCIAFICCION %>">
                    <img src="https://image.freepik.com/vector-gratis/vintage-vector-astronauta-espacio-planeta-estrellas-ciencia-ficcion-ilustracion-dibujada-mano_142846-54.jpg"
                    class="img-fluid rounded-4 shadow-2-strong"
                    alt=""/>
                    <p class="text-center fs-5 fw-bold">CIENCIA FICCION</p>
                </a>
            </div>
            <div class="row">
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.TERROR %>">
                  <img src="https://javierbanchii.files.wordpress.com/2016/01/miedo-cuadrado.jpg"
                    class="img-fluid rounded-4 shadow-2-strong"
                    alt=""/>
                  <p class="text-center fs-5 fw-bold">TERROR</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.FANTASIA %>">
                  <img src="https://th.bing.com/th/id/OIP.4dFTeSFFW_lNUEq4pnZWWgAAAA?pid=ImgDet&w=373&h=372&rs=1"
                    class="img-fluid rounded-4 shadow-2-strong"
                    alt=""/>
                  <p class="text-center fs-5 fw-bold">FANTASIA</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.TEMASOCIAL %>">
                    <img src="https://th.bing.com/th/id/OIP.dI5I48Rr0iQYwRRcUw_CDwHaHa?pid=ImgDet&rs=1"
                        class="img-fluid rounded-4 shadow-2-strong"
                        alt=""/>
                    <p class="text-center fs-5 fw-bold">TEMA SOCIAL</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.HUMOR %>">
                    <img src="https://animeshop.co.il/wp-content/uploads/2021/06/%D7%97%D7%A0%D7%95%D7%AA-%D7%90%D7%A0%D7%99%D7%9E%D7%94-1-768x763.png"
                    class="img-fluid rounded-4 shadow-2-strong"
                    alt=""/>
                    <p class="text-center fs-5 fw-bold">HUMOR</p>
                </a>
            </div>
            <!--Grid column-->
            <div class="col">
                <a style="text-decoration:none; color: black;" href="/BookNBookServices/libroTematicaServlet?tematica=<%= TematicaLibro.HISTORICA %>">
                    <img src="https://media.istockphoto.com/vectors/hourglass-drawing-vector-id1160025060?k=6&m=1160025060&s=612x612&w=0&h=GEFhLW447savt6-BZkMjLFk4ClQKsnFFVBNtWH83sg8="
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