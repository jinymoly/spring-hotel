package com.example.demo.service;

import java.text.SimpleDateFormat;

import static org.assertj.core.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.assertThrows;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import com.sh.FinalSpringHotelApplication;
import com.sh.dto.RoomRevUpdateDto;
import com.sh.exception.RoomRevException;
import com.sh.mapper.RoomMapper;
import com.sh.service.RoomService;
import com.sh.vo.RoomRev;
import com.sh.web.form.RoomReservationForm;

import lombok.extern.slf4j.Slf4j;

@SpringBootTest(classes = FinalSpringHotelApplication.class)
@ExtendWith(SpringExtension.class) // junit5 에서의 Runwith와 같다, JUnit5는 JUnit Vintage라는 서브패키지를 통해 자체적으로 하위호환성을 포함
@Slf4j
public class RoomRevTest {
    
    @Autowired
    RoomService roomService;
    @Autowired
    RoomMapper roomMapper;

    @Test
    @DisplayName("예약 진행 및 DB 저장 확인")
    @Transactional
    public void roomReservation() throws Exception{
        //given
        RoomReservationForm roomrev = testData();

        //when
        roomMapper.insertRoomRev(roomrev);
        RoomRev findRoomRevNo = roomMapper.getRoomRevByRoomRevNo(1081);

        //then
        assertThat(findRoomRevNo.getNo()).isNotNull();
        log.info("========= 예약번호가 존재합니다." + findRoomRevNo.getNo() + "번 예약!!!!!! ========");
    }


    
    @Test
    @DisplayName("존재하지 않는 예약 번호 조회시 예외 발생 확인")
    @Transactional
    public void findRoomReservationInfo() {
        Throwable exception = assertThrows(RoomRevException.class, () -> roomService.getRevNonMember(2222));
        //assertEquals("예약 번호가 존재하지 않습니다.", exception.getMessage());
        log.info("====== ERROR ===== 예약 조회 실패 이유 : " + exception.getMessage() +" ======");

        
    }

    // 예약 변경 
    @Test
    @DisplayName("예약 변경 진행 테스트")
    public void updateRoomRev() throws Exception{
        //given
        RoomRev findRevInfo = roomMapper.getRoomRevByRoomRevNo(1066);
        RoomRevUpdateDto updateDto = new RoomRevUpdateDto();
        updateDto.setNo(findRevInfo.getNo());
        updateDto.setRequest("얼음 바스켓 요청 가능한가요?");
        updateDto.setOptionCheckinTime("22:00");
        roomMapper.updateRoomRev(updateDto);

        log.info("====== 예약 번호 " + findRevInfo.getNo() + " 내역 조회합니다. ======");
        log.info("====== 요청 내역 : " +"[ "+findRevInfo.getRequest() + " ]"+" 업데이트 되었습니다. ======");
        log.info("====== 체크인 시간 : " + findRevInfo.getOptionCheckinTime() + " 로 업데이트 되었습니다. ======");
        log.info("====== 업데이트 날짜 : " + findRevInfo.getUpdatedDate() + " 입니다. ======");

    }

    // 예약 취소 << 상태 변경
    

    // test용 데이터 생성 
    private RoomReservationForm testData() throws Exception{
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        RoomReservationForm testRoomRevData = new RoomReservationForm();
        testRoomRevData.setLocationName("제주");
        testRoomRevData.setCheckinTime(formatter.parse("2022-11-11"));
        testRoomRevData.setCheckoutTime(formatter.parse("2022-12-12"));
        testRoomRevData.setAdult(2);
        testRoomRevData.setChild(1);
        testRoomRevData.setBedType("Double");
        testRoomRevData.setRoomName("비즈니스 디럭스");
        testRoomRevData.setOptionAdultBf(2);
        testRoomRevData.setOptionChildBf(1);
        testRoomRevData.setOptionTotalPrice(10000000);
        testRoomRevData.setOptionCheckinTime("14:00");
        testRoomRevData.setRequest("고층 시티뷰");
        testRoomRevData.setTitle("mr");
        testRoomRevData.setUserName("샌디치");
        testRoomRevData.setFirstName("dichiii");
        testRoomRevData.setLastName("San");
        testRoomRevData.setEmail("sandichiii@gmail.com");
        testRoomRevData.setTel("010-3939-3939");
        testRoomRevData.setCountry("KR");
        testRoomRevData.setCardType("AX");
        testRoomRevData.setCardNumber1(4321);
        testRoomRevData.setCardNumber2(4321);
        testRoomRevData.setCardNumber3(4321);
        testRoomRevData.setCardNumber4(4321);
        testRoomRevData.setCardValidMonth(03);
        testRoomRevData.setCardValidYear(2028);
        testRoomRevData.setTotalPrice(3330000);
        testRoomRevData.setRoomPrice(2220000);

        return testRoomRevData;
    }
}
