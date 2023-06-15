package org.BookNBookServices.dao.control;

import lombok.*;
import lombok.experimental.SuperBuilder;
import org.BookNBookServices.dao.Usuario;

import java.io.Serializable;
import java.util.List;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@SuperBuilder
public class ListadoUsuarioDAO extends ErrorMessage implements Serializable {

    private List<Usuario> listado;

}
