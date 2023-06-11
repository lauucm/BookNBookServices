package org.BookNBookServices.dao;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UsuarioLogged implements Serializable {

    private Integer id;
    private String email;
    private String tipoUsuario;
}
