package com.sh.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@ToString
@NoArgsConstructor (access = AccessLevel.PROTECTED)
@Alias("RoomRevUpdateDto")
public class RoomRevUpdateDto {
    
    private int no; // 예약 번호
    
    private String optionCheckinTime; // 체크인 시간
    private String request;

    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
    private Date updatedDate; // 업데이트 날짜 

    @Builder
    public RoomRevUpdateDto(int no, String optionCheckinTime, String request, Date updatedDate) {
        this.no = no;
        this.optionCheckinTime = optionCheckinTime;
        this.request = request;
        this.updatedDate = updatedDate;
    }

}
