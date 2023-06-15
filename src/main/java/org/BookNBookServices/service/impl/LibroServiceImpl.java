package org.BookNBookServices.service.impl;

import lombok.AllArgsConstructor;
import org.BookNBookServices.client.LibroManager;
import org.BookNBookServices.dao.Libro;
import org.BookNBookServices.dao.control.AddLibroDAO;
import org.BookNBookServices.dao.control.BuscarDAO;
import org.BookNBookServices.dao.control.ListadoDAO;
import org.BookNBookServices.dao.control.NoDataResponse;
import org.BookNBookServices.service.LibroService;

import java.util.ArrayList;
import java.util.Collections;

@AllArgsConstructor
public class LibroServiceImpl implements LibroService {

    private LibroManager libroManager;

    @Override
    public ListadoDAO listarLibros() {
        return libroManager.listarLibros();
    }

    @Override
    public Libro buscarLibro(Integer id) {
        return libroManager.buscarLibro(id);
    }

    @Override
    public ArrayList<Libro> listadoCartaLibros(ArrayList<Libro> listado) {
        int index = 6;
        Collections.sort(listado, (Libro a, Libro b) -> b.getFechaPublicacion().compareTo(a.getFechaPublicacion()));
        ArrayList<Libro> listadoCartas = new ArrayList<>();
        for (int i = 0; i < index; i++) {
            listadoCartas.add(listado.get(i));
        }
        return listadoCartas;
    }

    @Override
    public ListadoDAO listarLibrosTipoGenero(String genero) {
        return libroManager.listarLibrosTipoGenero(genero);
    }

    @Override
    public ListadoDAO listarLibrosLeidos(Integer idUsuario) {
        return libroManager.listarLibrosLeidos(idUsuario);
    }

    @Override
    public ListadoDAO listarLibrosNoLeidos(Integer idUsuario) {
        return libroManager.listarLibrosNoLeidos(idUsuario);
    }

    @Override
    public ListadoDAO listarLibrosenLectura(Integer idUsuario) {
        return libroManager.listarLibrosenLectura(idUsuario);
    }

    @Override
    public Libro buscarLibro(BuscarDAO nombre) {
        return libroManager.buscarLibro(nombre);
    }

    @Override
    public NoDataResponse addLibro(AddLibroDAO libro) {
        return libroManager.addLibro(libro);
    }

}
