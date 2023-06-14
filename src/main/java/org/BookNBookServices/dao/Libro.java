package org.BookNBookServices.dao;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import java.io.Serializable;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class Libro extends Saga implements Serializable{

    private Integer id;
    private String nombre;
    private Autor autor;
    private String descripcion;
    private String fechaPublicacion;
    private Double calificacionMedia;
    private Integer paginaTotal;
    private TipologiaLibro tipologiaLibro;
    private TematicaLibro tematicaLibro;
    private String url;

}
