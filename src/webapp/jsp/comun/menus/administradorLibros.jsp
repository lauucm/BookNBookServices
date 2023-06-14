<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="org.BookNBookServices.dao.Libro" %>
<%@ page import="java.util.ArrayList" %>

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

    <div>
        <form action="/BookNBookServices/addLibroUsuarioServlet?idLibro=<%= libro.getId() %>" method="POST">
            <div class="m-5">
                <input type="submit" value="Añadir" class="btn btn-info btn-lg btn-block" style="background-color: #2fc0ca;"/>
            </div>
        </form>
    </div>

    <table class="table">
      <thead>
        <tr>
          <th scope="col">Nombre</th>
          <th scope="col">Autor</th>
          <th scope="col">Borrar</th>
        </tr>
      </thead>
      <tbody>
      <%ArrayList<Libro> listado = (ArrayList<Libro>) request.getSession().getAttribute("listadoLibro");
              if(listado != null && listado.size() > 0) {%>
                <%for (Libro libro : listado) {%>
                      <tr>
                        <td><%= libro.getNombre().toUpperCase()%></td>
                        <td><%= libro.getAutor().getNombre()%></td>
                        <td><a href="/BookNBookServices/adminLibroServlet?delete=true&idLibro=<=%libro.getId()%>"><i class="fa-solid fa-trash" style="color: #000000;"></i></a></td>
                      </tr>
                <% }
              } %>
      </tbody>
    </table>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>