package org.BookNBookServices.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;
import org.BookNBookServices.client.AutorManager;
import org.BookNBookServices.client.LibroManager;
import org.BookNBookServices.dao.Autor;
import org.BookNBookServices.dao.Libro;
import org.BookNBookServices.service.AutorService;
import org.BookNBookServices.service.LibroService;
import org.BookNBookServices.service.impl.AutorServiceImpl;
import org.BookNBookServices.service.impl.LibroServiceImpl;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/listadoAutorServlet")
@AllArgsConstructor
public class ServletListadoAutor extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        AutorService servicio = new AutorServiceImpl(new AutorManager());

        ArrayList<Autor> listado = servicio.getAutores().getListado();

        req.getSession().setAttribute("listadoAutor", listado);
        resp.sendRedirect("/BookNBookServices/jsp/comun/lecturas/listadoAutor.jsp");

    }

}
