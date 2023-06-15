package org.BookNBookServices.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;
import org.BookNBookServices.client.AdministradorManager;;
import org.BookNBookServices.dao.Usuario;
import org.BookNBookServices.dao.control.NoDataResponse;
import org.BookNBookServices.service.AdministradorService;
import org.BookNBookServices.service.impl.AdministradorServiceImpl;

import java.io.IOException;
import java.util.List;

@WebServlet("/adminLibroServlet")
@AllArgsConstructor
public class ServletAdminLibro extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {

    }
}
