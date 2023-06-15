package org.BookNBookServices.service;

import org.BookNBookServices.dao.Autor;
import org.BookNBookServices.dao.control.BuscarDAO;
import org.BookNBookServices.dao.control.ListadoAutorDAO;
import org.BookNBookServices.dao.control.ListadoDAO;
import org.BookNBookServices.dao.control.NoDataResponse;

public interface AutorService {

    Autor getAutor(BuscarDAO nombre);

    NoDataResponse addAutor(Autor autor);

    ListadoAutorDAO getAutores();

     ListadoDAO getLibrosAutor(Integer idAutor);
}
