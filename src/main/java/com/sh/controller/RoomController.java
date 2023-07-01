package com.sh.controller;



import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.sh.dto.RoomRevUpdateDto;
import com.sh.exception.RoomRevException;
import com.sh.service.RoomService;
import com.sh.vo.Room;
import com.sh.vo.RoomRev;
import com.sh.web.form.RoomReservationForm;
import com.sh.web.form.RoomRevCancelForm;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/room")
@SessionAttributes("roomReservationForm")
public class RoomController {

	@Autowired
	private RoomService roomService;
	
//객실 메인페이지 
	@GetMapping(path="/roomHome")
	public String home(Model model) {
		model.addAttribute("roomCategories", roomService.getAllRoomCategories());
		model.addAttribute("rooms", roomService.getAllRooms());

		return "room/roomHome";
	}

//객실 상세페이지
	@GetMapping(path="/roomDetail")
	public String detail(@RequestParam("categoryNo") int roomCategoryNo, Model model ) {
		Room room = roomService.getRoomDetail(roomCategoryNo);
		model.addAttribute("room", room);

		return "room/roomDetail";
	}
	
//예약
	//1 - 호텔, 날짜, 인원 선택
	@GetMapping(path="/roomRev1")
	public String roomRev1(@RequestParam(name="location", required = false)String locationName , Model model) {
		model.addAttribute("locations", roomService.getAllLocations());
		model.addAttribute("roomCategories", roomService.getAllRoomCategories());
		model.addAttribute("rooms", roomService.getAllRooms());
		model.addAttribute("roomReservationForm", new RoomReservationForm());
		
		return "room/roomRev1";
	}
	
	//1-1 객실 검색 
	@GetMapping(path="/roomRev1/search")
	@ResponseBody
	public List<Room> searchRoom(@RequestParam("rooms")int locationNo) {
		return roomService.getRoomByLocationNo(locationNo);
	}
	
	//2 - 옵션 선택 
	@PostMapping(path="/roomRev2")
	public String roomRev2(@ModelAttribute("roomReservationForm") RoomReservationForm roomReservationForm, Model model) { 
		System.out.println(roomReservationForm);
		log.info("Room Controller option check : {}", roomReservationForm);
		
		return "room/roomRev2";
	
	}
	//3 - 고객 정보 입력 
	@PostMapping(path="/roomRev3")
	public String roomRev3(@ModelAttribute("roomReservationForm") RoomReservationForm roomReservationForm, Model model) {
		//System.out.println(roomReservationForm);
		log.info("Room Controller add user : {}", roomReservationForm);

		return "room/roomRev3";
	}
	
	@PostMapping(path="/save")
	public String insert( @ModelAttribute("roomReservationForm") RoomReservationForm roomReservationForm, Model model) throws IOException{ // + 로그인 
		roomService.addNewReservation(roomReservationForm);
		model.addAttribute("roomReservationForm", roomReservationForm);
		log.info("Room Controller complete roomRev : {}", roomReservationForm);
		
		return "redirect:/room/complete";
	}
	//4- 예약 완료 
	@GetMapping(path="/complete")
	public String complete(Model model, SessionStatus sessionStatus, @ModelAttribute("roomReservationForm") RoomReservationForm roomReservationForm) {
		model.addAttribute("room", roomService.getAllRooms());
		model.addAttribute("roomReservationForm", roomReservationForm);
		sessionStatus.setComplete(); // 세션에 저장된 roomrevForm 객체를 clear 
		return "room/complete";
	}


	//비회원 예약 조회 
	@GetMapping("/confirmRevInfo")
	public String nonMemRevInfo(@RequestParam("roomRevNo") int no, Model model){
		try {
			RoomRev roomRev = roomService.getRevNonMember(no);
			model.addAttribute("roomRev", roomRev);
		} catch (RoomRevException e) {
			return "redirect:/room/confirmRevInfo";
		}	
		return "redirect:/room/complete?roomRevNo=" + no;
	}

	// 비회원 예약 변경 - request, updateDate(Date), checkin-time(String)
	@ResponseBody
	@PatchMapping(path = "/updateRoomRev")
	public ResponseEntity<String> updateRoomRev(@RequestBody RoomRevUpdateDto roomRevUpdateDto, @RequestParam("roomRevNo")int revNo) throws IOException{
		roomService.updateRoomRev(revNo, roomRevUpdateDto);
		log.info("Room Controller change : {}", roomRevUpdateDto);
		log.trace("trace ======== Room Controller change : {}", roomRevUpdateDto);


		return new ResponseEntity<>("예약정보가 변경되었습니다.", HttpStatus.OK);
	}

	// 비회원 예약 취소(status를 "R" -> "D")로 변경하며 예약 내역은 삭제하지 않는다.
	@ResponseBody
	@PatchMapping(path = "/deleteRoomRev")
	public ResponseEntity<String> deleteRoomRev(@RequestParam("revNo")int revNo, @RequestBody RoomRevCancelForm cancelForm){
		roomService.getRoomRevByRoomRevNo(revNo);
		roomService.deleteRoomRevByNonMember(revNo, cancelForm);
		log.info("Room Controller cancel : {}", cancelForm);
		log.trace("trace ==========", cancelForm);

		return new ResponseEntity<>("객실 예약이 취소되었습니다.", HttpStatus.OK);
	}

	
	
	
}