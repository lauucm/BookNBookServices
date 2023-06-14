<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<!-- SERVLET -->

        <div class="d-flex justify-content-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">
           <div class="row g-3">
               <form action="/BookNBookServices/registerServlet" method="POST" class="row g-3">
                  <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">REGISTRO</h3>
                    <div class="col-md-4">
                      <div class="form-outline">
                        <input type="text" id="nombreUsuario" name="nombreUsuario" class="form-control form-control-lg" required />
                        <label for="nombreUsuario" class="form-label">Nombre</label>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-outline">
                        <input type="text"  id="primerApellido" name="primerApellido" class="form-control form-control-lg" required />
                        <label for="primerApellido" class="form-label">Primer Apellido</label>
                      </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-outline">
                            <input type="text"  id="segundoApellido" name="segundoApellido" class="form-control form-control-lg"/>
                            <label for="segundoApellido" class="form-label">Segundo Apellido</label>
                        </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-outline">
                        <input type="email"  id="emailUsuario" name="emailUsuario" class="form-control form-control-lg" required />
                        <label for="emailUsuario" class="form-label">Email</label>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-outline">
                        <input type="password"  id="password" name="password" class="form-control form-control-lg" required />
                        <label for="password" class="form-label">Password</label>
                      </div>
                    </div>
                    <% if (request.getAttribute("error") != null) { %>
                        <p style="color:red"><%= request.getAttribute("error") %></p>
                    <% } else if (request.getAttribute("logro") != null) { %>
                        <p style="color:green"><%= request.getAttribute("logro") %></p>
                    <% }%>

                    <div class="col-13">
                      <input type="submit" value="Registrarse" class="btn btn-info btn-lg btn-block" style="background-color: #2fc0ca;">
                    </div>
               </form>
               <div>
                    <a href="/BookNBookServices/jsp/login.jsp"><button class="btn btn-info btn-lg btn-block" style="background-color: #2fc0ca;">Acceder</button></a>
               </div>
           </div>
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