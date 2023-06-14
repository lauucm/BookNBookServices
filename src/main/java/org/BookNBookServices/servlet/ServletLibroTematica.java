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
import java.util.ArrayList;

@WebServlet("/libroTematicaServlet")
@AllArgsConstructor
public class ServletLibroTematica extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        LibroService servicio = new LibroServiceImpl(new LibroManager());

        String tematica = req.getParameter("tematica");

        ArrayList<Libro> listado = servicio.listarLibrosTipoGenero(tematica).getListado();

        req.getSession().setAttribute("listadoLibros", listado);
        resp.sendRedirect("/BookNBookServices/jsp/comun/lecturas/listado.jsp");

    }

}
