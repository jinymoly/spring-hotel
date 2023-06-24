package com.sh.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.lang.Nullable;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor(access = AccessLevel.PUBLIC)
@Alias("RoomRevUpdateDto")
public class RoomRevUpdateDto {
    
    private int no; // 예약 번호
    
    @Nullable
    private String optionCheckinTime; // 체크인 시간
    @Nullable
    private String request;

    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
    private Date updatedDate; // 업데이트 날짜 
}
