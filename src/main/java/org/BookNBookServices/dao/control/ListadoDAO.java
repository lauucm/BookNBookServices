package org.BookNBookServices.dao.control;

import lombok.*;
import lombok.experimental.SuperBuilder;
import org.BookNBookServices.dao.Libro;

import java.io.Serializable;
import java.util.ArrayList;

@Data
@AllArgsConstructor
@NoArgsConstructor
@SuperBuilder
public class ListadoDAO extends ErrorMessage implements Serializable {

    private ArrayList<Libro> listado;

}
