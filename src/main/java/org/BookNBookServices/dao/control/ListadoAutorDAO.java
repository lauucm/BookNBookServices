package org.BookNBookServices.dao.control;

import lombok.*;
import lombok.experimental.SuperBuilder;
import org.BookNBookServices.dao.Autor;

import java.io.Serializable;
import java.util.ArrayList;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@SuperBuilder
public class ListadoAutorDAO extends ErrorMessage implements Serializable {

    private ArrayList<Autor> listado;

}
