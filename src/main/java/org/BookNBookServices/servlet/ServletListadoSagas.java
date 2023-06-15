package org.BookNBookServices.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;
import org.BookNBookServices.client.SagaManager;
import org.BookNBookServices.dao.Saga;
import org.BookNBookServices.service.SagaService;
import org.BookNBookServices.service.impl.SagaServiceImpl;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/listadoSagasServlet")
@AllArgsConstructor
public class ServletListadoSagas extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        SagaService servicio = new SagaServiceImpl(new SagaManager());

        ArrayList<Saga> listado = servicio.listarSaga().getListado();

        req.getSession().setAttribute("listadoSaga", listado);
        resp.sendRedirect("/BookNBookServices/jsp/comun/lecturas/listadoSaga.jsp");

    }

}
