package org.BookNBookServices.dao;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class UsuarioLogged {

    private Integer id;
    private String email;
    private String tipoUsuario;
}
