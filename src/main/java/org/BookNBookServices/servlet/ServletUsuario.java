package org.BookNBookServices.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;
import org.BookNBookServices.client.DinamicaManager;
import org.BookNBookServices.client.LibroManager;
import org.BookNBookServices.client.UsuarioManager;
import org.BookNBookServices.dao.Usuario;
import org.BookNBookServices.dao.control.UsuarioLogged;
import org.BookNBookServices.service.DinamicaService;
import org.BookNBookServices.service.LibroService;
import org.BookNBookServices.service.UsuarioService;
import org.BookNBookServices.service.impl.DinamicaServiceImpl;
import org.BookNBookServices.service.impl.LibroServiceImpl;
import org.BookNBookServices.service.impl.UsuarioServiceImpl;

import java.io.IOException;

@WebServlet("/usuarioServlet")
@AllArgsConstructor
public class ServletUsuario extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        UsuarioService service = new UsuarioServiceImpl(new UsuarioManager());
        DinamicaService serviceD = new DinamicaServiceImpl(new DinamicaManager());
        LibroService serviceL = new LibroServiceImpl(new LibroManager());
        try{
            UsuarioLogged usuarioLogged = (UsuarioLogged) request.getSession().getAttribute("userLogin");

            Usuario usuarioMostrar = service.getUsuario(usuarioLogged.getId());
            //String paginas = String.valueOf(serviceD.paginasLeidas(usuarioLogged.getId()));
            String libros = String.valueOf(serviceL.contarLibrosLeidos(usuarioLogged.getId()));
            //System.out.println(paginas);
            System.out.println(libros);

            if(usuarioMostrar != null){
                request.getSession().setAttribute("usuarioMostrar", usuarioMostrar);
                //request.getSession().setAttribute("paginasLeidas", paginas);
                request.getSession().setAttribute("librosLeidos", libros);
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
