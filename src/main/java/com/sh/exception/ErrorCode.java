package com.sh.exception;

import org.springframework.http.HttpStatus;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum ErrorCode {

    NOT_FOUND_ROOM_REV_INFO(HttpStatus.NOT_FOUND, "404", "예약 번호가 존재하지 않습니다."), 
    NOT_FOUND_USER_INFO(HttpStatus.NOT_FOUND, "404", "예약 이름이 존재하지 않습니다."),
    NOT_FOUND_ROOM_REV(HttpStatus.NOT_FOUND, "404", "이미 취소된 예약입니다.");
    
    private final HttpStatus status;
    private final String errCode;
    private final String errMessage;

}
