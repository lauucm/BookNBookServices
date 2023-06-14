package org.BookNBookServices.dao.control;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UsuarioLogged implements Serializable {

    private Integer id;
    private String email;
    private String tipoUsuario;
}
