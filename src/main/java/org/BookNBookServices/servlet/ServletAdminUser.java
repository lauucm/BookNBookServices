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

            ArrayList<Usuario> users = servicio.listarUsuarios().getListado();

            users.removeIf(u -> (u.getTipoUsuario().equals(TipoUsuario.ADMINISTRADOR.toString())));

            for (Usuario u: users
                 ) {
                System.out.println(u.getTipoUsuario().toString());
            }

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
            NoDataResponse isDelete = servicio.deleteUsuario(deleteId);
            System.out.println(isDelete.getOk().toString());
            resp.sendRedirect("/BookNBookServices/adminPaginaServlet");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
