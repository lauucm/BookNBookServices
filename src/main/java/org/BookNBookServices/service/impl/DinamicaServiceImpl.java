package org.BookNBookServices.service.impl;

import lombok.AllArgsConstructor;
import org.BookNBookServices.client.DinamicaManager;
import org.BookNBookServices.dao.Dinamica;
import org.BookNBookServices.dao.control.DinamicaDAO;
import org.BookNBookServices.dao.control.NoDataResponse;
import org.BookNBookServices.service.DinamicaService;

@AllArgsConstructor
public class DinamicaServiceImpl implements DinamicaService {

    private DinamicaManager dinamicaManager;

    @Override
    public Dinamica getDinamica(DinamicaDAO dato) {
        return dinamicaManager.getDinamica(dato);
    }

    @Override
    public NoDataResponse addDinamica(DinamicaDAO dato) {
        return dinamicaManager.addDinamica(dato);
    }

    @Override
    public NoDataResponse updatePag(DinamicaDAO dinamica) {
        return dinamicaManager.updatePag(dinamica);
    }

    @Override
    public Integer paginasLeidas(Integer idUsuario) {
        return dinamicaManager.paginasLeidas(idUsuario);
    }
}
