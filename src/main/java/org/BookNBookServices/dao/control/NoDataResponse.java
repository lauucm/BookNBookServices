package org.BookNBookServices.dao.control;

import lombok.*;
import lombok.experimental.SuperBuilder;


@Data
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
public class NoDataResponse extends ErrorMessage {

    private Boolean ok;

}
