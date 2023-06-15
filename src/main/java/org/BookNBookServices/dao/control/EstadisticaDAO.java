package org.BookNBookServices.dao.control;

import com.fasterxml.jackson.annotation.JsonInclude;
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
public class EstadisticaDAO implements Serializable{

        private Integer idLibro;
        private Integer idUsuario;

        @JsonInclude(value = JsonInclude.Include.NON_NULL)
        private String fecha;

        public EstadisticaDAO(Integer idLibro, Integer IdUsuario){
                super();
                this.idUsuario = IdUsuario;
                this.idLibro = idLibro;
        }

}
