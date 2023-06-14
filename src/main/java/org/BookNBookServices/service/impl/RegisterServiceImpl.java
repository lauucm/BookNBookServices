package org.BookNBookServices.service.impl;

import lombok.AllArgsConstructor;
import org.BookNBookServices.client.UsuarioManager;
import org.BookNBookServices.dao.Usuario;
import org.BookNBookServices.dao.control.NoDataResponse;
import org.BookNBookServices.service.RegisterService;

@AllArgsConstructor
public class RegisterServiceImpl implements RegisterService {

    private UsuarioManager usuarioManager;
    @Override
    public NoDataResponse register(Usuario usuario) {
        NoDataResponse data = usuarioManager.register(usuario);
        return data;
    }

    @Override
    public NoDataResponse existEmail(String email) {
        NoDataResponse data = usuarioManager.existEmail(email);
        return data;
    }
}
