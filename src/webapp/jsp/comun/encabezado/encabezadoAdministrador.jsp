<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- BARRA DE NAVEGACION -->
    <nav class="navbar navbar-expand-lg sticky-top navbar-light" style="background-color: #c0ecef;">
      <div class="container-fluid">
        <a class="navbar-brand" href="/BookNBookServices/jsp/comun/paginas/paginaAdministrador.jsp"><i class="fa-solid fa-book-open" style="color: #2fc0ca;"></i></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div>
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link fw-bold" href="/BookNBookServices/adminPaginaServlet">Usuarios</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link fw-bold" href="">Libros</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fw-bold" href="">Autores</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fw-bold" href="">Sagas</a>
                </li>
                <div>
                    <ul class="navbar-nav me-auto btn-group dropend">
                        <li class="nav-item dropdown">
                          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fa-solid fa-user" style="color: #2fc0ca;"></i>
                          </a>
                          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <form method="POST" action="/BookNBookServices/logoutServlet">
                                <li><input class="dropdown-item" type="submit" value="Cerrar Sesion"></li>
                            </form>
                          </ul>
                        </li>
                    </ul>
                </div>
              </ul>
            </div>
        </div>
      </div>
</nav>