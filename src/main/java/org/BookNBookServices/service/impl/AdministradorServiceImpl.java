package org.BookNBookServices.service.impl;

import lombok.AllArgsConstructor;
import org.BookNBookServices.client.AdministradorManager;
import org.BookNBookServices.dao.control.ListadoUsuarioDAO;
import org.BookNBookServices.dao.control.NoDataResponse;
import org.BookNBookServices.service.AdministradorService;

@AllArgsConstructor
public class AdministradorServiceImpl implements AdministradorService {

    private AdministradorManager administradorManager;

    @Override
    public NoDataResponse deleteUsuario(Integer usuario) {
        return administradorManager.deleteUsuario(usuario);
    }

    @Override
    public ListadoUsuarioDAO listarUsuarios() {
        return administradorManager.listarUsuarios();
    }
}
