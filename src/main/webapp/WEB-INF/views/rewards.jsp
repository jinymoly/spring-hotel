<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">
	
	#container {padding-top: 65px; width: 1200px; height:1500px; margin: auto; padding-left: 0px; padding-right: 0px;}
	#container a {text-decoration: none; color: rgb(99, 62, 16);}
	#container h3 {font-family: 'Nanum Myeongjo', serif; color: rgb(133, 111, 86);}
	li {list-style: none;}
	#h5 {font-size: 15px; border-bottom: 3px; border-color: black; margin-top: 30px; margin-bottom: 30px;}
	#div-sidebar {float: left; width: 264px; height: 430px; background-color: rgb(241, 227, 196);
				  margin: auto; padding: 23px; text-align: left; border: 1px solid #e9dab8;}
	#div-sidebar ul {padding: 0px;}
	#list {margin-top: 25px; text-align: left;}
	#list li {margin-top:10px; text-align: left; font-size: 13px;}
	#div-sidebar span {color: rgb(99, 62, 16); font-weight: bold;}
	#div-sidebar li a {display: block; color: rgb(135,97,51);}
	#list-border {border-top: 1px dotted rgb(206,194,168); padding-top: 5px; margin-top: 5px;}
	#div-contents {float: right; margin: auto; width: 866px; height: 100%;}
	#div-box {width: 866px; height: 173px; border: solid 1px; border-color: rgb(227, 214, 198); 
			  padding: 19px 190px 9px 35px; margin-bottom: 50px; font-size: 14px;}
	#div-search {display:block; float: right; width:110px; height:34px; position: relative; left: 150px; bottom: 50px;
				 background-color: rgb(62,43,44); text-align: center;}
	#div-search a {display: block; color: white; padding-top: 2px;}
	#keywords li {float:left; border: 2px solid #e3d6c6; margin-right: 5px;}
	#keywords a {display:block; text-align:center; padding: 5px; background-color: #f4eee3; font-size: 13px;}
	#div-tab {width: 866px; height: 40px; margin-bottom: 20px; font-size: 14px; font-weight: bold;}
	#div-tab ul {padding: 0px;}
	#div-tab li {float: left; width:216px; height:38px; border: solid 1px rgb(161,136,111); padding-top: 2px;}
	#div-tab a {display: block; text-align: center; padding: 5px;}
	#div-selector {text-align: right; margin-bottom: 50px;}
	#div-packages {padding-bottom: 40px; margin-bottom: 40px; border-bottom: 1px solid rgb(226,224,215);}
	#div-packCon {margin-left: 310px; text-align: left;}
	.tagico {font-size: 11px; height: 17px; background-color: #9c5718; color: #fff; padding: 1px 3px; border-radius: 2px;}
	#dd-border {border-bottom: 1px dotted #bfbfbf; padding-bottom: 17px; margin-bottom: 17px;}
	#btn-reservation {float:right; position: relative; bottom: 178px;}
	
</style>
<title>Spring Hotel</title>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div id="div-sidebar">
		<h3 class="fs-7 border-dark border-bottom border-5 pb-3">스프링 리워즈</h3>
		<ul class="menu">
			<li id="list"><a href="#" onclick="benefits()" class="text-decoration-none font"><span>회원특전</span></a></li>
			<li id="list"><a href="#" onclick="points()" class="text-decoration-none"><span>포인트 안내</span></a></li>
			<li id="list"><span>회원전용 프로모션</span>
				<ul id="list-border">
					<li><a href="#" onclick="roomPackage()" class="text-decoration-none">객실 패키지</a></li>
					<li><a href="#" onclick="events()" class="text-decoration-none">이벤트</a></li>
				</ul>
			</li>
			<li id="list"><span>스프링리워즈 문의</span>
				<ul id="list-border">
					<li><a href="#" onclick="faq()" class="text-decoration-none">FAQ</a></li>
					<li><a href="#" onclick="contact()" class="text-decoration-none">문의하기</a></li>
				</ul>
			</li>
		</ul>
	</div>
	
	<div id="div-contents">
		<div id="div-content1" style="display:none">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">회원 특전</h3>
			<br>
			<div>
				<img src="resources/images/rewards/benefits_tit2.gif">
			</div>
			<div>
				<img src="resources/images/rewards/benefitsInfo.gif">
			</div>
		</div>
		<div id="div-content2" style="display:none">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">포인트 안내</h3>
			<br>
			<div class="mb-3">
				<img src="resources/images/rewards/newEarn_text01.gif">
			</div>
			<div class="mb-3">
				<img src="resources/images/rewards/newEarn_text02.gif">
			</div>
			<div class="mb-3">
				<img src="resources/images/rewards/newEarn_text03.gif">
			</div>
		</div>
		<div id="div-content3" style="display:block">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">객실패키지</h3>
			<br>
			<div>
				<div id="div-box">
					<div class="border-bottom mb-3 pb-3" id="div-date">
						<span class="me-3">기간조회</span>
						<label class="dateStart" for="searchStrtDt"></label>
						<input type="text" class="dateStart uiform text" id="searchStrtDt" name="searchStrtDt" value="" onclick="popCalendarLayer2('searchStrtDt','2022-08-02');" autocomplete="off">
						<a href="#none" onclick="popCalendarLayer2('searchStrtDt','2022-08-02');" class="text-decoration-none">
						<span class="material-symbols-outlined" style="position: relative; top: 5px;">calendar_month</span></a>
						~
						<label class="dateEnd" for="searchEndDt"></label>
						<input type="text" class="dateEnd uiform text" id="searchEndDt" name="searchEndDt" value="" onclick="popCalendarLayer2('searchEndDt','2022-08-02');" autocomplete="off">
						<a href="#none" onclick="popCalendarLayer2('searchEndDt','2022-08-02');" class="text-decoration-none">
						<span class="material-symbols-outlined" style="position: relative; top: 5px;">calendar_month</span></a>
					</div>
					<div class="mb-2" id="keywords">
						<span class="me-3" style="float: left;">포함 내용</span>
						<ul>
							<li id="keyword1"><a href="#" onclick="" class="text-decoration-none">조식 또는 중식</a></li>		
							<li id="keyword2"><a href="#" onclick="" class="text-decoration-none">야외 수영장</a></li>		
							<li id="keyword3"><a href="#" onclick="" class="text-decoration-none">와이너리</a></li>		
							<li id="keyword4"><a href="#" onclick="" class="text-decoration-none">G.A.O.</a></li>		
							<li id="keyword5"><a href="#" onclick="" class="text-decoration-none">라운지 혜택</a></li>		
							<li id="keyword6"><a href="#" onclick="" class="text-decoration-none">카바나</a></li>		
							<li id="keyword7"><a href="#" onclick="" class="text-decoration-none">장박</a></li>		
							<li id="keyword8"><a href="#" onclick="" class="text-decoration-none">디너</a></li>
						</ul>
					</div>
					<div class="pt-1" id="div-search">
						<a class="btnSch" href="#none" onclick="fncSearchPack();">검색</a>
					</div>
				 </div>
			</div>
			<div class="justify-content-center" id="div-tab">
			 	<ul> 
                   	<li id="tabSeoul"><a href="javascript:tabAllViewPack('S')" class="text-decoration-none">서울스프링호텔</a></li>
                   	<li id="tabJeju"><a href="javascript:tabAllViewPack('C')" class="text-decoration-none">제주스프링호텔</a></li>
                   	<li id="tabMg"><a href="javascript:tabAllViewPack('M')" class="text-decoration-none">스프링모노그램</a></li>
                   	<li id="tabStay"><a href="javascript:tabAllViewPack('Z')" class="text-decoration-none">스프링스테이</a></li>
              	</ul>
			</div>
			<div id="div-selector">
				<select>
					<option value="new" selected="selected">최신순</option>
					<option value="expensive">높은 가격순</option>
					<option value="inexpensive">낮은 가격순</option>
				</select>
			</div>
			<div class="row" id="div-packages">
				<div class="col">
					<div class="packThum">
						<a href="#none" onclick="javascript:selectViewPack('17705','S','N');" class="text-decoration-none">
							<img src="resources/images/rewards/seoul1.jpeg" alt="Member Exclusive" style="width:270px;height:150px;float:left;">
						</a>
					</div>
					<div id="div-packCon">
						<!-- 리워즈 아이콘추가 2018-10-01 S -->
						<div class="packTagList"><!-- 상품태그표기 -->
							<span class="tagico">추천</span>
						</div>
						<dl>
							<dt>
								<a href="#none" onclick="javascript:selectViewPack('17705','S','N');">Member Exclusive</a>
							</dt>
							<dd id="dd-border">
								<span>2022-08-22 ~ 2022-12-30</span>
							</dd>
							<dd>
								<span>리워즈 회원 전용 객실 할인</span>
							</dd>
							<dd class="price">
								<span class="price">261,000&nbsp;원 ~</span>
							</dd>
						</dl>
						<a href="#" onclick="checkR('17705', '서울신라호텔'); return false;" id="btn-reservation">
							<img src="resources/images/rewards/btnReservation.gif" alt="예약하기">
						</a>
					</div>
				</div>
			</div>
			<div class="row" id="div-packages">
				<div class="col">
					<div class="packThum">
						<a href="#none" onclick="javascript:selectViewPack('17705','S','N');" class="text-decoration-none">
							<img src="resources/images/rewards/seoul2.jpeg" alt="Member Exclusive" style="width:270px;height:150px;float:left;">
						</a>
					</div>
					<div id="div-packCon">
						<!-- 리워즈 아이콘추가 2018-10-01 S -->
						<div class="packTagList"><!-- 상품태그표기 -->
							<span class="tagico">추천</span>
						</div>
						<dl>
							<dt>
								<a href="#none" onclick="javascript:selectViewPack('17705','S','N');">Member Exclusive</a>
							</dt>
							<dd id="dd-border">
								<span>2022-08-22 ~ 2022-12-30</span>
							</dd>
							<dd>
								<span>리워즈 회원 전용 객실 할인</span>
							</dd>
							<dd class="price">
								<span class="price">261,000&nbsp;원 ~</span>
							</dd>
						</dl>
						<a href="#" onclick="checkR('17705', '서울신라호텔'); return false;" id="btn-reservation">
							<img src="resources/images/rewards/btnReservation.gif" alt="예약하기">
						</a>
					</div>
				</div>
			</div>
			<div class="row" id="div-packages">
				<div class="col">
					<div class="packThum">
						<a href="#none" onclick="javascript:selectViewPack('17705','S','N');" class="text-decoration-none">
							<img src="resources/images/rewards/seoul3.jpeg" alt="Member Exclusive" style="width:270px;height:150px;float:left;">
						</a>
					</div>
					<div id="div-packCon">
						<!-- 리워즈 아이콘추가 2018-10-01 S -->
						<div class="packTagList"><!-- 상품태그표기 -->
							<span class="tagico">추천</span>
						</div>
						<dl>
							<dt>
								<a href="#none" onclick="javascript:selectViewPack('17705','S','N');">Member Exclusive</a>
							</dt>
							<dd id="dd-border">
								<span>2022-08-22 ~ 2022-12-30</span>
							</dd>
							<dd>
								<span>리워즈 회원 전용 객실 할인</span>
							</dd>
							<dd class="price">
								<span class="price">261,000&nbsp;원 ~</span>
							</dd>
						</dl>
						<a href="#" onclick="checkR('17705', '서울신라호텔'); return false;" id="btn-reservation">
							<img src="resources/images/rewards/btnReservation.gif" alt="예약하기">
						</a>
					</div>
				</div>
			</div>
			<div class="row" id="div-packages">
				<div class="col">
					<div class="packThum">
						<a href="#none" onclick="javascript:selectViewPack('17705','S','N');" class="text-decoration-none">
							<img src="resources/images/rewards/seoul4.jpeg" alt="Member Exclusive" style="width:270px;height:150px;float:left;">
						</a>
					</div>
					<div id="div-packCon">
						<!-- 리워즈 아이콘추가 2018-10-01 S -->
						<div class="packTagList"><!-- 상품태그표기 -->
							<span class="tagico">추천</span>
						</div>
						<dl>
							<dt>
								<a href="#none" onclick="javascript:selectViewPack('17705','S','N');">Member Exclusive</a>
							</dt>
							<dd id="dd-border">
								<span>2022-08-22 ~ 2022-12-30</span>
							</dd>
							<dd>
								<span>리워즈 회원 전용 객실 할인</span>
							</dd>
							<dd class="price">
								<span class="price">261,000&nbsp;원 ~</span>
							</dd>
						</dl>
						<a href="#" onclick="checkR('17705', '서울신라호텔'); return false;" id="btn-reservation">
							<img src="resources/images/rewards/btnReservation.gif" alt="예약하기">
						</a>
					</div>
				</div>
			</div>
		</div>
		
		<div id="div-content4" style="display:none">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">이벤트</h3>
			<br>
			<div>
				<div id="div-box">
					<div class="border-bottom mb-3 pb-3" id="div-date">
						<span class="me-3">기간조회</span>
						<label class="dateStart" for="searchStrtDt"></label>
						<input type="text" class="dateStart uiform text" id="searchStrtDt" name="searchStrtDt" value="" onclick="popCalendarLayer2('searchStrtDt','2022-08-02');" autocomplete="off">
						<a href="#none" onclick="popCalendarLayer2('searchStrtDt','2022-08-02');" class="text-decoration-none">
						<span class="material-symbols-outlined" style="position: relative; top: 5px;">calendar_month</span></a>
						~
						<label class="dateEnd" for="searchEndDt"></label>
						<input type="text" class="dateEnd uiform text" id="searchEndDt" name="searchEndDt" value="" onclick="popCalendarLayer2('searchEndDt','2022-08-02');" autocomplete="off">
						<a href="#none" onclick="popCalendarLayer2('searchEndDt','2022-08-02');" class="text-decoration-none">
						<span class="material-symbols-outlined" style="position: relative; top: 5px;">calendar_month</span></a>
					</div>
					<div class="mb-2" id="keywords">
						<span class="me-3" style="float: left; width: 70px;">호텔 선택</span>
						<ul>
							<li id="keyword1"><a href="#" onclick="" class="text-decoration-none">서울스프링호텔</a></li>		
							<li id="keyword2"><a href="#" onclick="" class="text-decoration-none">제주스프링호텔</a></li>		
							<li id="keyword3"><a href="#" onclick="" class="text-decoration-none">스프링스테이</a></li>		
							<li id="keyword4"><a href="#" onclick="" class="text-decoration-none">스프링모노그램</a></li>
						</ul>
					</div>
					<br>
					<div id="keywords">
						<span class="me-3" style="float: left; width: 70px;">키워드</span>
						<ul>
							<li id="keyword1"><a href="#" onclick="" class="text-decoration-none">Member's Day</a></li>		
						</ul>
					</div>
					<div class="pt-1" id="div-search">
						<a class="text-decoration-none" href="#none" onclick="fncSearchPack();">검색</a>
					</div>
				</div>
			</div>
			<div class="row" id="div-packages">
				<div class="col">
					<div class="packThum">
						<a href="#none" onclick="javascript:selectViewPack('17705','S','N');" class="text-decoration-none">
							<img src="resources/images/rewards/event1.jpeg" alt="Member Exclusive" style="width:270px;height:150px;float:left;">
						</a>
					</div>
					<div id="div-packCon">
						<!-- 리워즈 아이콘추가 2018-10-01 S -->
						<div class="packTagList"><!-- 상품태그표기 -->
							<span class="tagico">추천</span>
						</div>
						<dl>
							<dt>
								<a href="#none" onclick="javascript:selectViewPack('17705','S','N');">Member Exclusive</a>
							</dt>
							<dd id="dd-border">
								<span>2022-08-22 ~ 2022-12-30</span>
							</dd>
							<dd>
								<span>리워즈 회원 전용 객실 할인</span>
							</dd>
							<dd class="price">
								<span class="price">261,000&nbsp;원 ~</span>
							</dd>
						</dl>
						<a href="#" onclick="checkR('17705', '서울신라호텔'); return false;" id="btn-reservation">
							<img src="resources/images/rewards/btnReservation.gif" alt="예약하기">
						</a>
					</div>
				</div>
			</div>
			<div class="row" id="div-packages">
				<div class="col">
					<div class="packThum">
						<a href="#none" onclick="javascript:selectViewPack('17705','S','N');" class="text-decoration-none">
							<img src="resources/images/rewards/event2.jpeg" alt="Member Exclusive" style="width:270px;height:150px;float:left;">
						</a>
					</div>
					<div id="div-packCon">
						<!-- 리워즈 아이콘추가 2018-10-01 S -->
						<div class="packTagList"><!-- 상품태그표기 -->
							<span class="tagico">추천</span>
						</div>
						<dl>
							<dt>
								<a href="#none" onclick="javascript:selectViewPack('17705','S','N');">Member Exclusive</a>
							</dt>
							<dd id="dd-border">
								<span>2022-08-22 ~ 2022-12-30</span>
							</dd>
							<dd>
								<span>리워즈 회원 전용 객실 할인</span>
							</dd>
							<dd class="price">
								<span class="price">261,000&nbsp;원 ~</span>
							</dd>
						</dl>
						<a href="#" onclick="checkR('17705', '서울신라호텔'); return false;" id="btn-reservation">
							<img src="resources/images/rewards/btnReservation.gif" alt="예약하기">
						</a>
					</div>
				</div>
			</div>
			<div class="row" id="div-packages">
				<div class="col">
					<div class="packThum">
						<a href="#none" onclick="javascript:selectViewPack('17705','S','N');" class="text-decoration-none">
							<img src="resources/images/rewards/event3.jpeg" alt="Member Exclusive" style="width:270px;height:150px;float:left;">
						</a>
					</div>
					<div id="div-packCon">
						<!-- 리워즈 아이콘추가 2018-10-01 S -->
						<div class="packTagList"><!-- 상품태그표기 -->
							<span class="tagico">추천</span>
						</div>
						<dl>
							<dt>
								<a href="#none" onclick="javascript:selectViewPack('17705','S','N');">Member Exclusive</a>
							</dt>
							<dd id="dd-border">
								<span>2022-08-22 ~ 2022-12-30</span>
							</dd>
							<dd>
								<span>리워즈 회원 전용 객실 할인</span>
							</dd>
							<dd class="price">
								<span class="price">261,000&nbsp;원 ~</span>
							</dd>
						</dl>
						<a href="#" onclick="checkR('17705', '서울신라호텔'); return false;" id="btn-reservation">
							<img src="resources/images/rewards/btnReservation.gif" alt="예약하기">
						</a>
					</div>
				</div>
			</div>
		</div>
		<div id="div-content5" style="display:none;">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">FAQ</h3>
			<br>
			<div>
				<img src="resources/images/rewards/contactText02.gif">
			</div>
			<div id="h5">
				<h5>자주하는 질문</h5>
			</div>
		</div>
		
	</div>
</div>
<%@ include file="common/footer.jsp" %>
</body>
<script type="text/javascript">
	//사이드바 메뉴 전환
	function benefits() {
		document.querySelector('#div-content1').style.display = "block";
		document.querySelector('#div-content2').style.display = "none";
		document.querySelector('#div-content3').style.display = "none";
		document.querySelector('#div-content4').style.display = "none";
		document.querySelector('#div-content5').style.display = "none";
		document.querySelector('#div-contents').style.height = "1200px";
		document.querySelector('#container').style.height = "1200px";
	}
	function points() {
		document.querySelector('#div-content1').style.display = "none";
		document.querySelector('#div-content2').style.display = "block";
		document.querySelector('#div-content3').style.display = "none";
		document.querySelector('#div-content4').style.display = "none";
		document.querySelector('#div-content5').style.display = "none";
		document.querySelector('#div-contents').style.height = "900px";
		document.querySelector('#container').style.height = "900px";
	}
	function roomPackage() {
		document.querySelector('#div-content1').style.display = "none";
		document.querySelector('#div-content2').style.display = "none";
		document.querySelector('#div-content3').style.display = "block";
		document.querySelector('#div-content4').style.display = "none";
		document.querySelector('#div-content5').style.display = "none";
		document.querySelector('#div-contents').style.height = "1500px";
		document.querySelector('#container').style.height = "1500px";
	}
	function events() {
		document.querySelector('#div-content1').style.display = "none";
		document.querySelector('#div-content2').style.display = "none";
		document.querySelector('#div-content3').style.display = "none";
		document.querySelector('#div-content4').style.display = "block";
		document.querySelector('#div-content5').style.display = "none";
		document.querySelector('#div-contents').style.height = "1500px";
		document.querySelector('#container').style.height = "1500px";
	}
	function faq() {
		document.querySelector('#div-content1').style.display = "none";
		document.querySelector('#div-content2').style.display = "none";
		document.querySelector('#div-content3').style.display = "none";
		document.querySelector('#div-content4').style.display = "none";
		document.querySelector('#div-content5').style.display = "block";
		document.querySelector('#div-contents').style.height = "900px";
		document.querySelector('#container').style.height = "900px";
	}
	function contact() {
		location.href = "/contact";
	}
</script>
</html>