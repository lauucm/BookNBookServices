package org.BookNBookServices.dao.control;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import org.BookNBookServices.dao.Libro;
import org.BookNBookServices.dao.Usuario;

import java.io.Serializable;
import java.util.ArrayList;

@Data
@AllArgsConstructor
@NoArgsConstructor
@SuperBuilder
public class ListadoUsuarioDAO extends ErrorMessage implements Serializable {

    private ArrayList<Usuario> listado;

}
