package org.BookNBookServices.dao.control;

import lombok.*;
import lombok.experimental.SuperBuilder;

import java.io.Serializable;

/**
 * LoginDAO para gestión de usuarios
 * @author maria.escribano.verde
 * @author laura.cabrera.mora
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class LoginDAO implements Serializable {

    /**
     * Email de usuario
     */
    String usuario;
    /**
     * Contraseña de usuario
     */
    String password;

}
