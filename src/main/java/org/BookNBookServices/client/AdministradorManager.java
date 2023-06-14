package org.BookNBookServices.client;

import jakarta.ws.rs.client.Client;
import jakarta.ws.rs.client.ClientBuilder;
import jakarta.ws.rs.client.WebTarget;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lombok.AllArgsConstructor;
import org.BookNBookServices.dao.control.ListadoUsuarioDAO;
import org.BookNBookServices.dao.control.NoDataResponse;

@AllArgsConstructor
public class AdministradorManager {

    private final WebTarget webTarget;

    public AdministradorManager() {
        Client client = ClientBuilder.newClient();
        this.webTarget = client.target("http://localhost:8082/BookNBook/api");
    }

    public NoDataResponse deleteUsuario(Integer usuario){
        Response response = webTarget.path("/usuario/delete" + usuario).request(MediaType.APPLICATION_JSON)
                .delete();
        return response.readEntity(NoDataResponse.class);
    }

    public ListadoUsuarioDAO listarUsuarios(){
        Response response = webTarget.path("/usuario/listado").request(MediaType.APPLICATION_JSON)
                .get();
        ListadoUsuarioDAO body = response.readEntity(ListadoUsuarioDAO.class);
        return body;
    }

}
