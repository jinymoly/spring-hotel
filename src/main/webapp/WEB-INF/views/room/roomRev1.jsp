<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp" %>
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
<!-- roomRev1 CSS -->
<link
	href="${pageContext.request.contextPath}/resources/room/css/roomRev1.css"
	rel="stylesheet">
<!-- Link Swiper'-->
<link href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
<!-- calendar range picker -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<link rel="stylesheet" type="text/css"
	href="https://npmcdn.com/flatpickr/dist/themes/airbnb.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://npmcdn.com/flatpickr/dist/l10n/ko.js"></script>


<!-- total zone -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>

<title>Spring Hotel</title>
</head>
<body>
	<c:set var="menu" value="roomRev1" />
	<%@ include file="../common/nav.jsp"%>
	<div class="contain">
		<div class="container">
			<!-- Rev step 1 -->
			<div class="rev-step">
				<img alt="" src="../resources/images/room/rev/revTitle1.png">
			</div>
			<form id="form-rev" name="form-rev" action="roomRev2" method="post" >
				<!-- 검색 시작 -->
				<div class="rev-main-search">
					<div class="s-city">
						<span class="grey">호텔 또는 도시</span>
						<div class="city-box">
							<span class="city-text"><input type="text" name="locationName"
								id="city" placeholder="호텔을 선택해주세요."></span> <span
								class="city-img"><img alt=""
								src="../resources/images/room/rev/search_icon.png"></span>
						</div>
					</div>
					<!-- 체크인아웃 -->
					<div class="s-date">
						<div class="checkin">
							<span class="grey">체크인</span>
							<div class="ckindate">
								<!-- 달력 from-->
								<label for="from"></label> <input type="text" name="checkinTime"
									class="c-from" id="from" pattern="yyyy-dd-mm" value="" />
							</div>
						</div>
						<div class="night">
							<span class="night-img"> <img alt=""
								src="../resources/images/room/rev/ico_night.png"></span>
							<!-- 몇 박  -->
							<div class="night-count">
								<span id="night">N</span>박
							</div>
						</div>
						<div class="checkout">
							<span class="grey">체크아웃</span>
							<div class="ckoutdate">
								<!-- 달력 to -->
								<label for="to"></label> <input type="text" name="checkoutTime"
									class="c-to" id="to" pattern="yyyy-dd-mm" value="" />
							</div>
						</div>
					</div>
					<!-- 객실/성인/어린이 -->
					<div class="s-room">
						<div class="r-count"
							style="display: inline-grid; margin-top: 7px;">
							<span class="grey">객실</span>
							<div class="cb c1" id="cb-r"
								style="background-color: burlywood; width: 50px; color: whitesmoke; border: 1px solid;">선택</div>
						</div>
						<div class="r-adult" >
							<span class="grey" style="padding-top: 7px;">성인</span>
							<div class="cb c2" id="cb-a">2</div>
							<input id="cb-a-input" type="hidden" name="adult" style="width: 20px; height: 20px;font-size: 14px" value="2">
						</div>
						<div class="r-child">
							<span class="grey">어린이</span>
							<div class="cb c3" id="cb-c">0</div>
							<input id="cb-c-input" type="hidden" name="child" style="width: 20px; height: 20px;font-size: 14px" value="0">
						</div>

					</div>
					<div class="s-btn">
						<a href="#" ><img alt="search"
							src="../resources/images/room/rev/brw_search.gif" id="btn1">
						</a>
					</div>
				</div>

				<!-- drop search box -->
				<div class="drop-search-box">

					<div class="search-default" id="no1">예약을 원하시는 호텔, 날짜, 인원을
						선택해주세요.</div>



					<!-- 도시 선택 -->
					<div class="no2 border-bottom p-2 " id="no2">
						<div class="city-block">
							<div class="city-title1">권역별</div>
							<div class="city-title2">호텔정보</div>
						</div>

						<span style="display: none;"> <img alt=""
							src="../resources/images/room/rev/txt_hotel_search_noti.png">
						</span>
						<div class="city-box">
							<div class="btn-title">
								스프링호텔
								<div class="city-btn">
									<a class="btn" id="bt-s">서울</a> <a class="btn" id="bt-j">제주</a>
									<a class="btn" id="bt-b">부산</a> <a class="btn" id="bt-ga">강릉</a>
									<a class="btn" id="bt-gw">광주</a>
								</div>
							</div>
							<div class="city-info">
								<!-- 이미지 : 다중선택시 슬라이드 -->
								<div class="slide">
									<div
										style="-swiper-navigation-color: #fff; - -swiper-pagination-color: #fff"
										class="swiper mySwiper2">
										<div class="swiper-wrapper">
											<div class="swiper-slide">
												<img src="../resources/images/room/location/서울.jpg" />
											</div>
											<div class="swiper-slide">
												<img src="../resources/images/room/location/제주.jpg" />
											</div>
											<div class="swiper-slide">
												<img src="../resources/images/room/location/부산.jpg" />
											</div>
											<div class="swiper-slide">
												<img src="../resources/images/room/location/강릉.jpg" />
											</div>
											<div class="swiper-slide">
												<img src="../resources/images/room/location/광주.jpg" />
											</div>
										</div>
										<div class="swiper-button-next"></div>
										<div class="swiper-button-prev"></div>
									</div>
								</div>
								<div class="swiper mySwiper" style="display: none;">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<img src="../resources/images/room/detail/d1.jpg" />
										</div>
									</div>
								</div>

							</div>
						</div>
						<div class="ok-btn">
							<a id="cityc"><img alt=""
								src="../resources/images/room/rev/ok.gif"></a>
						</div>
					</div>
					<div class="part-test"></div>

					<!-- 객실 / 인원 카운트 -->
					<div class="room-box-1 no3 border-bottom" id="no3">
						<div class="room-add1">
							<dl>
								<!-- 추가버튼을 누르면 이 div가 보인다 -->
								<dt class="room-add2">객실</dt>
								<dd>
									<ul>
										<li class="first"><strong class="tit">성인</strong>
											<div class="number">
												<a href="" id="dec-a"> <svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-dash-lg"
														viewBox="0 0 16 16">
	  												<path fill-rule="evenodd"
															d="M2 8a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11A.5.5 0 0 1 2 8Z" />
												</svg>
												</a> <span id="updown-a">2</span> <a href="" id="inc-a"> <svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-plus-lg"
														viewBox="0 0 16 16">
	  											<path fill-rule="evenodd"
															d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z" />
												</svg>
												</a>
											</div></li>
										<li><strong class="tit">어린이</strong>
											<div class="number">
												<a href="" id="dec-c"> <svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-dash-lg"
														viewBox="0 0 16 16">
	  												<path fill-rule="evenodd"
															d="M2 8a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11A.5.5 0 0 1 2 8Z" />
												</svg>
												</a> <span id="updown-c">0</span> <a href="" id="inc-c"> <svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-plus-lg"
														viewBox="0 0 16 16">
	  											<path fill-rule="evenodd"
															d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z" />
												</svg>
												</a>
											</div></li>
										<!-- 추가 버튼 -->
										<li class="room-add-option"><a href="" id="roomAdd"> <span
												class="room-add">+</span> <span class="room-add-text">추가</span>
										</a></li>
									</ul>
								</dd>
							</dl>
						</div>

						<!-- notice list  -->
						<ul class="notice">

							<!-- <li>
								: ※ 객실은 최대 3개까지 선택 가능합니다.
							</li> -->
							<li>
								<!-- :b --> ※ 어린이 37개월 이상 ~ 만 12세 이하
							</li>
						</ul>
						<div class="ok-btn1">
							<a href="#"><img alt="검색"
								src="../resources/images/room/rev/ok.gif" id="btn2"></a>
						</div>
					</div>
					<div class="part-test"></div>

					<!-- 검색을 누르면 나오는 객실  -->
					<!-- 객실(갯수) /////////////// 키워드 별 /// 가격 순  -->
					<div class="after-search-box" id="after-search-box">
						<div class="rev-tab">
							<!-- inline -->
							<div class="no4" id="no4">

								<div class="tab">
									<div class="tab-start">객실 (12)</div>
									<span class="tab-sort"> <select>
											<option>낮은 가격 순</option>
											<option>높은 가격 순</option>
											<option>최신 순</option>
											<option>인기 순</option>
											<option>추천 순</option>
									</select>
									</span>
								</div>
								<!-- 아코디언 박스 -->
								<div class="accordion" id="accordionExample" style="display: none;">
									<div class="accordion-item">
										<h2 class="accordion-header" id="headingOne">
											<button class="accordion-button" type="button"
												data-bs-toggle="collapse" data-bs-target="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne">
												<span>키워드</span>
											</button>
										</h2>
										<div id="collapseOne" class="accordion-collapse collapse show"
											aria-labelledby="headingOne"
											data-bs-parent="#accordionExample">
											<div class="accordion-body">
												<div class="accordion-box">
													<strong>키워드 검색</strong><span class="select-clear"><a
														href="#"><img alt="선택해제"
															src="../resources/images/room/rev/check_clear.png"></a></span>
												</div>
												<div class="check-keyword">
													<!-- inline  -->
													<div>
														<input class="css-checkbox checkbox" type="checkbox"
															data-type="outdoor-pool" name="keyword"
															value="OutdoorPool"> <label class="css-label">야외수영장</label>
													</div>
													<div>
														<input class="css-checkbox checkbox" type="checkbox"
															data-type="breakfast" name="keyword" value="breakfast">
														<label class="css-label">조식</label>
													</div>
													<div>
														<input class="css-checkbox checkbox" type="checkbox"
															data-type="winery" name="keyword" value="winery">
														<label class="css-label">와이너리</label>
													</div>
													<div>
														<input class="css-checkbox checkbox" type="checkbox"
															data-type="spa" name="keyword" value="spa"> <label
															class="css-label">스파</label>
													</div>
													<div>
														<input class="css-checkbox checkbox" type="checkbox"
															data-type="lounge" name="keyword" value="lounge">
														<label class="css-label">라운지혜택</label>
													</div>
													<div>
														<input class="css-checkbox checkbox" type="checkbox"
															data-type="extrabed" name="keyword" value="extrabed">
														<label class="css-label">엑스트라 베드</label>
													</div>
													<div class="keyword-button">
														<a href="#"><img alt="적용"
															src="../resources/images/room/rev/step1_select.gif"></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<!-- 숙소 리스트  -->
								<div class="rev-room-info">
									<!-- : -->
									<p>* 할인이 적용된 요금입니다.</p>
									<span>객실예약 연락처 : 02-2230-3310 <a href="#">[ 문의하기 ]</a>
									</span>
								</div>
								<div class="rev-room-list">
									<ul class="rev-room-list-ul">
										<!-- 룸 박스 1 -->
										<li class="room-first" style="display: block;">
										<c:forEach var="room" items="${rooms }">
												<dl class="room-info"
													style="border-bottom: 1px dotted #80808030; padding: 20px;">
													<!-- 사진/내용/가격/버튼 포함 -->
													<dt class="p-name" id="room-${room.id}"
														data-room-id="${room.id }">${room.name }</dt>
													<!-- 룸 이름 -->
													<dd class="p-img">
														<a href="#" onclick="open-img-pop"> <img alt="객실사진"
															src="../resources/images/room/detail/d1.jpg">
														</a>
													</dd>
													<!-- 이미지 -->
													<dd class="p-cont">
														<ul class="room-detail-info">
															<!-- <li>객실크기 : 36㎡</li> -->
															<li>침대타입 : 더블(킹 사이즈), 트윈</li>
														</ul>
														<a href="#" onclick="open-img-pop"> <span>객실
																자세히 보기</span>
														</a>
													</dd>
													<!-- 정보 -->
													<dd class="p-detail">
														<div class="price-and-btn">
															<div class="detail-price">
																<strong class="price"><span
																	id='room-price-${room.id}' style="margin-left: 30px;">${room.price }</span>
																	<span style="margin-left: 10px;">~</span></strong> <span
																	class="days">1박</span>
															</div>
															<!-- 가격/ 작은글씨: 몇 박  -->
															<a href="" data-room-id="${room.id }" class="btn-rev">
																<img alt="닫기버튼"
																src="../resources/images/room/rev/step1_open.gif">

															</a>
															<!-- 버튼 -->
														</div>

														<!-- 베드 타입 선택  -->
														<div class="rev-open">
															<div class="bed-type" id="bed-type">
																<div class="bed-type1">
																	<div class="radio-box">
																		<input type="radio" name="bedType" value="Twin">
																		<img alt="twin"
																			src="../resources/images/room/rev/single_bed.jpg">
																		<label>트윈</label>
																	</div>
																	<span class="bed-type-price"><fmt:formatNumber
																			value="${room.price }" />원</span>
																</div>
																<div class="bed-type2">
																	<div class="radio-box">
																		<input type="radio" name="bedType" value="Double">
																		<img alt="double"
																			src="../resources/images/room/rev/double_bed.jpg">
																		<label>더블</label>
																	</div>
																	<span class="bed-type-price"><fmt:formatNumber
																			value="${room.price }" />원</span>
																</div>
															</div>
														</div>
														<!-- 푸터 위에 창이  -->
													</dd>
												</dl>
											</c:forEach> <input type="hidden" id="roomName" name="roomName"></li>
									</ul>
								</div>
							</div>
							<!-- 룸 1개 끝 지점  -->

							<!-- 요금 합계  -->
							<div id="Accordion_wrap" style="display: none;">
								<div class="anw">
									<div class="row p-3">
										<div class="total-info col-3">
											<div class="total-title">예약정보</div>
											<div>
												<img alt="호텔사진"
													src="../resources/images/room/location/서울.jpg">
											</div>
											<div class="total-sub">
												<div class="sub-title">체크인-체크아웃</div>
												<span>
													<span id="total-from">0</span>~
													<span id="total-to">0</span>
												</span>
											</div>
											<div class="total-sub-a">
												<div class="sub-title">객실</div>
												<span>
													<span id="accordion-roomName">Deluxe</span>,<span id="accordion-bedtype">Double</span>
												</span>
											</div>
											<div class="total-sub">
												<div class="sub-title">투숙인원</div>
												<span>성인 <span id="add-adult-number">2</span>, 어린이 <span id="add-child-number">2</span></span>
											</div>
										</div>
										<div class="total-detail col-9">
											<div class="total-title-box">
												<div class="total-title">요금상세 (<span id="box-night">n</span>박)</div>
												<span><img alt="예약초기화"
													src="../resources/images/room/rev/rev_clear.png"></span>
											</div>
											<div class="total-sub-box">
												<div class="total-sub">객실1&nbsp;(성인 <span id="a-count">n</span> / 어린이 <span id="c-count">n</span>)</div>
												<span><span id="box-total-price">0</span>원</span>
											</div>
											<div class="total-sub2-box row">
												<div class="객실요금 col-4">
													<div>객실요금</div>
													<div class="sub2-price"><span id="box-room-price">${room.price }</span> 원<input type="hidden" name="roomPrice" id="roomPrice-input"> </div>
												</div>
												<div class="옵션사항 col-4">
													<div>옵션사항</div>
													<div class="sub2-price">-</div>
												</div>
												<div class="부가가치세 col-4">
													<div>부가가치세</div>
													<div class="sub2-price"><span id="box-vat">-</span> 원</div>
												</div>
											</div>
											<div class="">부가가치세 10%가 포함된 금액입니다.</div>
										</div>
									</div>
								</div>
								<div class="que">

									<div class="arrow-wrap">
										<span class="arrow-top">↑</span> <span class="arrow-bottom">상세보기</span>
									</div>
									<div class="total-text">
										<span class="text1">요금합계</span> <span class="text2">부가가치세
											포함</span>
									</div>
									<div class="total-price" style="margin-top: 10px;"><span id="totalPrice">0</span>원</div>
									<button type="submit" id="submit"
										style="background-color: #3e2b2c; border: none; width: 140px; color: white; font-size: 14px; height: 50px;">선택</button>
								</div>
							</div>
							<!-- 요금 합계 끝  -->
						</div>
						<div class="part-test" style="margin-top: 100px"></div>
					</div>
				</div>
				
				</form>
			
		</div>
	</div>

	<%@ include file="../common/footer.jsp"%>

	<script>
/* 검색 */
$('#city').click(function(){
	$("#no1").hide();
	$("#no2").toggle();
	$("#no3").hide();
})
$('#from').click(function() {
	$("#no1").show();
	$("#no2").hide();
	$("#no3").hide();
})

$('#cb-r').click(function() {
	$("#no1").hide();
	$("#no2").hide();
	$("#no3").toggle();
})

$('#btn1').click(function() {
//	location.href="/room/searchroom";
	$("#no3").hide();
	$("#no1").hide();
	$("#no4").show();
})

$('#btn2').click(function() {
	$("#no1").show();
	$("#no2").hide();
	$("#no3").hide();
	
})
/* 예약하기 버튼을 누르면  총 합계 아코디언 */
$('.btn-rev').click(function(){
	$("#no1").hide();
	$("#Accordion_wrap").css('display','block')
    .css('width', '1100px')
    .css('position', 'sticky')
    .css('bottom','0')
    .css('background-color', '#e4e1e1');
});

/* 호텔 선택 */
	$(function() {
		
		$(".city-btn a").click(function(){
			let city = $(this).text();
			$("#city").val(city);
			return false;
		});

		$(".ok-btn1 a").click(function(){
			let acount = $('#cb-a').text();
			$("#cb-a-input").val(acount);
			$("#add-adult-number").val(acount);
			return false;
		});
		
		$(".ok-btn1 a").click(function(){
			let acount = $('#cb-c').text();
			$("#cb-c-input").val(acount);
			return false;
		});
	});
	
	$("#cityc").click(function(){
		$("#no2").hide();
		$("#no1").show();
		$("#from").show();
	})
	
	<!-- Swiper -->
	var swiper = new Swiper(".mySwiper", {
	  loop: true,
	  spaceBetween: 10,
	  slidesPerView: 4,
	  freeMode: true,
	  watchSlidesProgress: true,
	});
	var swiper2 = new Swiper(".mySwiper2", {
	  loop: true,
	  spaceBetween: 10,
	  navigation: {
	    nextEl: ".swiper-button-next",
	    prevEl: ".swiper-button-prev",
	  },
	  thumbs: {
	    swiper: swiper,
	  },
	});
	
	/* flatpicker */
	var fp1 = flatpickr(document.getElementById("from"), {
		"locale": "ko",
		"minDate" : "today"
	});
	var fp2 = flatpickr(document.getElementById("to"), {
		"locale": "ko",
	});
	
	fp1.config.onChange.push(function(selectedDates) {
		fp2.config.maxDate = selectedDates[0].fp_incr(21);
		fp2.set('enable', [ function(date) { return (date >= selectedDates[0].fp_incr(1)) } ])
	} );
		
	/* 숙박일 계산 */
	$('.s-btn a').click(function() {
		let checkinDate = $('input[name=checkinTime]').val();
		let checkoutDate = $('input[name=checkoutTime]').val();
		
		let days = moment(checkoutDate).diff(moment(checkinDate), 'days');
		$('#night').text(days);
	})
	
	
	/* 객실 카운트 */
	$(function(){
		$('#dec-a').click(function(e){
			e.preventDefault();
			var stat = $('#updown-a').text();
			var num = parseInt(stat,10);
			num--;
			if(num<=0){
				alert('더이상 줄일수 없습니다.');
				num =1;
			}
			$('#updown-a').text(num);
			$('#cb-a').text(num);
		});
		$('#inc-a').click(function(e){
			e.preventDefault();
			var stat = $('#updown-a').text();
			var num = parseInt(stat,10);
			num++;
			
			if(num>5){
				alert('더이상 늘릴수 없습니다.');
				num=5;
			}
			
			$('#updown-a').text(num);
			$('#cb-a').text(num);
			
		});
		
		$('#roomAdd').click(function(){
			let addRoom = $(".room-add2").length;
			if (addRoom >=3) {
				alert("최대 3개까지만 가능합니다.");
				return;
			}
			
			let content = `
				<dl>
					<!-- 추가버튼을 누르면 이 div가 보인다 -->
					<dt class="room-add2">객실</dt>
					<dd>
						<ul>
							<li class="first"><strong class="tit">성인</strong>
								<div class="number">
									<a href="" id="dec-a"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-dash-lg"
											viewBox="0 0 16 16">
											<path fill-rule="evenodd"
												d="M2 8a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11A.5.5 0 0 1 2 8Z" />
									</svg>
									</a> <span id="updown-a">1</span> <a href="" id="inc-a"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-plus-lg"
											viewBox="0 0 16 16">
										<path fill-rule="evenodd"
												d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z" />
									</svg>
									</a>
								</div></li>
							<li><strong class="tit">어린이</strong>
								<div class="number">
									<a href="" id="dec-c"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-dash-lg"
											viewBox="0 0 16 16">
											<path fill-rule="evenodd"
												d="M2 8a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11A.5.5 0 0 1 2 8Z" />
									</svg>
									</a> <span id="updown-c">0</span> <a href="" id="inc-c"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-plus-lg"
											viewBox="0 0 16 16">
										<path fill-rule="evenodd"
												d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z" />
									</svg>
									</a>
								</div></li>
							<!-- 추가 버튼 -->
							<li class="room-add-option"><a href="" id="roomAdd"> <span
									class="room-add">+</span> <span class="room-add-text">추가</span>
							</a></li>
						</ul>
					</dd>
				</dl>
			`;
			$(this).before(content);
		})
	});
	/* 객실 선택박스의 예약하기 a버튼을 눌러도 페이지 이동 못 하게 */
	$('.price-and-btn a' ).click(function(){
	    return false;
	});
	
	/* 선택한 객실 이름을 등록 */
	$(".btn-rev").click(function(){
		let roomId = $(this).attr('data-room-id');
		let roomName = $('#room-' + roomId).text();
		let bedType = $('input[name=bedType]:checked').val();
		let checkin = $('input[name=checkinTime]').val();
		let checkout = $('input[name=checkoutTime]').val();
		let adultC = $('input[name=adult]').val();
		let childC = $('input[name=child]').val();
		let roomPrice = $('#room-price-'+roomId).text();
		let night = $('#night').text();
		let vat = (parseInt(roomPrice)*0.1);
		let a = vat.toLocaleString();
		let totalPrice = (parseInt(night)*(parseInt(roomPrice)+parseInt(vat))).toLocaleString();


		$(":input[name=roomName]").val(roomName);
		$("#accordion-roomName").text(roomName);
		$("#accordion-bedtype").text(bedType);
		$('#total-from').text(checkin);
		$('#total-to').text(checkout);
		$('#add-adult-number').text(adultC);
		$('#add-child-number').text(childC);
		$('#a-count').text(adultC);
		$('#c-count').text(childC);
		$('#box-room-price').text(roomPrice);
		
		$('#box-night').text(night);
		$('#box-vat').text(a);
		$('#box-total-price').text(totalPrice);
		$('#totalPrice').text(totalPrice);
		
		let roomPriceInput = $('#box-room-price').text();
		$('#roomPrice-input').val(roomPriceInput);
		
		
		
		return false;
	})
	
	/* let bedType = $(":input[name=bedType]").attr();
	$() */
	
	
	/* 인원 증 감 */
	$(function(){
		$('#dec-c').click(function(e){
		e.preventDefault();
		var stat = $('#updown-c').text();
		var num = parseInt(stat,10);
		num--;
		if(num<=0){
		alert('더이상 줄일수 없습니다.');
		num = 0;
		}
		$('#updown-c').text(num);
		$('#cb-c').text(num);
		});
		$('#inc-c').click(function(e){
		e.preventDefault();
		var stat = $('#updown-c').text();
		var num = parseInt(stat,10);
		num++;
	
		if(num>5){
		alert('더이상 늘릴수 없습니다.');
		num=5;
		}
		$('#updown-c').text(num);
		$('#cb-c').text(num);
		});
		});
	
	// 요금 합계 
	$(".que").click(function() {
	$(this).prev(".anw").stop().slideToggle(300);
	$(this).toggleClass('on').siblings().removeClass('on');
	$(this).prev(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
	});
	
	</script>
	</body>
	</html>