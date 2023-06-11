package org.BookNBookServices.dao;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Usuario extends ErrorMessage implements Serializable {
    private Integer id;
    private String nombre;
    private String apellido1;
    private String apellido2;
    private String email;
    private String password;
    private TipoUsuario tipoUsuario;

    public Usuario(int id, String nombre, String apellido1, String apellido2, String email, String password) {
        this.id = id;
        this.nombre = nombre;
        this.apellido1 = apellido1;
        this.apellido2 = apellido2;
        this.email = email;
        this.password = password;
        this.tipoUsuario = TipoUsuario.NORMAL;
    }

    public Usuario(ResultSet result) throws SQLException {
        try {
            this.id = result.getInt("id");
            this.nombre = result.getString("nombre");
            this.apellido1 = result.getString("apellido1");
            this.apellido2 = result.getString("apellido2");
            this.email = result.getString("correo");
            this.password = result.getString("password");
            this.tipoUsuario = TipoUsuario.valueOf(result.getString("tipo_usuario"));
        }catch(SQLException e) {
            e.getStackTrace();
            throw e;
        }
    }

}
