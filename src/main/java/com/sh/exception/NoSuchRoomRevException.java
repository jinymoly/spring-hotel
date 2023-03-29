package com.sh.exception;

public class NoSuchRoomRevException extends ApplicationException{

    private static final String MESSAGE = "예약번호 혹은 이름이 존재하지 않습니다.";

    
    public NoSuchRoomRevException() {
        super(MESSAGE);
    }

    public NoSuchRoomRevException(String message) {
        super(message);
    }

    public NoSuchRoomRevException(String message, Throwable cause){
        super(message, cause);
    }
    
}
