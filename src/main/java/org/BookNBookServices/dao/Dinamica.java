package org.BookNBookServices.dao;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Dinamica implements Serializable {
    private Libro libro;
    private Usuario usuario;
    private Integer pagActual;
    private Integer dias;
}
