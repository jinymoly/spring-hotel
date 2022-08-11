<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- roomRev2 CSS -->
<link
	href="${pageContext.request.contextPath}/resources/room/roomRev2.css"
	rel="stylesheet">
<!-- total zone -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<title>Spring Hotel</title>
</head>
<body>
	<c:set var="menu" value="roomRev2" />
	<%@ include file="../common/nav.jsp"%>
	<div class="contain">
		<div class="container">
			<!-- Rev step 2 -->
			<div class="rev-step">
				<img alt="" src="../resources/images/room/rev/revTitle2.png">
			</div>
			<form id="form-rev" action="#" method="get">
				<!-- action 1 -->
				<div id="Accordion_wrap1" style="border: 0.01em solid #80808063;">
					<div class="que1">
						<span style="margin-left: 20px;">객실 1</span>
						<div class="arrow-wrap1">
							<span class="arrow-top1">↑</span> <span class="arrow-bottom1">↓</span>
						</div>

					</div>
					<div class="anw1 row p-3">
						<div class="option-and-checkin col-6">
							<div class="option-box">
								<div class="option-title">옵션사항</div>
								<div class="option-c">
									<!-- 성인 조식 -->
									<div class="row">
										<div class="adult-breakfast col-8">성인 조식 / 45,454원</div>
										<div class="count col-4">
											<a href=""> <img alt="dec"
												src="../resources/images/room/rev/dec_btn.png">
											</a>0 <a href=""> <img alt="inc"
												src="../resources/images/room/rev/inc_btn.png">
											</a><input type="hidden" id="adultMeal" />
										</div>
									</div>
									<!-- 엑스트라 베드 -->
									<div class="row" style="margin-block: 30px;">
										<div class="extra-bed col-8">엑스트라 베드 / 45,454원</div>
										<div class="count col-4">
											<a href=""> <img alt="dec"
												src="../resources/images/room/rev/dec_btn.png">
											</a>0 <a href=""> <img alt="inc"
												src="../resources/images/room/rev/inc_btn.png">
											</a><input type="hidden" id="extraBed" />
										</div>
									</div>
									<!-- 어린이 조식 -->
									<div class="row">
										<div class="minor-breakfast col-8">어린이 조식 / 45,454원</div>
										<div class="count col-4">
											<a href=""> <img alt="dec"
												src="../resources/images/room/rev/dec_btn.png">
											</a>0 <a href=""> <img alt="inc"
												src="../resources/images/room/rev/inc_btn.png">
											</a><input type="hidden" id="minorMeal" />
										</div>
									</div>
								</div>
							</div>
							<div class="text-box" style="margin-block: 60px; color: gray;">
								<div class="text-gray">※ 위 요금에서 부가가치세 10%가 부과됩니다.</div>
								<div class="text-gray">※ 위 조식 요금은 성인 투숙객에 한하여 할인이 적용된 금액이며
									체크인 이후 조식 추가 요청 시에는 정상요금 70,000원으로 이용 가능합니다.</div>
								<div class="text-gray">※ 성인 : 만 13세 이상 / 어린이 : 37개월 이상 ~ 만
									12세 이하</div>
								<div class="text-gray">※ 조식이 포함된 패키지를 예약하실 경우 추가 인원에 대한
									조식만 선택해주시기 바랍니다.</div>
								<div class="text-gray">※ 37개월 미만의 유아 동반 시 조식에 대한 요금은
									무료입니다.</div>
							</div>
							<div class="ckin-box" style="margin-bottom: 30px;">
								<div class="ckin-title"
									style="display: flex; justify-content: space-between;">
									체크인 예정시간 <span class="form-check"
										style="color: gray; font-size: 14px; font-weight: 400;">
										<input class="form-check-input" type="checkbox" value=""
										id="flexCheckChecked" checked> <label
										class="form-check-label" for="flexCheckChecked"> 신청하기</label>
									</span>
								</div>
								<div class="time-select">
									<!-- 신청하기 체크시에만 available -->
									<select
										style="width: 490px; height: 30px; margin-bottom: 10px;">
										<option>선택</option>
										<option>14:00</option>
										<option>15:00</option>
										<option>16:00</option>
										<option>17:00</option>
										<option>18:00</option>
										<option>19:00</option>
										<option>20:00</option>
										<option>21:00</option>
										<option>22:00</option>
										<option>23:00</option>
										<option>24:00</option>
									</select>
								</div>
								<div class="text-gray" style="color: gray; margin-top: 10px;">※
									선택 가능한 시간대 외에 체크인하실 경우 별도의 요금이 추가될 수 있으며, 관련 문의사항은
									객실예약(02-2230-3310)으로 연락해 주시기 바랍니다.</div>
							</div>

						</div>
						<div class="request col-6"
							style="border-left: 1px dotted #dee2e6;">
							<div class="request-title">추가 요청사항</div>
							<input class="request-form" type="text"
								placeholder="공항교통편 문의 또는 호텔 이용 시 문의하실 사항이 있으시면 입력해 주십시오."
								onkeyup="길이체크">
							<div class="text-gray" style="color: gray; margin-top: 25px;">※
								특수문자 또는 이모티콘 사용이 제한되오니, 텍스트만 입력해주시기 바랍니다.</div>
							<div class="text-gray" style="color: gray; margin-top: 10px;">※
								전망은 체크인 당일 사정에 따라 달라질 수 있습니다.</div>
						</div>
					</div>
				</div>

				<!--  -->
				<div id="Accordion_wrap2"
					style="margin-top: 30px; border: 0.01em solid #80808063;">
					<div class="que2">
						<span style="margin-left: 20px;">유의사항</span>
						<div class="arrow-wrap2">
							<span class="arrow-top2">↑</span> <span class="arrow-bottom2">↓</span>
						</div>
					</div>
					<div class="anw2 p-3"
						style="display: flex; border-bottom: 1px solid #dddddd; display: none; overflow: hidden; font-size: 16px; padding: 27px 0;">
						<div class="h-guide" style="margin-bottom: 30px;">
							<div class="h-guide-title mb-1"
								style="color: gray; font-weight: bolder; font-size: 14px;">호텔
								이용안내</div>
							<ul class="h-rule" style="font-size: 14px; color: gray;">
								<li>기준 인원을 초과하여 투숙 시 추가 인원에 대해 별도의 요금이 부과됩니다.<br> 추가
									인원에 대한 기본 요금은 성인 60,500원, 어린이 36,300원이며, 객실 타입 및 패키지 혜택에 따라
									상이합니다.<br> (성인 기준 : 만 13세 이상, 어린이 기준 : 37개월 이상 ~ 만 12세 이하)<br>
								</li>
								<li>37개월 미만의 유아 동반 시 추가 인원 요금 및 조식은 무료이며, 유아(37개월 미만) 동반
									여부는 체크인 시 프런트 데스크 직원에게 알려 주셔야 무료로 이용 가능합니다.</li>
								<li>체크인은 오후 2시 이후, 체크아웃은 오전 11시까지입니다.<br> 오후 2시 이전
									Early Check-in 또는 오전 11시 이후 Late Check-out 하실 경우 추가 요금이 부과될 수
									있습니다.
								</li>
								<li>체크인 시 등록카드 작성 및 투숙객 본인 확인을 위해 본인 사진이 포함된 신분증을 반드시 제시해
									주시기 바랍니다.</li>
								<li>본 홈페이지 요금은 할인 적용된 요금이며, 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다.
								</li>
								<li>어린이 동반 고객을 위한 영유아 용품(아기 욕조, 아기 침대, 어린이 베개 및 아동용 배스 로브와
									슬리퍼)은 객실예약과를 통해 사전 요청 가능하며, 이용 상황에 따라 조기 마감될 수 있습니다.<br>
									(단, 유모차는 현장에서만 대여 가능합니다.)
								</li>
								<li>대출 요청이 완료된 영유아 용품, 엑스트라 베드는 체크인 당일 18시까지 객실에 준비해 드립니다.
								</li>
								<li>자세한 객실안내는 객실예약과(02-2230-3310)로 문의 바랍니다.</li>
							</ul>
						</div>
						<div class="s-guide">
							<div class="s-guide-title mb-1"
								style="color: gray; font-weight: bolder; font-size: 14px;">부대시설
								이용안내</div>
							<ul class="s-rule" style="font-size: 14px; color: gray;">
								<li>체련장(Gym), 및 수영장, 실내 사우나(유료 시설)는 매월 3번째 수요일 정기 휴무입니다.</li>
								<li>체련장은 만 16세 이상, 실내 사우나는 만 13세 이상부터 이용 가능합니다.</li>
								<li>실내 수영장은 성인 고객 전용 시설로, 만 13세 미만 고객은 주말 및 공휴일에 한해 성인 보호자의
									보호 하에 이용 가능합니다.</li>
								<li>야외 수영장인 어번 아일랜드는 유료 시설로서 입장 혜택이 포함된 상품 외에는 이용 시 입장료가
									추가로 부과되며 사전 예약은 불가합니다. 쾌적하고 안전한 운영을 위해 적정 인원 초과 시 입장이 제한될 수
									있습니다.</li>
								<li>2022년 어번 아일랜드(야외 수영장) 운영 기간 : 3월 12일 ~ 11월 30일</li>
								<li>실내 및 야외 수영장의 성인풀에서는 신장 140cm 미만인 고객은 성인 보호자의 보호 하에 구명조끼
									착용 시에만 이용 가능합니다.</li>
								<li>실내 및 야외 수영장에서 다이빙은 금지되어 있습니다.</li>
								<li>성인풀, 키즈풀 및 자쿠지 등의 시설 이용 시 현장 라이프 가드 직원의 안내를 받으시기 바랍니다.
								</li>
								<li>호텔 부대시설은 감염병 예방법, 재난 안전법 등 관련 법령 및 방역당국 등의 규제, 조치 사항 등에
									따라 사전 고지 없이 이용이 제한되거나 변경될 수 있습니다.</li>
							</ul>
						</div>
					</div>
					<div class="que2">
						<span style="margin-left: 20px;">취소 및 환불규정</span>
						<div class="arrow-wrap2">
							<span class="arrow-top2">↑</span> <span class="arrow-bottom2">↓</span>
						</div>
					</div>
					<div class="anw2">
						<div class="cancel-info-box p-3">
							<div class="cancel-title"
								style="color: gray; font-weight: bolder; font-size: 16px; margin-bottom: 10px;">[취소/변경
								및 노쇼(No-show)안내]</div>
							<div class="cancel-content" style="color: gray; font-size: 14px;">
								숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다.<br> 숙박 예정일 1일 전
								18시 이후 취소/변경 및 노쇼(No-show) 발생 시,<br> - 성수기(5월~10월, 12월
								24일~31일) : 최초 1일 숙박 요금의 80%가 위약금으로 부과됩니다.<br> - 비수기(성수기 외
								기간) : 최초 1일 숙박 요금의 10%가 위약금으로 부과됩니다.
							</div>
						</div>
					</div>
				</div>
			</form>
			<div class="rewards-box" style="margin-top: 30px;
    text-align: center;
    padding: 30px;
    border: 5px solid #f1e3c4;">
				<div style="font-size: 17px; margin-bottom: 13px;">
					지금 바로, 신라리워즈 가입 후 포인트 적립과 할인 혜택을 받으세요.<br> 본 상품을 회원 가입 후 이용하시면
					<span style="font-size: 22px;
    font-weight: 600;
    color: #9a877a;">22,800P</span>가 적립됩니다.
				</div>
				<a href=""><img alt="신라리워즈가입버튼" src="../resources/images/room/rev/rewards.gif"></a>
			</div>
			<div class="gray-info"
				style="color: gray; font-size: 14px; margin-block: 10px; margin-bottom: 90px;">
				※ 상기 포인트는 적립 예상 포인트이며 체크아웃 이후 [마이페이지]에서 확인 가능합니다.<br> ※ 일부 프로모션
				예약은 신라리워즈 포인트 적립 대상에서 제외될 수 있습니다.
			</div>
			<!-- rev2 total accordion -->
			<div id="Accordion_wrap3" style="border-top:0.01em solid #8080809e;">
				<div class="anw3">
					<div class="row p-3">
						<div class="total-info col-3">
							<div class="total-title">예약정보</div>
							<div>
								<img alt="호텔사진"
									src="../resources/images/room/location/seoul.jpg">
							</div>
							<div class="total-sub">
								<div class="sub-title">체크인-체크아웃</div>
								<span>2022.09.13~2022.09.16(3박)</span>
							</div>
							<div class="total-sub-a">
								<div class="sub-title">객실</div>
								<span>Deluxe,Double</span>
							</div>
							<div class="total-sub">
								<div class="sub-title">투숙인원</div>
								<span>성인 2, 어린이 2</span>
							</div>
						</div>
						<div class="total-detail col-9">
							<div class="total-title-box">
								<div class="total-title">요금상세 (n박)</div>
								<span><img alt="예약초기화"
									src="../resources/images/room/rev/rev_clear.png"></span>
							</div>
							<div class="total-sub-box">
								<div class="total-sub">객실1(성인 n / 어린이 n)</div>
								<span>1,188,000원</span>
							</div>
							<div class="total-sub2-box row">
								<div class="객실요금 col-4">
									<div>객실요금</div>
									<div class="sub2-price">560,000 원</div>
								</div>
								<div class="옵션사항 col-4">
									<div>옵션사항</div>
									<div class="sub2-price">330,000 원</div>
								</div>
								<div class="부가가치세 col-4">
									<div>부가가치세</div>
									<div class="sub2-price">56,000 원</div>
								</div>
							</div>
							<div class="">부가가치세 10%가 포함된 금액입니다.</div>
						</div>
					</div>
				</div>
				<div class="que3">
					
					<div class="arrow-wrap3" style="display:flex;">
						<a href="#" style="margin-right: 250px;"><img alt="" src="../resources/images/room/rev/prev.gif"></a>
						<div class="arrow-top3">↑</div> <div class="arrow-bottom3">상세보기</div>
					</div>
					<div class="r-box" style="display: flex;">
						<div class="total-text" style="    margin-right: 130px;">
							<span class="text1">요금합계</span> <span class="text2">부가가치세
								포함</span>
						</div>
						<div class="total-price" style="margin-right: 20px;">616,000원</div>
						<a href="#" class="nm-btn"><img alt="선택"
							src="../resources/images/room/rev/nonmember.gif"></a>
							<a href="#" class="m-btn"><img alt="선택"
							src="../resources/images/room/rev/member_rev.gif"></a>
					</div>
				</div>
			</div>
			<!-- rev2 total accordion -->
		</div>
	</div>
<%@ include file="../common/footer.jsp"%>
<script>
// 아코디언 1
$(".que1").click(function() {
$(this).next(".anw1").stop().slideToggle(300);
$(this).toggleClass('on').siblings().removeClass('on');
$(this).next(".anw1").siblings(".anw1").slideUp(300); // 1개씩 펼치기
});

// 아코디언 2
$(".que2").click(function() {
	   $(this).next(".anw2").stop().slideToggle(300);
	  $(this).toggleClass('on').siblings().removeClass('on');
	  $(this).next(".anw2").siblings(".anw2").slideUp(300);
	});

// 아코디언 3
$(".que3").click(function() {
$(this).prev(".anw3").stop().slideToggle(300);
$(this).toggleClass('on').siblings().removeClass('on');
$(this).prev(".anw3").siblings(".anw3").slideUp(300);
});
</script>
</body>
</html>