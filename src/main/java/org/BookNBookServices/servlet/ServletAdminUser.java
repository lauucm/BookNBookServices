package org.BookNBookServices.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;
import org.BookNBookServices.client.AdministradorManager;
import org.BookNBookServices.dao.TipoUsuario;
import org.BookNBookServices.dao.Usuario;
import org.BookNBookServices.dao.control.NoDataResponse;
import org.BookNBookServices.service.AdministradorService;
import org.BookNBookServices.service.impl.AdministradorServiceImpl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet("/adminPaginaServlet")
@AllArgsConstructor
public class ServletAdminUser extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        AdministradorService servicio = new AdministradorServiceImpl(new AdministradorManager());

        try{
            Boolean delete = Boolean.parseBoolean(req.getParameter("delete"));

            if(delete){
                doPost(req, resp);
            }

            List<Usuario> users = servicio.listarUsuarios().getListado();


            users = users.stream().filter(u -> !TipoUsuario.ADMINISTRADOR.toString().equals(u.getTipoUsuario().toString())).collect(Collectors.toList());

            req.getSession().setAttribute("listadoUsuarios", users);
            resp.sendRedirect("/BookNBookServices/jsp/comun/menus/administradorUsuarios.jsp");

        } catch (Exception e){
            System.out.println(e.getMessage());
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        AdministradorService servicio = new AdministradorServiceImpl(new AdministradorManager());
        try {
            Integer deleteId = Integer.parseInt(req.getParameter("idUsuario"));
            servicio.deleteUsuario(deleteId);
            resp.sendRedirect("/BookNBookServices/adminPaginaServlet");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
