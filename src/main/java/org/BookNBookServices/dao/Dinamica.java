package org.BookNBookServices.dao;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Dinamica implements Serializable {
    private Libro libro;
    private Usuario usuario;
    private Integer pagActual;
    private Integer dias;
}
