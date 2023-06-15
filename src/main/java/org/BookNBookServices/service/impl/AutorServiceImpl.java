package org.BookNBookServices.service.impl;

import lombok.AllArgsConstructor;
import org.BookNBookServices.client.AutorManager;
import org.BookNBookServices.dao.Autor;
import org.BookNBookServices.dao.control.BuscarDAO;
import org.BookNBookServices.dao.control.ListadoAutorDAO;
import org.BookNBookServices.dao.control.ListadoDAO;
import org.BookNBookServices.dao.control.NoDataResponse;
import org.BookNBookServices.service.AutorService;

@AllArgsConstructor
public class AutorServiceImpl implements AutorService {

    private AutorManager autorManager;

    @Override
    public Autor getAutor(BuscarDAO nombre) {
        return autorManager.getAutor(nombre);
    }

    @Override
    public NoDataResponse addAutor(Autor autor) {
        return autorManager.addAutor(autor);
    }

    @Override
    public ListadoAutorDAO getAutores() {
        return autorManager.getAutores();
    }

    @Override
    public ListadoDAO getLibrosAutor(Integer idAutor) {
        return autorManager.getLibrosAutor(idAutor);
    }
}
