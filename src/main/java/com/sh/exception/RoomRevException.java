package com.sh.exception;

import lombok.Getter;

@Getter
public class RoomRevException extends RuntimeException{
    private final ErrorCode errorCode;

    public RoomRevException(ErrorCode e){
        super(e.getErrMessage());
        this.errorCode = e;
    }
}
