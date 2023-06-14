package org.BookNBookServices.client;

import jakarta.ws.rs.client.Client;
import jakarta.ws.rs.client.ClientBuilder;
import jakarta.ws.rs.client.Entity;
import jakarta.ws.rs.client.WebTarget;
import jakarta.ws.rs.core.GenericType;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lombok.AllArgsConstructor;
import org.BookNBookServices.dao.Usuario;
import org.BookNBookServices.dao.control.LoginDAO;
import org.BookNBookServices.dao.control.NoDataResponse;

import java.util.List;

@AllArgsConstructor
public class UsuarioManager {

    private final WebTarget webTarget;
    private final String pathUser = "/usuario";
    private Client client;

    public UsuarioManager() {
        client = ClientBuilder.newClient();
        this.webTarget = client.target("http://localhost:8082/BookNBook/api");
    }

    public Usuario login(LoginDAO usuario){
        Response response = webTarget.path(pathUser + "/login").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(usuario, MediaType.APPLICATION_JSON));
        return response.readEntity(Usuario.class);
    }

    public NoDataResponse register(Usuario usuario){
        Response response = webTarget.path(pathUser + "/register").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(usuario, MediaType.APPLICATION_JSON));
        return response.readEntity(NoDataResponse.class);
    }

    public boolean delete(String usuario){
        Response response = webTarget.path(pathUser + "/delete/{usuario}").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(usuario, MediaType.APPLICATION_JSON));
        return response.readEntity(boolean.class);
    }

    public NoDataResponse existEmail(String email){
         Response response = webTarget.queryParam("email", email).path(pathUser + "/register/email").request(MediaType.APPLICATION_JSON)
                 .get();
        NoDataResponse body = response.readEntity(NoDataResponse.class);
        return body;
    }

    public Usuario getUsuario(Integer usuario){
        Response response = webTarget.path(pathUser + "/" + usuario).request(MediaType.APPLICATION_JSON)
                .get();
        Usuario body = response.readEntity(Usuario.class);
        return body;
    }

}
