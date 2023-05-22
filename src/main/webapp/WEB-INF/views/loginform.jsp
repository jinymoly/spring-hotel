<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- 카카오 로그인 라이브러리 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- 네이버 로그인 라이브러리 -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">
<title>Spring Hotel</title>
</head>
<body>
	<c:set var="menu" value="home"/>
	<%@ include file="common/nav.jsp"%>
	<div class="container" id="container">
		<div class="loginBox contents" id="contents">
	        <!-- 로그인 헤더 -->
			<div class="location rgt">
				<p class="list">
					<span class="crPosit"></span> &gt; <strong>로그인</strong>
				</p>
			</div>
			<div class="headTit">
				<h4 class="tit">로그인</h4>
			</div>
			<div class="top">
				<h1 class="logo">
					<span><p>스프링리워즈에 오신 것을 환영합니다</p></span>
				</h1>
				<div class="info">
					<p>
						<strong>스프링리워즈 번호와 비밀번호를 입력해 주시기 바랍니다.</strong>
					</p>
					<p>※ 스프링리워즈 회원이 되시면 회원만을 위한 다양한 서비스와 혜택을 받으실 수 있습니다.</p>
				</div>
			</div>
			<!--  로그인 폼 -->
			<div class="tabForm">
				<div class="loginheader">
				<p><strong>회원</strong></p>
					<!-- <div class="loginimage"><a href="#"><img src="resources/images/login_mem_on.jpg" alt="회원"></a></div> -->
				</div>
				<div class="tabContent">
					<div class="allBox">
						<div class="box">
								<form id="loginForm" action="login" method="POST">
									<input type="hidden" id="" name="" value="">
									<div class="inputForm">
										<div class="inputId">
											<input type="text" class="id" name="id" id="id-field"
												placeholder="스프링리워즈 아이디 입력" onfocus="this.placeholder = ''"
												onblur="this.placeholder = '스프링리워즈 아이디 입력'">
										</div>
										<input class="mainBtn" type="image" src="resources/images/loginBtnLogin.gif"/>
										<div class="inputPw">
											<input type="password" class="pw" name="password" id="password-field" maxlength="20"
												placeholder="비밀번호 입력" onfocus="this.placeholder = ''"
												onblur="this.placeholder = '비밀번호 입력'">
										</div>
									</div>
								</form>
										<c:if test="${param.fail eq 'invalid'}">
								        	<div class="alert alert-danger">
								        		<string>로그인 실패</string><br>
								        		아이디 혹은 비밀번호가 올바르지 않습니다.
								        	</div>
							        	</c:if>
							        	<c:if test="${param.fail eq 'deny'}">
								        	<div class="alert alert-danger">
								        		<string>로그인 후 이용가능한 서비스입니다.</string>
								        	</div>
							        	</c:if>
										<div class="loginBtn">
							    		<%-- 
							    			카카오 로그인 처리중 중 오류가 발생하면 아래 경고창에 표시된다.
							    			카카오 로그인 오류는 스크립트에서 아래 경고창에 표시합니다.
							    		 --%>
							    			<div class="alert alert-danger d-none" id="alert-kakao-login">오류 메세지</div>
							    			<a id="btn-kakao-login" href="kakao/login">
							  					<img src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="190" height="60" alt="카카오 로그인 버튼"/>
											</a>
											<!-- 네이버로그인 -->
											<a id="naver_id_login" href="#">
												<img src="resources/images/btnG_완성형.png" width="190" height="60" alt="네이버 로그인 버튼"/>
											</a>
										</div>
								<form id="form-kakao-login" method="post" action="kakao-login">
						    		<input type="hidden" name="id" />
						    		<input type="hidden" name="nickname" />
						    		<input type="hidden" name="email" />
						    		<input type="hidden" name="ageRange" />
						    		<input type="hidden" name="gender" />
						    	</form>
						    	
								<div class="button">
									<button type="button" onclick="location.href='/register'" >스프링리워즈 가입</button>
									<button type="button" data-bs-toggle="modal" data-bs-target="#findId">아이디 찾기</button>
									<button type="button" data-bs-toggle="modal" data-bs-target="#findPw">비밀번호찾기</button>
								</div>
							</div>
						</div>
					</div>
				
					<div class="loginT">
						<p>이메일, 연락처 등의 정보가 변경되면 웹사이트에서 회원정보를 수정해주시기 바랍니다.</p>
					</div>
		
					<!-- findIdModal -->
					<div class="modal fade" id="findId" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel"><strong>스프링리워즈 아이디 찾기</strong></h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
				        	<table class="table findId">
						      	<tr>
							    	<td><label>성명</label></td>
							    	<td><input type="text" class="form-control" id="name" name="name" placeholder="스프링리워즈 이름 입력"
							    		onfocus="this.placeholder = ''" onblur="this.placeholder = '이름 입력'"></td>
						      	</tr>
						      	<tr>
							        <td><label>이메일</label></td>
							        <td><input type="text" class="form-control" id="email" name="email" placeholder="스프링리워즈 이메일 입력"
							        onfocus="this.placeholder = ''" onblur="this.placeholder = '이메일 입력'"></td>
						      	</tr>
					      	</table>
					      	<div class="showId"> 
					      	</div>
					      </div>
					      <div class="modal-footer">
					      	<button type="button" class="btn findIdBtn text-white" style="background-color:#856F5D;" onclick="findId()">확인</button>
					        <button type="button" class="btn findIdCloseBtn text-white" style="background-color:#856F5D;" data-bs-dismiss="modal">취소</button>
					      </div>
					    </div>
					  </div>
					</div>
					
					<!-- findPwModal -->
					<div class="modal fade" id="findPw" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel"><strong>스프링리워즈 비밀번호 찾기</strong></h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					      	<table class="table findPw" >
						      	<tr>
							    	<td><label>아이디</label></td>
							    	<td><input type="text" class="form-control" id="id" name="id" placeholder="스프링리워즈 아이디 입력"
							    		onfocus="this.placeholder = ''" onblur="this.placeholder = '아이디 입력'"></td>
						      	</tr>
						      	<tr>
							        <td><label>이메일</label></td>
							        <td><input type="text" class="form-control" id="email2" name="email" placeholder="스프링리워즈 이메일 입력"
							        onfocus="this.placeholder = ''" onblur="this.placeholder = '이메일 입력'"></td>
						      	</tr>
					      	</table>
					      	<div class="showPw"> 
					      	</div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn findPwBtn text-white" style="background-color:#856F5D;" onclick="findPw()">확인</button>
					        <button type="button" class="btn findPwCloseBtn text-white" style="background-color:#856F5D;" data-bs-dismiss="modal">취소</button>
					      </div>
					    </div>
					  </div>
					</div>
			</div>
		</div>
	</div>
<%@ include file="common/footer.jsp"%>
<script>
//아이디 찾기
function findId() {
	let name = document.getElementById('name').value;
	let email = document.getElementById('email').value;
	
	$.ajax({
		url: '/findId',
		type: 'post',
		data: {"name":name, "email":email},
		success:function(data){
			if(data == 0) {
				alert("아이디가 존재하지 않습니다.");
			} else {
				$(".findId").css('display','none');
				$(".findIdBtn").css('display','none');
				$(".findIdCloseBtn").html("확인");
				let content = '<p class="text-center">아이디는 <strong>'+data+'</strong> 입니다.</p>';
				$(".showId").append(content);
			}
		}, 
		error:function(){
			alert("에러입니다.");
		}
	})
};

//비밀번호 찾기 임시비밀번호 이메일로 발송
function findPw() {
	let id = document.getElementById('id').value;
	let email = document.getElementById('email2').value;
	
	$.ajax({
		url: '/findPw',
		type: 'post',
		data: {"id":id, "email":email},
		success:function(data){
			if(data == "success") {
				$(".findPw").css('display','none');
				$(".findPwBtn").css('display','none');
				$(".findPwCloseBtn").html("확인");
				let content = '<p class="text-center">임시 비밀번호를 <strong>'+email+'</strong>로 보냈습니다.</p>';
				$(".showPw").append(content);
			} else if (data =="fail"){
				alert("아이디 혹은 이메일이 잘못되었습니다.");
			}
		}, 
		error:function(){
			alert("에러입니다.");
		}
	})
};

$(function() {
	$("#loginForm").submit(function() {
		let emailValue = $("#id-field").val();  
		if (emailValue === "") {
			alert("아이디는 필수입력값입니다.");
			return false;
		}
		
		let passwordValue = $("#password-field").val();
		if (passwordValue === "") {
			alert("비밀번호는 필수입력값입니다.");
			return false;
		}
	});
	
	
	// 카카오 로그인 버튼을 클릭할 때 실행할 이벤트 핸들러 함수를 등록한다.
	$('#btn-kakao-login').click(function(event){
		// a태그는 클릭이벤트가 발생하면 페이지를 이동하는 기본동작이 수행되는데, 그 기본동작이 실행되지 않게 한다.
		event.preventDefault();
		// 카카오 로그인 실행시 오류메세지를 표시하는 경고창을 화면에 보이지 않게 한다.
		$("#alert-kakao-login").addClass("d-none");
		// 사용자키를 전달해서 카카오 로그인 서비스를 초기화한다.
		Kakao.init('0f5efd23f2359c36bc8e32b428cd9954');
		// 카카오 로그인 서비스 실행하기 및 사용자 정보 가져오기
		Kakao.Auth.login({
			success: function(auth) {
				Kakao.API.request({
					url: '/v2/user/me',
					success: function(response) {
						// 사용자 정보를 가져와서 폼에 추가한다.
						var account = response.kakao_account;
						
						$('#form-kakao-login input[name=username]').val(response.id);
						$('#form-kakao-login input[name=nickname]').val(account.profile.nickname);
						$('#form-kakao-login input[name=email]').val(account.email);
						$('#form-kakao-login input[name=age]').val(account.age_range);
						$('#form-kakao-login input[name=gender]').val(account.gender);
						// 사용자 정보가 포함된 폼을 서버로 제출한다.
						document.querySelector("#form-kakao-login").submit()
					},
					fail: function(error) {
						// 경고창에 에러 메세지를 표시한다.
						$("#alert-kakao-login").removeClass("d-none").text("카카오 로그인 처리 중 오류가 발생하였습니다.");
					}
				});
			},
			fail: function(error) {
				// 경고창에 에러 메세지를 표시한다.
				$("#alert-kakao-login").removeClass("d-none").text("카카오 로그인 처리 중 오류가 발생하였습니다.");
			}
		});		
	})
});	
	var naver_id_login = new naver_id_login("ULeHM_EeBcaEqPfusaeF", "http://localhost/");
 	var state = naver_id_login.getUniqState();
 	naver_id_login.setButton("green",2,60);
 	naver_id_login.setDomain("http://localhost/login");
 	naver_id_login.setState(state);
 	naver_id_login.setPopup();
 	naver_id_login.init_naver_id_login();
 	
 	var naver_id_login = new naver_id_login("ULeHM_EeBcaEqPfusaeF", "http://localhost/");
   // 접근 토큰 값 출력
   alert(naver_id_login.oauthParams.access_token);
   // 네이버 사용자 프로필 조회
   naver_id_login.get_naver_userprofile("naverSignInCallback()");
   // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
   function naverSignInCallback() {
     alert(naver_id_login.getProfileData('email'));
     alert(naver_id_login.getProfileData('nickname'));
     alert(naver_id_login.getProfileData('age'));
   }
</script>
</body>
</html>