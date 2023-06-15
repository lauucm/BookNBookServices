package org.BookNBookServices.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;
import org.BookNBookServices.client.EstadisticaManager;
import org.BookNBookServices.dao.control.EstadisticaDAO;
import org.BookNBookServices.dao.control.EstadisticaSinFechaDAO;
import org.BookNBookServices.dao.control.UsuarioLogged;
import org.BookNBookServices.service.EstadisticaService;
import org.BookNBookServices.service.impl.EstadisticaServiceImpl;

import java.io.IOException;

@WebServlet("/addLibroUsuarioServlet")
@AllArgsConstructor
public class ServletAddLibroUsuario extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws
            ServletException,
            IOException {

        UsuarioLogged usuarioLogged = (UsuarioLogged) req.getSession().getAttribute("userLogin");
        Integer idLibro = Integer.valueOf(req.getParameter("idLibro"));
        EstadisticaService service = new EstadisticaServiceImpl(new EstadisticaManager());

        try{
            if (usuarioLogged.getId() != null && idLibro != null){
                Integer idUsuario = usuarioLogged.getId();

                EstadisticaSinFechaDAO estadistica = new EstadisticaSinFechaDAO(idUsuario, idLibro);
                System.out.println(estadistica.getIdUsuario().toString());
                System.out.println(estadistica.getIdLibro().toString());
                service.addEstadistica(estadistica);
                resp.sendRedirect("/BookNBookServices/libroDetalleServlet?idLibro=" + idLibro);
            } else {
                req.setAttribute("error", "Fallo al añadir el libro");
                req.getRequestDispatcher("/jsp/comun/menus/descubrirLecturas.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            req.setAttribute("error","");
            req.getRequestDispatcher("/jsp/comun/menus/descubrirLecturas.jsp").forward(req, resp);
        }
    }

}
