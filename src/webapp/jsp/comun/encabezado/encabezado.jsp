<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- BARRA DE NAVEGACION -->
    <nav class="navbar navbar-expand-lg sticky-top navbar-light" style="background-color: #c0ecef;">
      <div class="container-fluid">
        <a class="navbar-brand" href="#"><i class="fa-solid fa-book-open" style="color: #2fc0ca;"></i></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div>
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link fw-bold" aria-current="page" href="/BookNBookServices/cartasLibroServlet">Principal</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link fw-bold" href="/BookNBookServices/jsp/comun/menus/descubrirLecturas.jsp">Descubrir</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fw-bold" href="/BookNBookServices/jsp/comun/menus/menuLecturas.jsp">Mis Lecturas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled fw-bold" href="#" tabindex="-1" aria-disabled="true">Estadisticas...</a>
                </li>
            </div>
            <div>
                <ul class="navbar-nav me-auto btn-group dropend">
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fa-solid fa-user" style="color: #2fc0ca;"></i>
                      </a>
                      <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="/BookNBookServices/usuarioServlet">Mi usuario</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="/BookNBookServices/jsp/comun/paginas/paginaSugerencias.jsp">Sugerencias</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <form method="POST" action="/BookNBookServices/logoutServlet">
                            <li><input class="dropdown-item" type="submit" value="Cerrar Sesion"></li>
                        </form>
                      </ul>
                    </li>
                </ul>
              </ul>
            </div>
        </div>
      </div>
</nav>