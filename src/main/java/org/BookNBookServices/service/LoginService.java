package org.BookNBookServices.service;

import org.BookNBookServices.dao.LoginDAO;
import org.BookNBookServices.dao.Usuario;

public interface LoginService {

    Usuario login(LoginDAO user);
}
