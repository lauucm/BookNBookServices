package org.BookNBookServices.dao.control;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import java.io.Serializable;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
public class EstadisticaSinFechaDAO implements Serializable{

        private Integer idLibro;
        private Integer idUsuario;

}
