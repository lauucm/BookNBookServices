package org.BookNBookServices.dao;

import lombok.*;
import lombok.experimental.SuperBuilder;
import org.BookNBookServices.dao.control.ErrorMessage;
import org.BookNBookServices.dao.control.RegisterDAO;

import java.io.Serializable;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
public class Usuario extends ErrorMessage implements Serializable {
    private Integer id;
    private String nombre;
    private String apellido1;
    private String apellido2;
    private String email;
    private String password;
    private TipoUsuario tipoUsuario;

    public Usuario(RegisterDAO registerDAO) {
        this.nombre = registerDAO.getNombreUsuario();
        this.apellido1 = registerDAO.getPrimerApellido();
        this.apellido2 = registerDAO.getSegundoApellido();
        this.email = registerDAO.getEmailUsuario();
        this.password = registerDAO.getPassword();
        this.tipoUsuario = TipoUsuario.NORMAL;

    }
}
