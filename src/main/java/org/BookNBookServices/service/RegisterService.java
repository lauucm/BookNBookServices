package org.BookNBookServices.service;

import org.BookNBookServices.dao.Usuario;
import org.BookNBookServices.dao.control.NoDataResponse;

public interface RegisterService {

    NoDataResponse register(Usuario usuario);

    NoDataResponse existEmail(String email);
}
