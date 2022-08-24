package com.sh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sh.vo.Coupon;
import com.sh.vo.Grade;
import com.sh.vo.PointGrade;
import com.sh.vo.PointHistory;
import com.sh.vo.User;
import com.sh.vo.UserPoint;

@Mapper
public interface UserMapper {

	User getUserByEmail(String email);
	User getUserById(String id);
	User getUserByRownum(int num);
	int idCheck(String id);
	int emailCheck(String email);
	int passwordCheck(String id, String password);
	void insertUser(User user);
	void insertCoupon(Coupon coupon);
	void insertPointHistory(PointHistory pointHistory);
	void updateUser(User user);
	void updateUserPoint(int userNo, int point);
	void deleteUser(int userNo);
  
	String fineId(@Param("name") String name, @Param("email")String email);
	String finePw(@Param("id") String id, @Param("email")String email);
	void updatePw(User user);
	int finePwCheck(@Param("id") String id, @Param("email")String email);
	
	Grade getUserGradeByUserId(String id);
	UserPoint getUserPointByUserNo(int userNo);
	List<PointHistory> getUserPointHistoryByUserNo(int userNo);
	PointGrade getPointAndGradeByUserNo(int userNo);
	List<Coupon> getCouponInfoByUserNo(int userNo);
	
	// 관리자페이지 예약현황에서 고객상세정보 확인용도
	User getUserByNo(int no);
	
	// 관리자페이지 예약등록 고객검색
	List<User> getUserByName(String keyword);
	Grade getGrade(String keyword);
}
