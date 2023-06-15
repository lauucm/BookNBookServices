package org.BookNBookServices.service;

import org.BookNBookServices.dao.Libro;
import org.BookNBookServices.dao.control.AddLibroDAO;
import org.BookNBookServices.dao.control.BuscarDAO;
import org.BookNBookServices.dao.control.ListadoDAO;
import org.BookNBookServices.dao.control.NoDataResponse;

import java.util.ArrayList;

public interface LibroService {

    ListadoDAO listarLibros();

    Libro buscarLibro(Integer id);

    ArrayList<Libro> listadoCartaLibros(ArrayList<Libro> listado);

    ListadoDAO listarLibrosTipoGenero(String genero);

    ListadoDAO listarLibrosLeidos(Integer idUsuario);

    ListadoDAO listarLibrosNoLeidos(Integer idUsuario);

    ListadoDAO listarLibrosenLectura(Integer idUsuario);

    Libro buscarLibro(BuscarDAO nombre);

    NoDataResponse addLibro(AddLibroDAO libro);
}
