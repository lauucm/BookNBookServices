package org.BookNBookServices.web.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
        name="ServletLogin",
        urlPatterns="/servlet-login")
public class ServletLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws
            ServletException,
            IOException {

        // Recuperamos parametros de la entrada
        String usuario = req.getParameter("user");
        String password = req.getParameter("password");

        //Se valida si los parametros coinciden con las credenciales
        if(usuario.equals("admin") && password.equals("123456")){
            //Se crea usuario con los datos de los parametros
            //Usuario user = Usuario.builder().usuario(usuario).password(password).build();

            //Se asocia el objeto a la sesion
            //req.getSession().setAttribute("userLogin", user);
            //Se indica el tiempo de expiración de la sesion
            //req.getSession().setMaxInactiveInterval(10);

            //Redirigimos a pagina homePage.jsp utilizando el metodo "sendRedirect" del objeto de respuesta
            resp.sendRedirect("/BookNBookServices/webapp/paginaPrincipal.jsp");
        } else {
            //Se indica mensaje de error en los atributos de la solicitud
            req.setAttribute("error","Error al validar usuario y contraseña");

            //Indicamos al dispatcher que haga un forward de la solicitud. Tener en cuenta que esta solicitud es la
            //recibida en este servlet mas los parametros indicados en los atributos.
            req.getRequestDispatcher("/BookNBookServices/webapp/index.jsp").forward(req,resp);
        }

    }

}