package org.BookNBookServices.dao.control;

import lombok.*;
import lombok.experimental.SuperBuilder;

import java.io.Serializable;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
public class EstadisticaDAO extends ErrorMessage implements Serializable{

        private Integer idLibro;
        private Integer idUsuario;
        private String fecha;

        public EstadisticaDAO (Integer idLibro, Integer IdUsuario){
                super();
                this.idUsuario = IdUsuario;
                this.idLibro = idLibro;
        }

}
