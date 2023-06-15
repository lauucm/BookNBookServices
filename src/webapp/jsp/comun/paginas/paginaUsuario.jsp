<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="org.BookNBookServices.dao.Usuario" %>

<html>
<head>
    <title>Book N Book: Descubrir</title>
	<meta charset="UTF-8">
    <script src="https://use.fontawesome.com/releases/v5.12.0/js/all.js" data-auto-replace-svg="nest"></script>
    <script src="https://kit.fontawesome.com/6c0d70b43d.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <%@ include file="../encabezado/encabezado.jsp" %>

    <!-- USUARIO -->
    <%Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioMostrar");%>
    <section class="vh-100" style="background-color: #C0ECEF;">
      <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="col col-lg-6 mb-4 mb-lg-0">
            <div class="card mb-3" style="border-radius: .5rem;">
              <div class="row g-0">
                <div class="col-md-4 gradient-custom text-center text-white"
                  style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
                  <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                    alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
                  <h5 style="color: #2fc0ca;"><%= usuario.getNombre() %></h5>
                  <p style="color: #2fc0ca;"><%= usuario.getApellido1() %> <%= usuario.getApellido2() %></p>
                  <i class="far fa-edit mb-5"></i>
                </div>
                <div class="col-md-8">
                  <div class="card-body p-4">
                    <h6 style="color: #2fc0ca;">DATOS PERSONALES</h6>
                    <hr class="mt-0 mb-4">
                    <div class="row pt-1">
                      <div class="col-6 mb-3">
                        <h6>CORREO</h6>
                        <p class="text-muted"> <%= usuario.getEmail() %></p>
                      </div>
                      <div class="col-6 mb-3">
                        <h6>CONTRASEÑA</h6>
                        <p class="text-muted">********</p>
                      </div>
                    </div>
                    <h6 style="color: #2fc0ca;">INFORMACION</h6>
                    <hr class="mt-0 mb-4">
                    <div class="row pt-1">
                      <div class="col-6 mb-3">
                        <h6>Libros leidos</h6>
                        <p class="text-muted"><%= request.getSession().getAttribute("librosLeidos")%></p>
                      </div>
                      <div class="col-6 mb-3">
                        <h6>Paginas leidas</h6>
                        <p class="text-muted"><%= request.getSession().getAttribute("paginasLeidas")%></p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>