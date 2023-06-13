package com.sh.web.form;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RoomRevCancelForm {
    
    private int no;
    //private String userName;

    private String status = "D"; // 'R' -> 'D'로 변경
    private String deleted = "Y"; // 'N' -> 'Y'로 변경

    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
    private Date updatedDate; // 업데이트 날짜 

}
