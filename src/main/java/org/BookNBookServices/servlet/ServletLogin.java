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

        // Recuperamos parametros de la entrada
        String usuario = req.getParameter("user");
        String password = req.getParameter("password");
        LoginDAO user = new LoginDAO(usuario, password);
        //Se valida si los parametros coinciden con las credenciales
        Usuario usuarioLogged = login.login(user);
        if(usuarioLogged!= null && usuarioLogged.getId()!=null){
            UsuarioLogged usuSesion = new UsuarioLogged(usuarioLogged.getId(), usuarioLogged.getEmail(),
                    usuarioLogged.getTipoUsuario().toString());
            req.getSession().setAttribute("userLogin", usuSesion);
            //Se indica el tiempo de expiración de la sesion
            req.getSession().setMaxInactiveInterval(10);
            //Redirigimos a pagina homePage.jsp utilizando el metodo "sendRedirect" del objeto de respuesta
            resp.sendRedirect("/BookNBookApi/webapp/paginaPrincipal.jsp");
        } else {
            //Se indica mensaje de error en los atributos de la solicitud
            req.setAttribute("error","Error al validar usuario y contraseña");

            //Indicamos al dispatcher que haga un forward de la solicitud. Tener en cuenta que esta solicitud es la
            //recibida en este servlet mas los parametros indicados en los atributos.
            req.getRequestDispatcher("/BookNBookApi/webapp/index.jsp").forward(req,resp);
        }

    }

}