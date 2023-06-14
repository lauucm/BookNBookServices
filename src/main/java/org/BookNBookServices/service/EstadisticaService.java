package org.BookNBookServices.service;

import org.BookNBookServices.dao.control.EstadisticaDAO;
import org.BookNBookServices.dao.control.NoDataResponse;

public interface EstadisticaService {

    NoDataResponse addEstadistica(EstadisticaDAO dato);

    NoDataResponse updateFechaFinal(EstadisticaDAO dato);

    NoDataResponse updateFechaInicio(EstadisticaDAO dato);
}
