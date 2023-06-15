package org.BookNBookServices.service.impl;

import lombok.AllArgsConstructor;
import org.BookNBookServices.client.SagaManager;
import org.BookNBookServices.dao.Saga;
import org.BookNBookServices.dao.control.ListadoDAO;
import org.BookNBookServices.dao.control.ListadoSagaDAO;
import org.BookNBookServices.dao.control.NoDataResponse;
import org.BookNBookServices.dao.control.SagaDAO;
import org.BookNBookServices.service.SagaService;

@AllArgsConstructor
public class SagaServiceImpl implements SagaService {

    private SagaManager sagaManager;

    @Override
    public NoDataResponse addSaga(Saga saga) {
        return sagaManager.addSaga(saga);
    }

    @Override
    public NoDataResponse addLibroSaga(SagaDAO saga) {
        return sagaManager.addLibroSaga(saga);
    }

    @Override
    public ListadoDAO listarLibrosSaga(Integer idSaga) {
        return sagaManager.listarLibrosSaga(idSaga);
    }

    @Override
    public ListadoSagaDAO listarSaga() {
        return sagaManager.listarSaga();
    }
}
