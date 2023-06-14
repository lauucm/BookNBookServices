package org.BookNBookServices.dao.control;

import lombok.*;
import lombok.experimental.SuperBuilder;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RegisterDAO implements Serializable {

    String nombreUsuario;
    String primerApellido;
    String segundoApellido;
    String emailUsuario;
    String password;

}
