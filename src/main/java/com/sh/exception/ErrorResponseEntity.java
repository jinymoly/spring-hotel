package com.sh.exception;

import org.springframework.http.ResponseEntity;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Builder
public class ErrorResponseEntity {
    
    private int status;
    private String errorCode;
    private String errorMessage;

    public static ResponseEntity<ErrorResponseEntity> toResponseEntity(ErrorCode e) {
        return ResponseEntity.status(e.getStatus()) 
                            .body(ErrorResponseEntity.builder()
                                    .status(e.getStatus().value())
                                    .errorCode(e.name())
                                    .errorMessage(e.getEMessage())
                                    .build()
                            );
    }
}
