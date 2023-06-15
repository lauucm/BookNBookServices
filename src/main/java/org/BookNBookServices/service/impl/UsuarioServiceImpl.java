package org.BookNBookServices.service.impl;

import lombok.AllArgsConstructor;
import org.BookNBookServices.client.UsuarioManager;
import org.BookNBookServices.dao.Usuario;
import org.BookNBookServices.dao.control.ListadoUsuarioDAO;
import org.BookNBookServices.dao.control.NoDataResponse;
import org.BookNBookServices.service.UsuarioService;

@AllArgsConstructor
public class UsuarioServiceImpl implements UsuarioService {

    private UsuarioManager usuarioManager;

    @Override
    public Usuario getUsuario(Integer usuario) {
        return usuarioManager.getUsuario(usuario);
    }

}
