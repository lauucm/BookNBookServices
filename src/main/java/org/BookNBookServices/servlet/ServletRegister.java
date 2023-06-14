package org.BookNBookServices.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;
import org.BookNBookServices.client.UsuarioManager;
import org.BookNBookServices.dao.control.NoDataResponse;
import org.BookNBookServices.dao.control.RegisterDAO;
import org.BookNBookServices.dao.Usuario;
import org.BookNBookServices.service.RegisterService;
import org.BookNBookServices.service.impl.RegisterServiceImpl;

import java.io.IOException;

@WebServlet("/registerServlet")
@AllArgsConstructor
public class ServletRegister extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/jsp/registro.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {

        String nombreUsuario = req.getParameter("nombreUsuario");
        String primerApellido = req.getParameter("primerApellido");
        String segundoApellido = req.getParameter("segundoApellido");
        String emailUsuario = req.getParameter("emailUsuario").toLowerCase();
        String password = req.getParameter("password");

        RegisterDAO usuarioRegistrado = new RegisterDAO(nombreUsuario, primerApellido, segundoApellido, emailUsuario, password);

        RegisterService registerService = new RegisterServiceImpl(new UsuarioManager());

        if (usuarioRegistrado != null) {
            NoDataResponse response = registerService.existEmail(emailUsuario);
            if (response.getOk()) {
                req.setAttribute("error", response.getMessage());
                req.getRequestDispatcher("/BookNBookServices/jsp/registro.jsp").forward(req, resp);
            } else {
                Usuario usuario = new Usuario(usuarioRegistrado);
                NoDataResponse registerRespose = registerService.register(usuario);
                System.out.println("MENSAJE: " + registerRespose.getMessage().toString());
                if (registerRespose.getOk()) {
                    req.setAttribute("logro", registerRespose.getMessage());
                } else {
                    req.setAttribute("error", registerRespose.getMessage());
                }
                req.getSession().setMaxInactiveInterval(10);
                resp.sendRedirect("/BookNBookServices/jsp/registro.jsp");
            }
        }
    }

}
