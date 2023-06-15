package org.BookNBookServices.service;

import org.BookNBookServices.dao.Estadistica;
import org.BookNBookServices.dao.control.CalificacionDAO;
import org.BookNBookServices.dao.control.EstadisticaDAO;
import org.BookNBookServices.dao.control.NoDataResponse;

public interface EstadisticaService {

    NoDataResponse addEstadistica(EstadisticaDAO dato);

    NoDataResponse updateFechaFinal(EstadisticaDAO dato);

    NoDataResponse updateFechaInicio(EstadisticaDAO dato);

    CalificacionDAO calificacionMedia(Integer idLibro);

    NoDataResponse updateCalificacion(EstadisticaDAO dato);

    Estadistica getEstadistica(EstadisticaDAO dato);

}
