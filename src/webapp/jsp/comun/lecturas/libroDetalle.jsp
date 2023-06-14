<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="org.BookNBookServices.dao.Libro" %>

<html lang="es">
<head>
    <title>Book N Book</title>
	<meta charset="UTF-8">
    <script src="https://use.fontawesome.com/releases/v5.12.0/js/all.js" data-auto-replace-svg="nest"></script>
    <script src="https://kit.fontawesome.com/6c0d70b43d.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

    <%@ include file="../encabezado/encabezado.jsp" %>

    <!-- LIBRO -->
    <% Libro libro = (Libro) request.getAttribute("libroBuscado");%>

    <div class="card mb-3">
      <div class="row g-0">
        <div class="col-md-4">
          <img src=<%= libro.getUrl()%> class="img-fluid rounded-start" alt="...">
        </div>
        <div class="col-md-6">
          <div class="card-body">
            <h2 class="card-title"><%= libro.getNombre() %></h2>
            <h4 class="card-text"><%= libro.getAutor().getPseudonimo() %></h4>
            <p class="card-text"><em><%= libro.getTipologiaLibro() %> - <%= libro.getTematicaLibro() %></em></p>
            <p class="card-text">Paginas: <%= libro.getPaginaTotal() %></p>
            <p class="card-text">Valoracion media: <%= libro.getCalificacionMedia() %></p>
            <p class="card-text"><%= libro.getDescripcion() %></p>
            <p class="card-text"><small class="text-muted"><%=libro.getFechaPublicacion()%></small></p>
          </div>
        </div>
        <div class="col-2 add">
            <form action="/BookNBookServices/addLibroUsuarioServlet?idLibro=<%= libro.getId() %>" method="POST">
                <div class="m-5">
                    <input type="submit" value="Añadir" class="btn btn-info btn-lg btn-block" style="background-color: #2fc0ca;"/>
                </div>
            </form>
        </div>
        <div class="col-2 add">
            <form action="/BookNBookServices/addLeidoUsuarioServlet?idLibro=<%= libro.getId() %>" method="POST">
                <div class="m-5">
                    <input type="submit" value="Añadir como leido" class="btn btn-info btn-lg btn-block" style="background-color: #2fc0ca;"/>
                </div>
            </form>
        </div>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>