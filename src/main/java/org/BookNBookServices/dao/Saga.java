package org.BookNBookServices.dao;

import lombok.Data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@Data
public class Saga {

    private Integer id;
    private String nombre;
    private ArrayList<Libro> libros;

    public Saga(String nombre){
        this.nombre=nombre;
        this.libros = new ArrayList<>();
    }
    public Saga(String nombre, ArrayList<Libro>libros){
        this.nombre=nombre;
        this.libros = libros;
    }

    public Saga(ResultSet result) throws SQLException {
        this.libros = new ArrayList<>();
        try {
            this.id = result.getInt("id");
            this.nombre = result.getString("nombre");
        }catch(SQLException e) {
            e.getStackTrace();
            throw e;
        }
    }

}
