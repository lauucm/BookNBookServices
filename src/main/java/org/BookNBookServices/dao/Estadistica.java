package org.BookNBookServices.dao;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import java.io.Serializable;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Estadistica implements Serializable {
    private Libro libro;
    private Usuario usuario;
    private Double calificacionActual;
    private Integer pagActual;
    private String fechaFinal;
    private String fechaAdd;
    private String fechaInicio;
}
