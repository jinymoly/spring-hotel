package com.sh.vo;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.type.Alias;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("Room")
public class Room {
	
	private int id; // 지점 별 호실이 같을 수 있어 id를 사용 해 고유 번호를 부여 
	private int no; // 몇 호 
	private String name;
	private int price;
	private int discountPrice;
	private String rev;
	private Date checkinPeriod;
	private String image;
	private String request;
	private Location location;
	private RoomCategory roomCategory; 
	
	// 검색 
	private int minPrice;
	private int maxPrice;

	private List<RoomCategory> roomCategories;
	private List<RoomAmenity> amenities;
	private List<RoomInfo> roomInfo;
}
