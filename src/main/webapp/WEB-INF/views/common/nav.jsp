<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<style>
	/* 로고이미지, 로그인,회원가입,예약확인 */
	#nav-first {background-color: rgb(241, 227, 196);}
	#nav-first a {text-decoration: none; font-size: 12px; color: rgb(133, 111, 86);}
    #img-logo img {display: block; margin: auto; width: 230px; height: 80px;}
    .dropdown-menu {background-color:rgb(191, 175, 157); min-width: 1px !important; width:80px !important; height:72px; 
    				border-style: solid; border-width: 2px; border-color: rgb(129, 114, 95);}
    .dropdown-item {color:black !important;}
    
    /* 객실,다이닝 등 메인메뉴 */
    #nav-second a {font-size: 17px; text-decoration: none; color: rgb(223, 212, 198);}
    #nav-second .snb a {font-size: 12px !important; color: rgb(250, 241, 208);}
    #nav-second {background-color: rgb(129, 114, 95); height: 50px;}
    
    /* 메인메뉴 밑 서브 메뉴 가상요소로 생성 */
    #nav-second.on::after{position:absolute;display:block;top:130px;width:100%;height:35px;
    					  background-color:rgb(104, 88, 69);content:'';z-index:-1;
    					  border-style: solid; border-width: 1px; border-color: rgb(84, 71, 56);}
    
    /* 메인메뉴 수직 구분선 */
    .vr {color: rgb(250, 241, 208);}
    #vr-1 {position:absolute; top:93px; left:590px; height:15px;}
    #vr-2 {position:absolute; top:93px; left:740px; height:15px;}
    #vr-3 {position:absolute; top:93px; left:905px; height:15px;}
    #vr-4 {position:absolute; top:93px; left:1075px; height:15px;}
    #vr-5 {position:absolute; top:93px; left:1280px; height:15px;}
    
    /* 메인메뉴,서브메뉴 위치 고정 -> 지정안할 시 이벤트 발생할 때 위치 변경됨 */
    #rev {position:absolute; left: 500px;}
    #rev-div {position:relative; top:18px;}
    #room {position:absolute;left: 650px;}
    #room-div {position:relative; top:18px;}
    #dining {position:absolute;left: 800px;}
    #dining-div {position:relative; top:18px;}
    #info {position:absolute;left: 950px;}
    #info-div {position:relative; top:18px;}
    #rewards {position:absolute;left: 1130px;}
    #rewards-div {position:relative; top:18px;}
    #store {position:absolute;left: 1330px;}
    #store-div {position:relative; top:18px;}

    /* hover시 글자색 변경 */ 
    #nav a:hover {color: white;}
</style>
<title>nav</title>
</head>
<body>
<nav class="sticky-top" id="nav">
    <div class="container-fluid">
    	<div class="row fw-bold" id="nav-first">
	    	<div class="col pt-3">
	    	</div>
	    	<div class="col mr-3">
		       	<a href="/" id="img-logo" ><img src="../resources/images/nav_logo1.png"/></a>
		    </div>
		    <div class="col pt-3 me-4">
	       		<ul class="list-inline">
	               <c:if test="${empty LOGIN_USER}">
	                   <li class="list-inline-item dropdown">
	                       <a class="nav-link dropdown-toggle" href="" id="navbar-dropdown-menu" role="button" data-bs-toggle="dropdown" aria-expanded="false">로그인</a>
	                       <ul class="dropdown-menu" aria-labelledby="navbar-dropdown-menu">
	                           <li style="border-bottom: 2px solid rgb(129, 114, 95);"><a class="dropdown-item" href="../admin/login">관리자</a></li>
	                           <li><a class="dropdown-item" href="../login">고객</a></li>
	                       </ul>
	                   </li>
	                   <li class="list-inline-item"><a href="/register">스프링리워즈 가입</a></li>
	               </c:if>
	               <c:if test="${not empty LOGIN_USER }">
	               	   <li class="list-inline-item"><strong>${LOGIN_USER.name }</strong>님 환영합니다.</li>
	              	   <li class="list-inline-item"><a class="nav-link" href="/logout">로그아웃</a></li>
	              	   <li class="list-inline-item"><a class="nav-link" href="/user/mypage">마이페이지</a></li>
	               </c:if>

	                   <li class="list-inline-item dropdown">
	                       <a class="nav-link dropdown-toggle" href="" id="navbar-dropdown-menu" role="button" data-bs-toggle="dropdown" aria-expanded="false">예약확인</a>
	                       <ul class="dropdown-menu" aria-labelledby="navbar-dropdown-menu">
	                           <li style="border-bottom: 2px solid rgb(129, 114, 95);"><a class="dropdown-item" href="/user/room">객실</a></li>
	                           <c:if test="${not empty LOGIN_USER }">
	                          		 <li><a class="dropdown-item" href="/user/dining">다이닝</a></li>
	                           </c:if>
	                           <c:if test="${empty LOGIN_USER }">
	                           		<li><a class="dropdown-item" href="../dining/loginForm">다이닝</a></li>
	                           </c:if>
	                       </ul>
	                   </li>
	            </ul>
		    </div>
    	</div>
        <div class="row justify-content-md-center p-2" id="nav-second">
        	<div class="col-6">
        		<div class="d-flex justify-content-between">
	               <div class="gnb" id="rev"><a href="">예약</a><div class="snb" id="rev-div"></div></div><div class="vr" id="vr-1"></div>
	               <div class="gnb" id="room"><a href="/room/roomHome">객실</a><div class="snb" id="room-div"></div></div><div class="vr" id="vr-2"></div>
	               <div class="gnb" id="dining"><a href="">다이닝</a><div class="snb" id="dining-div"></div></div><div class="vr" id="vr-3"></div>
		           <div class="gnb" id="info"><a href="/about">호텔소개</a><div class="snb" id="info-div"></div></div><div class="vr" id="vr-4"></div>
	               <div class="gnb" id="rewards"><a href="">스프링리워즈</a><div class="snb" id="rewards-div"></div></div><div class="vr" id="vr-5"></div>
	               <div class="gnb" id="store"><a href="../shop" target="_blink">스프링스토어</a><div class="snb" id="store-div"></div></div>
        		</div>
    		</div> 
    	</div>
    </div>
</nav>
<script type="text/javascript">
$(function() {
	
	let $rev = $("#rev");
	let $room = $("#room");
	let $dining = $("#dining");
	let $info = $("#info");
	let $rewards = $("#rewards");
	
	let $revDiv = $("#rev div");
	let $roomDiv = $("#room div");
	let $diningDiv = $("#dining div");
	let $infoDiv = $("#info div");
	let $rewardsDiv = $("#rewards div");

	/* 메인메뉴 hover시 하위요소, 배경(가상요소)삽입 */
	$rev.hover(
		function() {
			$revDiv.empty();

			let content = '';

			content += '<ul class="list-inline">'


			content += '	<li class="list-inline-item"><a href="../room/roomRev1">객실</a></li><div class="vr" style="position:relative; top:3px;"></div>';
			content += '	<li class="list-inline-item"><a href="/dining/step1">다이닝</a></li>';

			content += '</ul>'
			
			$revDiv.append(content);
			$("#nav-second").addClass("on");
	}, function() {
			$revDiv.empty();
			$("#nav-second").removeClass("on");
	})
		
	$room.hover(
		function() {
			$roomDiv.empty();

			let content = '';

			content += '<ul class="list-inline">'

			content += '	<li class="list-inline-item"><a href="">스탠다드</a></li><div class="vr" style="position:relative; top:3px;"></div>';

			content += '	<li class="list-inline-item"><a href="">이그제큐티브</a></li><div class="vr" style="position:relative; top:3px;"></div>';
			content += '	<li class="list-inline-item"><a href="">스위트</a></li><div class="vr" style="position:relative; top:3px;"></div>';
			content += '	<li class="list-inline-item"><a href="">더 이그제큐티브 라운지</a></li><div class="vr" style="position:relative; top:3px;"></div>';
			content += '	<li class="list-inline-item"><a href="">전체 객실 보기</a></li>';
			content += '</ul>'
			
			$roomDiv.append(content);
			$("#nav-second").addClass("on");
	}, function() {
			$roomDiv.empty();
			$("#nav-second").removeClass("on");
	})
	
	$dining.hover(
		function() {
			$diningDiv.empty();

			let content = '';

			content += '<ul class="list-inline">'
			content += '	<li class="list-inline-item"><a href="">레스토랑</a></li><div class="vr" style="position:relative; top:3px;"></div>';
			content += '	<li class="list-inline-item"><a href="">라운지&바</a></li>';
			content += '</ul>'
			
			$diningDiv.append(content);
			$("#nav-second").addClass("on");
	}, function() {
			$diningDiv.empty();
			$("#nav-second").removeClass("on");
	})
	
	$info.hover(
		function() {
			$infoDiv.empty();

			let content = '';

			content += '<ul class="list-inline">'
			content += '	<li class="list-inline-item"><a href="">서울점</a></li><div class="vr" style="position:relative; top:3px;"></div>';
			content += '	<li class="list-inline-item"><a href="">제주점</a></li><div class="vr" style="position:relative; top:3px;"></div>';
			content += '	<li class="list-inline-item"><a href="">부산점</a></li><div class="vr" style="position:relative; top:3px;"></div>';
			content += '	<li class="list-inline-item"><a href="">광주점</a></li><div class="vr" style="position:relative; top:3px;"></div>';
			content += '	<li class="list-inline-item"><a href="">강릉점</a></li>';
			content += '</ul>'
			
			$infoDiv.append(content);
			$("#nav-second").addClass("on");
	}, function() {
			$infoDiv.empty();
			$("#nav-second").removeClass("on");
	})
	
	$rewards.hover(
		function() {
			$rewardsDiv.empty();

			let content = '';

			content += '<ul class="list-inline">'
			content += '	<li class="list-inline-item"><a href="/rewards/seoul">스프링 리워즈</a></li><div class="vr" style="position:relative; top:3px;"></div>';
			content += '	<li class="list-inline-item"><a href="">스프링 호텔</a></li><div class="vr" style="position:relative; top:3px;"></div>';
			content += '	<li class="list-inline-item"><a href="">다이닝</a></li><div class="vr" style="position:relative; top:3px;"></div>';
			content += '	<li class="list-inline-item"><a href="">기타</a></li>';
			content += '</ul>'
			
			$rewardsDiv.append(content);
			$("#nav-second").addClass("on");
	}, function() {
			$rewardsDiv.empty();
			$("#nav-second").removeClass("on");
	})

})
</script>
</body>
</html>