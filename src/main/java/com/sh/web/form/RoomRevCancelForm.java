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

    /*
     * private String status = "D" 처럼 아예 인스턴스에 값을 넣는 방법이 좋을까? 아니면 
     * 아래처럼 public RoomRevCancelForm(){} 을 사용해 값을 넣어주는 방법이 좋을까? 그것이 궁금하다.
     */
    public RoomRevCancelForm(){
        status = "D";
        deleted = "Y";
    }
}
