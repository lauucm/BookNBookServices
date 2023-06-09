package org.BookNBookServices.dao.control;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;
import org.BookNBookServices.dao.Libro;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@SuperBuilder
public class ListadoDAO extends ErrorMessage implements Serializable {

    private ArrayList<Libro> listado;

}
