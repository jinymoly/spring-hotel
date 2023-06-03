package com.sh.exception;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class RoomRevExceptionHandler {
    
    @ExceptionHandler(RoomRevException.class)
    protected ResponseEntity<ErrorResponseEntity> handleRoomRevException(RoomRevException roomRevException){
        roomRevException.printStackTrace();
        return ErrorResponseEntity.toResponseEntity(roomRevException.getErrorCode());
    }
}
