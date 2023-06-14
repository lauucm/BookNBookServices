package org.BookNBookServices.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;
import org.BookNBookServices.client.UsuarioManager;
import org.BookNBookServices.dao.TipoUsuario;
import org.BookNBookServices.dao.Usuario;
import org.BookNBookServices.dao.control.LoginDAO;
import org.BookNBookServices.dao.control.UsuarioLogged;
import org.BookNBookServices.service.LoginService;
import org.BookNBookServices.service.impl.LoginServiceImpl;

import java.io.IOException;

@WebServlet("/loginServlet")
@AllArgsConstructor
public class ServletLogin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/jsp/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws
            ServletException,
            IOException {

        LoginService login = new LoginServiceImpl(new UsuarioManager());
        Usuario usuarioLogged = null;
        try {
            // Recuperamos parametros de la entrada
            String email = req.getParameter("user").toLowerCase();
            String password = req.getParameter("password");
            LoginDAO user = new LoginDAO(email, password);

            //Se valida si los parametros coinciden con las credenciales
            usuarioLogged = login.login(user);
            if (usuarioLogged != null && usuarioLogged.getId() != null) {
                UsuarioLogged usuSesion = new UsuarioLogged(usuarioLogged.getId(), usuarioLogged.getEmail(),
                        usuarioLogged.getTipoUsuario().toString());
                req.getSession().setAttribute("userLogin", usuSesion);

                req.getSession().setMaxInactiveInterval(500);

                if (usuSesion.getTipoUsuario().equals(TipoUsuario.ADMINISTRADOR.toString())){
                    resp.sendRedirect("/BookNBookServices/jsp/comun/paginas/paginaAdministrador.jsp");
                } else {
                    resp.sendRedirect("/BookNBookServices/cartasLibroServlet");
                }
            } else {
                req.setAttribute("error", usuarioLogged.getMessage());
                req.getRequestDispatcher("/jsp/login.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            req.setAttribute("error", usuarioLogged.getMessage());
            req.getRequestDispatcher("/jsp/login.jsp").forward(req, resp);
        }
    }
}