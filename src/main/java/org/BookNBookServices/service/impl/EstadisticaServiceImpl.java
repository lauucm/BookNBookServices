package org.BookNBookServices.service.impl;

import lombok.AllArgsConstructor;
import org.BookNBookServices.client.EstadisticaManager;
import org.BookNBookServices.dao.Estadistica;
import org.BookNBookServices.dao.control.CalificacionDAO;
import org.BookNBookServices.dao.control.EstadisticaDAO;
import org.BookNBookServices.dao.control.EstadisticaSinFechaDAO;
import org.BookNBookServices.dao.control.NoDataResponse;
import org.BookNBookServices.service.EstadisticaService;

@AllArgsConstructor
public class EstadisticaServiceImpl implements EstadisticaService {

    private EstadisticaManager estadisticaManager;

    @Override
    public NoDataResponse addEstadistica(EstadisticaSinFechaDAO dato) {
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

    @Override
    public CalificacionDAO calificacionMedia(Integer idLibro) {
        return estadisticaManager.calificacionMedia(idLibro);
    }

    @Override
    public NoDataResponse updateCalificacion(EstadisticaDAO dato) {
        return estadisticaManager.updateCalificacion(dato);
    }

    @Override
    public Estadistica getEstadistica(EstadisticaDAO dato) {
        return estadisticaManager.getEstadistica(dato);
    }
}
