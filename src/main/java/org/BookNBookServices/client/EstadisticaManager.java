package org.BookNBookServices.client;

import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.client.Client;
import jakarta.ws.rs.client.ClientBuilder;
import jakarta.ws.rs.client.Entity;
import jakarta.ws.rs.client.WebTarget;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lombok.AllArgsConstructor;
import org.BookNBookServices.dao.control.EstadisticaDAO;
import org.BookNBookServices.dao.control.NoDataResponse;

import java.time.LocalDate;

@AllArgsConstructor
public class EstadisticaManager {

    private final WebTarget webTarget;
    private final String pathEstadistica = "/estadistica";

    public EstadisticaManager() {
        Client client = ClientBuilder.newClient();
        this.webTarget = client.target("http://localhost:8082/BookNBook/api");
    }

    public NoDataResponse addEstadistica(EstadisticaDAO dato) {
        Response response = webTarget.path(pathEstadistica + "/add").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(dato, MediaType.APPLICATION_JSON));
        return response.readEntity(NoDataResponse.class);
    }

    public NoDataResponse updateFechaInicio(EstadisticaDAO dato) {
        Response response = webTarget.path(pathEstadistica + "/" + dato.getIdUsuario() + "/" + dato.getIdLibro() + "/updatefechaInicio").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(dato, MediaType.APPLICATION_JSON));
        return response.readEntity(NoDataResponse.class);
    }

    public NoDataResponse updateFechaFinal(EstadisticaDAO dato) {
        Response response = webTarget.path(pathEstadistica + "/" + dato.getIdUsuario() + "/" + dato.getIdLibro() + "/updatefechaFinal").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(dato, MediaType.APPLICATION_JSON));
        return response.readEntity(NoDataResponse.class);
    }
}