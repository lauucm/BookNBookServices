<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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

    <!-- MENU: FILTROS -->
    <div class="container">
    <div class="m-5 ">
      <!--Grid row-->
      <div class="row">
        <!--Grid column-->
        <div class="col-lg-4 col-md-12 mb-4">
            <a style="text-decoration:none; color: black;" href="/BookNBookServices/listadoAutorServlet">
                <img src="https://th.bing.com/th/id/OIP.cZw6VByXbyYcryyoMbjzswHaHa?pid=ImgDet&w=488&h=488&rs=1"
                    class="img-fluid rounded-4 shadow-2-strong"
                    alt="Autores"/>
                <p class="text-center fs-5 fw-bold">Autores</p>
            </a>
        </div>
        <!--Grid column-->
        <div class="col-lg-4 col-md-6 mb-4">
            <a style="text-decoration:none; color: black;" href="/BookNBookServices/jsp/comun/lecturas/libroTematica.jsp">
                <img src="https://th.bing.com/th/id/OIP.gAD1k6LYONSZdu9xl5BZcAHaHW?pid=ImgDet&w=768&h=762&rs=1"
                class="img-fluid rounded-4 shadow-2-strong"
                alt="Tematica"/>
                <p class="text-center fs-5 fw-bold">Tematica</p>
            </a>
        </div>
        <!--Grid column-->
        <div class="col-lg-4 col-md-6 mb-4">
            <a style="text-decoration:none; color: black;" href="/BookNBookServices/listadoSagasServlet">
              <img src="https://cdn1.colorstore.nl/uploads/webshop/7417/caselio-69867717-effen-donkergroen-behang-collectie-jungle.jpg"
                class="img-fluid rounded-4 shadow-2-strong"
                alt="Sagas"/>
              <p class="text-center fs-5 fw-bold">Sagas</p>
            </a>
        </div>
      </div>
    </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>