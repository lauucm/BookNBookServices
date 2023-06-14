package org.BookNBookServices.service;

import org.BookNBookServices.dao.Usuario;
import org.BookNBookServices.dao.control.LoginDAO;

public interface LoginService {

    Usuario login(LoginDAO user);

}
