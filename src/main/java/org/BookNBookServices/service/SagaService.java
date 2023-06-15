package org.BookNBookServices.service;

import org.BookNBookServices.dao.Saga;
import org.BookNBookServices.dao.control.ListadoDAO;
import org.BookNBookServices.dao.control.ListadoSagaDAO;
import org.BookNBookServices.dao.control.NoDataResponse;
import org.BookNBookServices.dao.control.SagaDAO;

public interface SagaService {

    NoDataResponse addSaga(Saga saga);

    NoDataResponse addLibroSaga(SagaDAO saga);

    ListadoDAO listarLibrosSaga(Integer idSaga);

    ListadoSagaDAO listarSaga();
}
