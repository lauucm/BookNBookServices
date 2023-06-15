package org.BookNBookServices.client;

import jakarta.ws.rs.client.Client;
import jakarta.ws.rs.client.ClientBuilder;
import jakarta.ws.rs.client.Entity;
import jakarta.ws.rs.client.WebTarget;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lombok.AllArgsConstructor;
import org.BookNBookServices.dao.Estadistica;
import org.BookNBookServices.dao.Saga;
import org.BookNBookServices.dao.control.*;

@AllArgsConstructor
public class SagaManager {

    private final WebTarget webTarget;
    private final String pathSaga = "/saga";

    public SagaManager() {
        Client client = ClientBuilder.newClient();
        this.webTarget = client.target("http://localhost:8082/BookNBook/api");
    }

    public NoDataResponse addSaga(Saga saga) {
        Response response = webTarget.path(pathSaga + "/add").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(saga, MediaType.APPLICATION_JSON));
        return response.readEntity(NoDataResponse.class);
    }

    public NoDataResponse addLibroSaga(SagaDAO saga) {
        Response response = webTarget.path(pathSaga + "/add/libro").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(saga, MediaType.APPLICATION_JSON));
        return response.readEntity(NoDataResponse.class);
    }

    public ListadoDAO listarLibrosSaga(Integer idSaga){
        Response response = webTarget.path(pathSaga + "/" + idSaga + "/libros").request(MediaType.APPLICATION_JSON)
                .get();
        ListadoDAO body = response.readEntity(ListadoDAO.class);
        return body;
    }

    public ListadoSagaDAO listarSaga(){
        Response response = webTarget.path(pathSaga + "/sagas").request(MediaType.APPLICATION_JSON)
                .get();
        ListadoSagaDAO body = response.readEntity(ListadoSagaDAO.class);
        return body;
    }
}