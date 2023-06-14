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

@WebServlet("/cartasLibroServlet")
@AllArgsConstructor
public class ServletCartasLibro extends HttpServlet{

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        LibroService servicio = new LibroServiceImpl(new LibroManager());

        try{
            ArrayList<Libro> listado = servicio.listarLibros().getListado();
            ArrayList<Libro> listadoLibros = servicio.listadoCartaLibros(listado);

            request.getSession().setAttribute("listadoLibros", listadoLibros);
            response.sendRedirect("/BookNBookServices/jsp/comun/paginas/paginaPrincipal.jsp");
        } catch (Exception e){
            System.out.println(e.getMessage());
        }

    }
}
