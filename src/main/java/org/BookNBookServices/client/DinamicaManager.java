package org.BookNBookServices.client;

import jakarta.ws.rs.client.Client;
import jakarta.ws.rs.client.ClientBuilder;
import jakarta.ws.rs.client.Entity;
import jakarta.ws.rs.client.WebTarget;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lombok.AllArgsConstructor;
import org.BookNBookServices.dao.Dinamica;
import org.BookNBookServices.dao.control.DinamicaDAO;
import org.BookNBookServices.dao.control.NoDataResponse;

@AllArgsConstructor
public class DinamicaManager {

    private final WebTarget webTarget;
    private final String pathDinamica = "/dinamica";

    public DinamicaManager() {
        Client client = ClientBuilder.newClient();
        this.webTarget = client.target("http://localhost:8082/BookNBook/api");
    }

    public Dinamica getDinamica(DinamicaDAO dato){
        Response response = webTarget.path(pathDinamica + "/add").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(dato, MediaType.APPLICATION_JSON));
        return response.readEntity(Dinamica.class);
    }

    public NoDataResponse addDinamica(DinamicaDAO dato) {
        Response response = webTarget.path(pathDinamica + "/add").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(dato, MediaType.APPLICATION_JSON));
        return response.readEntity(NoDataResponse.class);
    }

    public NoDataResponse updatePag(DinamicaDAO dato) {
        Response response = webTarget.path(pathDinamica + "/update/paginas").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(dato, MediaType.APPLICATION_JSON));
        return response.readEntity(NoDataResponse.class);
    }

    public Integer paginasLeidas(Integer idUsuario){
        Response response = webTarget.path(pathDinamica + "/" + idUsuario + "/paginas").request(MediaType.APPLICATION_JSON)
                .get();
        Integer body = response.readEntity(Integer.class);
        return body;
    }

}
