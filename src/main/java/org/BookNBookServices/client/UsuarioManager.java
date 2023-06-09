package org.BookNBookServices.client;

import jakarta.ws.rs.client.Entity;
import jakarta.ws.rs.client.WebTarget;
import jakarta.ws.rs.core.GenericType;
import jakarta.ws.rs.core.MediaType;
import lombok.AllArgsConstructor;
import org.BookNBookServices.dao.LoginDAO;
import org.BookNBookServices.dao.Usuario;

import java.util.List;

@AllArgsConstructor
public class UsuarioManager {

    private final WebTarget webTarget;
    private final String pathUser = "/usuario";

    public Usuario login(LoginDAO usuario){
        return webTarget.path(pathUser + "/login").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(usuario, MediaType.APPLICATION_JSON), Usuario.class);
    }

    public boolean register(Usuario usuario){
        return webTarget.path(pathUser + "/register").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(usuario, MediaType.APPLICATION_JSON), boolean.class);
    }

    public boolean delete(String usuario){
        return webTarget.path(pathUser + "/delete").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(usuario, MediaType.APPLICATION_JSON), boolean.class);
    }

    public List<Usuario> listarUsuarios(){
        return webTarget.path(pathUser + "/listado").request(MediaType.APPLICATION_JSON)
                .get(new GenericType<>() {});
    }

}
