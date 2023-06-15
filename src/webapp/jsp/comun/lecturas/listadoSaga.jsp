<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="org.BookNBookServices.dao.Saga" %>
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
        <%ArrayList<Saga> listadoSaga = (ArrayList<Saga>) request.getSession().getAttribute("listadoSaga");
                if(listadoSaga != null && listadoSaga.size() > 0) {%>
                <%for (Saga saga : listadoSaga) {%>
                <div clas"w-50 justify-content-center">
                    <ul class="list-group">
                         <a href="/BookNBookServices/LibrosSagaServlet?id=<%=saga.getId()%>">
                               <li class="list-group-item"><p class="text-center"><%= saga.getNombre() %></p></li>
                         </a>
                     </ul>
                </div>
                <% }
            }%>
</body>
</html>