package org.BookNBookServices.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;
import org.BookNBookServices.client.LibroManager;
import org.BookNBookServices.dao.Libro;
import org.BookNBookServices.service.LibroService;
import org.BookNBookServices.service.impl.LibroServiceImpl;

import java.io.IOException;

@WebServlet("/libroDetalleServlet")
@AllArgsConstructor
public class ServletLibroDetalle extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        LibroService servicio = new LibroServiceImpl(new LibroManager());
        Integer idLibro = Integer.valueOf(req.getParameter("idLibro"));

        try{
            Libro libro = servicio.buscarLibro(idLibro);
            if(libro != null) {
                req.setAttribute("libroBuscado", libro);
                req.getRequestDispatcher("/jsp/comun/lecturas/libroDetalle.jsp").forward(req, resp);
            } else {
                resp.sendRedirect("/BookNBookServices/jsp/comun/paginas/paginaPrincipal.jsp");
            }
        } catch (Exception e){
            System.out.println(e.getMessage());
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws
            ServletException,
            IOException {

        LibroService servicio = new LibroServiceImpl(new LibroManager());
        Libro libroBuscado = null;
        try {
            //TODO CALIFICACION DEL USUARIO?
            libroBuscado = servicio.buscarLibro(2);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            req.setAttribute("error", " ");
            req.getRequestDispatcher("/jsp/comun/paginas/paginaPrincipal").forward(req, resp);
        }
    }
}
