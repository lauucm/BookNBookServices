package org.BookNBookServices.client;

import jakarta.ws.rs.client.Entity;
import jakarta.ws.rs.client.WebTarget;
import jakarta.ws.rs.core.MediaType;
import lombok.AllArgsConstructor;
import org.BookNBookServices.dao.LoginDAO;
import org.BookNBookServices.dao.Usuario;

@AllArgsConstructor
public class UsuarioManager {

    private final WebTarget webTarget;
    public Usuario login(LoginDAO usuario){
        return webTarget.path("/usuario/login").request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(usuario, MediaType.APPLICATION_JSON), Usuario.class);
    }
}
