package org.BookNBookServices.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;
import org.BookNBookServices.client.UsuarioManager;
import org.BookNBookServices.dao.Usuario;
import org.BookNBookServices.dao.control.UsuarioLogged;
import org.BookNBookServices.service.UsuarioService;
import org.BookNBookServices.service.impl.UsuarioServiceImpl;

import java.io.IOException;

@WebServlet("/usuarioServlet")
@AllArgsConstructor
public class ServletUsuario extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        UsuarioService service = new UsuarioServiceImpl(new UsuarioManager());

        try{
            UsuarioLogged usuarioLogged = (UsuarioLogged) request.getSession().getAttribute("userLogin");

            Usuario usuarioMostrar = service.getUsuario(usuarioLogged.getId());

            if(usuarioMostrar != null){
                request.getSession().setAttribute("usuarioMostrar", usuarioMostrar);
                response.sendRedirect("/BookNBookServices/jsp/comun/paginas/paginaUsuario.jsp");
            } else {
                System.out.println("ELSE");
                response.sendRedirect("/BookNBookServices/jsp/comun/paginas/paginaPrincipal.jsp");
            }

        } catch (Exception e){
            System.out.println(e.getMessage());
            request.getRequestDispatcher("/jsp/comun/paginas/paginaPrincipal.jsp").forward(request, response);
        }
    }
}
