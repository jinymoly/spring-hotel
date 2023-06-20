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
        return ResponseEntity.status(e.getStatus()) // 메소드 체이닝을 사용한 빌더패턴으로 의미가 직관적, 유지보수 굿
                            .body(ErrorResponseEntity.builder()
                                    .status(e.getStatus().value())
                                    .errorCode(e.name())
                                    .errorMessage(e.getErrMessage())
                                    .build()
                                );
    }
}
