package org.BookNBookServices.client;

import jakarta.ws.rs.client.Client;
import jakarta.ws.rs.client.ClientBuilder;
import jakarta.ws.rs.client.Entity;
import jakarta.ws.rs.client.WebTarget;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lombok.AllArgsConstructor;
import org.BookNBookServices.dao.Libro;
import org.BookNBookServices.dao.control.AddLibroDAO;
import org.BookNBookServices.dao.control.BuscarDAO;
import org.BookNBookServices.dao.control.ListadoDAO;
import org.BookNBookServices.dao.control.NoDataResponse;

@AllArgsConstructor
public class LibroManager {

    private final WebTarget webTarget;
    private final String pathLibro = "/libro";

    public LibroManager() {
        Client client = ClientBuilder.newClient();
        this.webTarget = client.target("http://localhost:8082/BookNBook/api");
    }

    public ListadoDAO listarLibros(){
        Response response = webTarget.path(pathLibro + "/listado").request(MediaType.APPLICATION_JSON)
                .get();
        ListadoDAO body = response.readEntity(ListadoDAO.class);
        return body;
    }

    public Libro buscarLibro(Integer id){
        Response response = webTarget.path(pathLibro + "/" + id).request(MediaType.APPLICATION_JSON)
                .get();
        Libro body = response.readEntity(Libro.class);
        return body;
    }

    public ListadoDAO listarLibrosTipoGenero(String genero){
        Response response = webTarget.path(pathLibro + "/listado/" + genero).request(MediaType.APPLICATION_JSON)
                .get();
        ListadoDAO body = response.readEntity(ListadoDAO.class);
        return body;
    }

    public ListadoDAO listarLibrosLeidos(Integer idUsuario){
        Response response = webTarget.path(pathLibro + "/" + idUsuario + "/leidos").request(MediaType.APPLICATION_JSON)
                .get();
        ListadoDAO body = response.readEntity(ListadoDAO.class);
        return body;
    }

    public ListadoDAO listarLibrosenLectura(Integer idUsuario){
        Response response = webTarget.path(pathLibro + "/" + idUsuario + "/activos").request(MediaType.APPLICATION_JSON)
                .get();
        ListadoDAO body = response.readEntity(ListadoDAO.class);
        return body;
    }

    public ListadoDAO listarLibrosNoLeidos(Integer idUsuario){
        Response response = webTarget.path(pathLibro + "/" + idUsuario + "/noleidos").request(MediaType.APPLICATION_JSON)
                .get();
        ListadoDAO body = response.readEntity(ListadoDAO.class);
        return body;
    }

    public NoDataResponse addLibro(AddLibroDAO libro){
        Response response = webTarget.path(pathLibro + "/add").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(libro, MediaType.APPLICATION_JSON));
        return response.readEntity(NoDataResponse.class);
    }

    public Libro buscarLibro(BuscarDAO nombre){
        Response response = webTarget.path(pathLibro + "/buscar").request(MediaType.APPLICATION_JSON)
                .get();
        Libro body = response.readEntity(Libro.class);
        return body;
    }

}
