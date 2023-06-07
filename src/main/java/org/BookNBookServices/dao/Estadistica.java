package org.BookNBookServices.dao;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder

public class Estadistica {
    private Libro libro;
    private Usuario usuario;
    private Double calificacionActual;
    private Integer pagActual;
    private LocalDate fechaFinal;
    private LocalDate fechaAdd;
    private LocalDate fechaInicio;
}
