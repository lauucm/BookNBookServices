<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Book N Book: Acceso</title>
	<meta charset="UTF-8">
    <link href="/BookNBookServices/css/bookNBookCss.css" rel="stylesheet" type="text/css">
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

<!-- SERVLET -->
              <form action="/BookNBookServices/loginServlet" method="POST" style="width: 23rem;">

                <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">ACCESO</h3>

                <div class="form-outline mb-4">
                  <input type="email" id="user" name="user" class="form-control form-control-lg" />
                  <label class="form-label" for="user">Email</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="password" id="password" name="password" class="form-control form-control-lg" />
                  <label class="form-label" for="password">Password</label>
                </div>

                <% if (request.getAttribute("error") != null) { %>
                      <p style="color:red"><%= request.getAttribute("error") %></p>
                <% } %>

                <div class="pt-1 mb-4">
                  <input type="submit" value="Acceder" class="btn btn-info btn-lg btn-block" style="background-color: #2fc0ca;"/>
                </div>

                <p>Si no tienes una cuenta: <a href="/BookNBookServices/jsp/registro.jsp" class="link-info">Registrare aqui!</a></p>

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