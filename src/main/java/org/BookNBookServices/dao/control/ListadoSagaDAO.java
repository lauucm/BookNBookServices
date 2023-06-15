package org.BookNBookServices.dao.control;

import lombok.*;
import lombok.experimental.SuperBuilder;
import org.BookNBookServices.dao.Saga;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@SuperBuilder
public class ListadoSagaDAO extends ErrorMessage implements Serializable {

    private ArrayList<Saga> listado;

}
