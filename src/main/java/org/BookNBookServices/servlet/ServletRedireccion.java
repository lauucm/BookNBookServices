package org.BookNBookServices.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/redirServlet")
public class ServletRedireccion extends HttpServlet{

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Obtener el valor del botón de tipo submit
        String submitValue = request.getParameter("submitBtn");

        // Verificar si el botón de tipo submit tiene el valor "Ir a"
        if ("Ir a".equals(submitValue)) {
            response.sendRedirect("/jsp/login.jsp");
        }
    }
}
