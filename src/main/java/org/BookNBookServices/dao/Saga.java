package org.BookNBookServices.dao;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Saga implements Serializable{

    private Integer id;
    private String nombre;
    private ArrayList<Libro> libros;

}
