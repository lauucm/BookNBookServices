package org.BookNBookServices.service.impl;

import lombok.AllArgsConstructor;
import org.BookNBookServices.client.EstadisticaManager;
import org.BookNBookServices.dao.control.EstadisticaDAO;
import org.BookNBookServices.dao.control.NoDataResponse;
import org.BookNBookServices.service.EstadisticaService;

@AllArgsConstructor
public class EstadisticaServiceImpl implements EstadisticaService {

    private EstadisticaManager estadisticaManager;

    @Override
    public NoDataResponse addEstadistica(EstadisticaDAO dato) {
        return estadisticaManager.addEstadistica(dato);
    }

    @Override
    public NoDataResponse updateFechaFinal(EstadisticaDAO dato) {
        return estadisticaManager.updateFechaFinal(dato);
    }

    @Override
    public NoDataResponse updateFechaInicio(EstadisticaDAO dato) {
        return estadisticaManager.updateFechaInicio(dato);
    }
}
