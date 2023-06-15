package org.BookNBookServices.service;

import org.BookNBookServices.dao.Dinamica;
import org.BookNBookServices.dao.control.DinamicaDAO;
import org.BookNBookServices.dao.control.NoDataResponse;

public interface DinamicaService {

    Dinamica getDinamica(DinamicaDAO dato);

    NoDataResponse addDinamica(DinamicaDAO dato);

    NoDataResponse updatePag(DinamicaDAO dato);

    Integer paginasLeidas(Integer idUsuario);

}
