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

@WebServlet("/sugerenciaServlet")
@AllArgsConstructor
public class ServletSugerencias extends HttpServlet{


}
