package org.BookNBookServices.servlet;

import lombok.AllArgsConstructor;
import org.BookNBookServices.dao.LoginDAO;
import org.BookNBookServices.dao.Usuario;
import org.BookNBookServices.dao.UsuarioLogged;
import org.BookNBookServices.service.LoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@AllArgsConstructor
@WebServlet(
        name="ServletLogin",
        urlPatterns="/servlet-login")
public class ServletLogin extends HttpServlet {

    private LoginService login;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws
            ServletException,
            IOException {
        try {
            // Recuperamos parametros de la entrada
            String email = req.getParameter("user");
            String password = req.getParameter("password");
            LoginDAO user = new LoginDAO(email, password);

            //Se valida si los parametros coinciden con las credenciales
            Usuario usuarioLogged = login.login(user);
            if (usuarioLogged != null && usuarioLogged.getId() != null) {
                UsuarioLogged usuSesion = new UsuarioLogged(usuarioLogged.getId(), usuarioLogged.getEmail(),
                        usuarioLogged.getTipoUsuario().toString());
                req.getSession().setAttribute("userLogin", usuSesion);

                req.getSession().setMaxInactiveInterval(10);

                resp.sendRedirect("/BookNBookServices/jsp/paginas/paginaPrincipal.jsp");
            } else {
                req.setAttribute("ERROR.", "Error al validar usuario y contraseña");
                req.getRequestDispatcher("/BookNBookServices/index.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            req.setAttribute("ERROR.", "Usuario no encontrado.");
            req.getRequestDispatcher("/BookNBookServices/index.jsp").forward(req, resp);

        }
    }
}