package org.BookNBookServices.client;

import jakarta.ws.rs.client.Client;
import jakarta.ws.rs.client.ClientBuilder;
import jakarta.ws.rs.client.Entity;
import jakarta.ws.rs.client.WebTarget;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lombok.AllArgsConstructor;
import org.BookNBookServices.dao.Autor;
import org.BookNBookServices.dao.control.BuscarDAO;
import org.BookNBookServices.dao.control.ListadoAutorDAO;
import org.BookNBookServices.dao.control.ListadoDAO;
import org.BookNBookServices.dao.control.NoDataResponse;

@AllArgsConstructor
public class AutorManager {

    private final WebTarget webTarget;
    private final String pathAutor = "/autor";

    public AutorManager() {
        Client client = ClientBuilder.newClient();
        this.webTarget = client.target("http://localhost:8082/BookNBook/api");
    }

    public Autor getAutor(BuscarDAO nombre){
        Response response = webTarget.path(pathAutor + "/add").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(nombre, MediaType.APPLICATION_JSON));
        return response.readEntity(Autor.class);
    }

    public NoDataResponse addAutor(Autor autor) {
        Response response = webTarget.path(pathAutor + "/add").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(autor, MediaType.APPLICATION_JSON));
        return response.readEntity(NoDataResponse.class);
    }

    public ListadoAutorDAO getAutores(){
        Response response = webTarget.path(pathAutor + "/autores").request(MediaType.APPLICATION_JSON)
                .get();
        ListadoAutorDAO body = response.readEntity(ListadoAutorDAO.class);
        return body;
    }

    public ListadoDAO getLibrosAutor(Integer idUsuario){
        Response response = webTarget.path(pathAutor + "/" + idUsuario + "/libros").request(MediaType.APPLICATION_JSON)
                .get();
        ListadoDAO body = response.readEntity(ListadoDAO.class);
        return body;
    }

}
