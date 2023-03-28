package com.sh.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Alias("RoomRev")
public class RoomRev {

	private int no; // 예약 번호 
	private int adult;
	private int child;
	private int totalPrice; // 예약 총 금액
	private int roomPrice; // 객실 가격
	private String checkin;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date checkinTime; // 체크인 날짜 
	private String checkout;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date checkoutTime; // 체크아웃 날짜
	private String request;
	private String status;
	private String optionCheckinTime; // 체크인 시간 
	private String bedType;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date createdDate;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date updatedDate;
	private User user;
	private Room room;

	private String locationName;
	private String roomName;// roomtype
	private String userTitle;
	private String userName; // 비회원용
	private String firstName; // 비
	private String lastName; // 비
	private String email;
	private String tel;
	private String country;
	private int optionAdultBf; // 옵션 - 성인 조식 
	private int optionChildBf; // 옵션 - 어린이 조식 
	private int extraBed; // 옵션 - 엑스트라베드 
	private int optionTotalPrice; // 옵션 총 가격 
	private String cardType;
	private int cardNumber1;
	private int cardNumber2;
	private int cardNumber3;
	private int cardNumber4;
	private int validMonth;
	private int validYear;
	
	private String isMem;
	
	private String deleted;
	
	
}
