package org.BookNBookServices.dao;

import lombok.AllArgsConstructor;
import lombok.Builder;
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
public class Autor implements Serializable {

    private Integer id;
    private String pseudonimo;
    private String localidad;

    private ArrayList<Saga> libros;

    public Autor(String pseudonimo) {
        this.pseudonimo = pseudonimo;
        libros = new ArrayList<>();
    }

    public Autor(String pseudonimo, String localidad,ArrayList<Saga> libros) {
        this.pseudonimo = pseudonimo;
        this.localidad = localidad;
        this.libros=libros;
    }

    public Autor(String pseudonimo, String localidad) {
        this.pseudonimo = pseudonimo;
        this.localidad = localidad;
        libros = new ArrayList<>();
    }

    public Autor(ResultSet result) throws SQLException {
        this.libros = new ArrayList<>();
        try {
            this.id = result.getInt("id");
            this.pseudonimo = result.getString("pseudonimo");
            this.localidad = result.getString(("localidad"));
        } catch (SQLException e) {
            e.getStackTrace();
            throw e;
        }
    }
}
