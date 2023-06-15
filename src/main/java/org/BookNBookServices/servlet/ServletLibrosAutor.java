package org.BookNBookServices.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;
import org.BookNBookServices.client.AutorManager;
import org.BookNBookServices.dao.Libro;
import org.BookNBookServices.service.AutorService;
import org.BookNBookServices.service.impl.AutorServiceImpl;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/LibrosAutorServlet")
@AllArgsConstructor
public class ServletLibrosAutor extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        AutorService servicio = new AutorServiceImpl(new AutorManager());

        Integer id = Integer.valueOf(req.getParameter("id"));

        ArrayList<Libro> listado = servicio.getLibrosAutor(id).getListado();

        req.getSession().setAttribute("listadoLibros", listado);
        resp.sendRedirect("/BookNBookServices/jsp/comun/lecturas/listado.jsp");

    }

}
