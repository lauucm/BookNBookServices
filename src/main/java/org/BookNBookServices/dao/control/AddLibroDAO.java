package org.BookNBookServices.dao.control;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;
import org.BookNBookServices.dao.Autor;
import org.BookNBookServices.dao.Libro;

import java.io.Serializable;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
public class AddLibroDAO extends ErrorMessage implements Serializable {

    private Libro libro;
    private Autor autor;

}
