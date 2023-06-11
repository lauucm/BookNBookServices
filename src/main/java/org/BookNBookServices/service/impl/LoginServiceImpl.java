package org.BookNBookServices.service.impl;

import lombok.AllArgsConstructor;
import org.BookNBookServices.client.UsuarioManager;
import org.BookNBookServices.dao.LoginDAO;
import org.BookNBookServices.dao.Usuario;
import org.BookNBookServices.service.LoginService;

@AllArgsConstructor
public class LoginServiceImpl implements LoginService {

    private UsuarioManager usuarioManager;


    @Override
    public Usuario login(LoginDAO user) {
        return usuarioManager.login(user);
    }
}
