package org.BookNBookServices.dao;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Dinamica {
    private Libro libro;
    private Usuario usuario;
    private Integer pagActual;
    private Integer dias;
}
