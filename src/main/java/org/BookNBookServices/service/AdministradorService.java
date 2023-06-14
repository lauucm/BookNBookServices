package org.BookNBookServices.service;

import org.BookNBookServices.dao.control.ListadoUsuarioDAO;
import org.BookNBookServices.dao.control.NoDataResponse;

public interface AdministradorService {

    NoDataResponse deleteUsuario(Integer usuario);

    ListadoUsuarioDAO listarUsuarios();

}
