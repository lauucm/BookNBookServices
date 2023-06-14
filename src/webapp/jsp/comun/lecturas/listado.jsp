<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="org.BookNBookServices.dao.Libro" %>
<%@ page import="java.util.ArrayList" %>

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

    <!-- LISTADO -->
    <%ArrayList<Libro> listadoLibros = (ArrayList<Libro>) request.getSession().getAttribute("listadoLibros");
        if(listadoLibros != null && listadoLibros.size() > 0) {%>
        <%for (Libro libro : listadoLibros) {%>
             <div class="d-flex justify-content-center">
                <div class="w-50 h-50">
                    <div class="card mb-3">
                          <div class="row g-0">
                            <div class="col-md-4">
                              <a href="/BookNBookServices/libroDetalleServlet?idLibro=<%= libro.getId()%>"><img src=<%= libro.getUrl() %> class="card-img-top rounded" alt=""></a>
                            </div>
                            <div class="col-md-8">
                              <div class="card-body">
                                <h2 class="card-title"><%= libro.getNombre() %></h2>
                                <h4 class="card-text"><%= libro.getAutor().getPseudonimo() %></h4>
                                <p class="card-text"><%= libro.getDescripcion() %></p>
                                <p class="card-text"><small class="text-muted"><%=libro.getFechaPublicacion()%></small></p>
                              </div>
                            </div>
                          </div>
                    </div>
                </div>
             </div>
        <% }
    }%>
</body>
</html>