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
<!-- roomRev3 CSS -->
<link
	href="${pageContext.request.contextPath}/resources/room/css/roomRev3.css"
	rel="stylesheet">
<!-- total zone -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- moment -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
<title>Spring Hotel</title>
</head>
<body>
	<c:set var="menu" value="roomRev3" />
	<%@ include file="../common/nav.jsp"%>
	<div class="contain">
		<div class="container">
			<!-- Rev step 3 -->
			<div class="rev-step">
				<img alt="" src="../resources/images/room/rev/revTitle3.png">
			</div>
			<form id="form-rev" name="form-rev" action="save" method="post">
				<!-- action 1 -->
				<div id="Accordion_wrap1" style="border: 0.01em solid #80808063;">
					<div class="que1">
						<span style="margin-left: 20px;">정보입력</span>
						<div class="arrow-wrap1">
							<div class="arrow-top1">
								<span style="color: red; font-size: 18px;">* </span>표시 필수 입력사항
							</div>
						</div>
					</div>
					<div class="anw1 row p-3">
						<!-- 고객정보 -->
						<div class="c-info-and-card col-6">
							<div class="c-box">
								<div class="c-info-title">고객정보</div>
							</div>
							<div class="text-box" style="margin-block: 20px;">
								<div class="row">
									<div class="t-box col-3">
										<div class="t name">
											성명(국문) <span style="color: red; font-size: 18px;">*</span>
										</div>
										<div class="t name-en" style="margin-block: 30px;">
											성명(영문) <span style="color: red; font-size: 18px;">*</span>
										</div>
										<div class="t email">
											이메일 <span style="color: red; font-size: 18px;">*</span>
										</div>
										<div class="t tel" style="margin-block: 30px;">
											연락처 <span style="color: red; font-size: 18px;">*</span>
										</div>
										<div class="t loc">
											지역(여권기준) <span style="color: red; font-size: 18px;">*</span>
										</div>
									</div>
									<div class="col-9">
										<!-- 성명 kor -->
										<div class="row">
											<div class="col-3">
												<select class="input name-select" name="title"
													style="width: 90px; height: 40px;">
													<option selected="selected">선택</option>
													<option>Ms.</option>
													<option>Mr.</option>
													<option>Dr.</option>
												</select>
											</div>
											<div class="col-9">
												<input class="input name-kor" type="text" name="userName"
													style="width: 278px; height: 40px;">
											</div>
										</div>
										<!-- 성명 en -->
										<div class="row" style="margin-block: 15px;">
											<div class="col-6">
												<input type="text" placeholder="FIRST NAME(이름)" name="firstName"
													style="width: 185px; height: 40px;">
											</div>
											<div class="col-6" style="padding-left: 5px;">
												<input type="text" placeholder="LAST NAME(성)" name="lastName"
													style="width: 185px; height: 40px;">
											</div>
										</div>
										<!-- 이메일 -->
										<input type="text" style="width: 382px; height: 40px;" name="email">
										<!-- 연락처 -->
										<div class="row" style="margin-block: 15px;">
											<div class="col-3">
												<select class="input tel-select"
													style="width: 90px; height: 40px;">
													<option selected="selected">휴대전화</option>
													<option>자택전화</option>
												</select>
											</div>
											<div class="col-9">
												<input class="input-tel" type="text" name="tel"
													style="width: 278px; height: 40px;">
											</div>
										</div>
										<!-- 지역(여권기준) -->
										<select name="country" style="width: 383px; height: 40px;">
											<option selected="selected">선택</option>
											<!-- 나라 목록 가져오기!!!!  -->
											<option value="AF">Afghanistan</option>
											<option value="AL">Albania</option>
											<option value="DZ">Algeria</option>
											<option value="AD">Andorran</option>
											<option value="AO">Angola</option>
											<option value="AI">Anguilla</option>
											<option value="AQ">Antarctica</option>
											<option value="AG">Antigua Barbuda</option>
											<option value="AE">Arab Emirate</option>
											<option value="AR">Argentina</option>
											<option value="AM">Armenia</option>
											<option value="AW">Aruba</option>
											<option value="AU">Australia</option>
											<option value="AT">Austria</option>
											<option value="AZ">Azerbaijan</option>
											<option value="BS">Bahamas</option>
											<option value="BH">Bahrain</option>
											<option value="BD">Bangladesh</option>
											<option value="BB">Barbados</option>
											<option value="BY">Belarus</option>
											<option value="BE">Belgium</option>
											<option value="BZ">Belize</option>
											<option value="BJ">Benin</option>
											<option value="BM">Bermuda</option>
											<option value="BT">Bhutan</option>
											<option value="BO">Bolivia</option>
											<option value="BA">Bosnia-Herz</option>
											<option value="BW">Botswana</option>
											<option value="BV">Bouvet Islands</option>
											<option value="BR">Brazil</option>
											<option value="IO">British Indian Ocean Territory</option>
											<option value="BN">Brunei Daruss</option>
											<option value="BG">Bulgaria</option>
											<option value="BF">Burkina Faso</option>
											<option value="MM">Burma</option>
											<option value="BI">Burundi</option>
											<option value="KH">Cambodia</option>
											<option value="CM">Cameroon</option>
											<option value="CA">Canada</option>
											<option value="CV">Cape Verde</option>
											<option value="KY">Cayman Islands</option>
											<option value="CF">Central Africa Republic</option>
											<option value="TD">Chad</option>
											<option value="CL">Chile</option>
											<option value="CN">China</option>
											<option value="CX">Christmas Islands</option>
											<option value="CC">Coconut Islands</option>
											<option value="CO">Colombia</option>
											<option value="KM">Comoros</option>
											<option value="CK">Cook Islands</option>
											<option value="CR">Costarica</option>
											<option value="CI">Cote D'Ivoire</option>
											<option value="HR">Croatia</option>
											<option value="CU">Cuba</option>
											<option value="CY">Cyprus</option>
											<option value="CZ">Czech Republic</option>
											<option value="CD">Dem. Rep. Congo</option>
											<option value="DK">Denmark</option>
											<option value="DJ">Djibouti</option>
											<option value="DM">Dominica</option>
											<option value="DO">Dominican Republic</option>
											<option value="AN">Dutch Antilles</option>
											<option value="TP">East Timor</option>
											<option value="EC">Ecuador</option>
											<option value="EG">Egypt</option>
											<option value="SV">El Salvador</option>
											<option value="GQ">Equatorial Guin</option>
											<option value="ER">Eritrea</option>
											<option value="EE">Estonia</option>
											<option value="ET">Ethiopia</option>
											<option value="EU">European Union</option>
											<option value="FK">Falkland Islands</option>
											<option value="FO">Faroe Islands</option>
											<option value="FJ">Fiji</option>
											<option value="FI">Finland</option>
											<option value="FR">France</option>
											<option value="TF">French S.Territory</option>
											<option value="GA">Gabon</option>
											<option value="GM">Gambia</option>
											<option value="GE">Georgia</option>
											<option value="DE">Germany</option>
											<option value="GH">Ghana</option>
											<option value="GI">Gibraltar</option>
											<option value="GR">Greece</option>
											<option value="GL">Greenland</option>
											<option value="GD">Grenada</option>
											<option value="GP">Guadeloupe</option>
											<option value="GU">Guam</option>
											<option value="GT">Guatemala</option>
											<option value="GF">Guayana. French</option>
											<option value="GN">Guinea</option>
											<option value="GW">Guinea-Bissau</option>
											<option value="GY">Guyana</option>
											<option value="HT">Haiti</option>
											<option value="HM">Heard Mcdonald Islands</option>
											<option value="HN">Honduras</option>
											<option value="HK">Hong Kong S.A.R.</option>
											<option value="HU">Hungary</option>
											<option value="IS">Iceland</option>
											<option value="IN">India</option>
											<option value="ID">Indonesia</option>
											<option value="IR">Iran</option>
											<option value="IQ">Iraq</option>
											<option value="IE">Ireland</option>
											<option value="IM">Islands of Man</option>
											<option value="IL">Israel</option>
											<option value="IT">Italy</option>
											<option value="JM">Jamaica</option>
											<option value="JP">Japan</option>
											<option value="JO">Jordan</option>
											<option value="KZ">Kazakhstan</option>
											<option value="KE">Kenya</option>
											<option value="KI">Kiribati</option>
											<option value="KW">Kuwait</option>
											<option value="KG">Kyrgyzstan</option>
											<option value="LA">Laos</option>
											<option value="LV">Latvia</option>
											<option value="LB">Lebanon</option>
											<option value="LS">Lesotho</option>
											<option value="LR">Liberia</option>
											<option value="LY">Libya</option>
											<option value="LI">Liechtenstein</option>
											<option value="LT">Lithuania</option>
											<option value="LU">Luxembourg</option>
											<option value="MO">Macao S.A.R.</option>
											<option value="MK">Macedonia</option>
											<option value="MG">Madagascar</option>
											<option value="MW">Malawi</option>
											<option value="MY">Malaysia</option>
											<option value="MV">Maldives</option>
											<option value="ML">Mali</option>
											<option value="MT">Malta</option>
											<option value="MH">Marshall Islands</option>
											<option value="MQ">Martinique</option>
											<option value="MR">Mauretania</option>
											<option value="MU">Mauritius</option>
											<option value="YT">Mayotte</option>
											<option value="MX">Mexico</option>
											<option value="FM">Micronesia</option>
											<option value="UM">Minor Outside Islands</option>
											<option value="MD">Moldova</option>
											<option value="MC">Monaco</option>
											<option value="MN">Mongolia</option>
											<option value="MS">Montserrat</option>
											<option value="MA">Morocco</option>
											<option value="MZ">Mozambique</option>
											<option value="NA">Namibia</option>
											<option value="NT">Nato</option>
											<option value="NR">Nauru</option>
											<option value="NP">Nepal</option>
											<option value="NL">Netherlands</option>
											<option value="NC">New Caledonia</option>
											<option value="NZ">New Zealand</option>
											<option value="NI">Nicaragua</option>
											<option value="NE">Niger</option>
											<option value="NG">Nigeria</option>
											<option value="NU">Niue</option>
											<option value="NF">Norfolk Islands</option>
											<option value="KP">North Korea</option>
											<option value="MP">North Mariana Islands</option>
											<option value="NO">Norway</option>
											<option value="OM">Oman</option>
											<option value="PK">Pakistan</option>
											<option value="PW">Palau</option>
											<option value="PS">Palestine</option>
											<option value="PA">Panama</option>
											<option value="PG">Pap New Guinea</option>
											<option value="PY">Paraguay</option>
											<option value="PE">Peru</option>
											<option value="PH">Philippines</option>
											<option value="PN">Pitcairn Islands</option>
											<option value="PL">Poland</option>
											<option value="PF">Polynesia. French</option>
											<option value="PT">Portugal</option>
											<option value="PR">Puerto Rico</option>
											<option value="QA">Qatar</option>
											<option value="CG">Rep. of Congo</option>
											<option value="RE">Reunion Islands</option>
											<option value="RO">Romania</option>
											<option value="RU">Russia</option>
											<option value="RW">Rwanda</option>
											<option value="GS">S. Sandwich Islands</option>
											<option value="ST">S.Tome, Principe</option>
											<option value="SH">ST. Helena</option>
											<option value="KN">ST. Kitts-Nevis</option>
											<option value="LC">ST. Lucia</option>
											<option value="PM">ST. Pier Miquel</option>
											<option value="VC">ST. Vincent</option>
											<option value="BL">Saint Barthelemy</option>
											<option value="WS">Samoa</option>
											<option value="AS">Samoa. America</option>
											<option value="SM">San Marino</option>
											<option value="SA">Saudi Arabia</option>
											<option value="SN">Senegal</option>
											<option value="CS">Serbia Monten</option>
											<option value="SC">Seychelles</option>
											<option value="SL">Sierra Leone</option>
											<option value="SG">Singapore</option>
											<option value="SK">Slovakia</option>
											<option value="SI">Slovenia</option>
											<option value="SB">Solomon Islands</option>
											<option value="SO">Somalias</option>
											<option value="ZA">South Afraca</option>
											<option value="KR" selected="">South Korea</option>
											<option value="ES">Spain</option>
											<option value="LK">Sri Lanka</option>
											<option value="SD">Sudan</option>
											<option value="SR">Suriname</option>
											<option value="SJ">Svalbard</option>
											<option value="SZ">Swaziland</option>
											<option value="SE">Sweden</option>
											<option value="CH">Switzerland</option>
											<option value="SY">Syria</option>
											<option value="TW">Taiwan</option>
											<option value="TJ">Tajikistan</option>
											<option value="TZ">Tanzania</option>
											<option value="TH">Thailand</option>
											<option value="TG">Togo</option>
											<option value="TK">Tokelau Islands</option>
											<option value="TO">Tonga</option>
											<option value="TT">Trinidad Tobago</option>
											<option value="TN">Tunisia</option>
											<option value="TR">Turkey</option>
											<option value="TM">Turkmenistan</option>
											<option value="TC">Turksh Caicosin</option>
											<option value="TV">Tuvalu</option>
											<option value="UG">Uganda</option>
											<option value="UA">Ukraine</option>
											<option value="GB">United Kingdom</option>
											<option value="UN">United Nations</option>
											<option value="US">United States</option>
											<option value="UY">Uruguay</option>
											<option value="UZ">Uzbekistan</option>
											<option value="VU">Vanuatu</option>
											<option value="VA">Vatican City</option>
											<option value="VE">Venezuela</option>
											<option value="VN">Vietnam</option>
											<option value="VI">Virgin Islands. America</option>
											<option value="VG">Virgin Islands. British</option>
											<option value="WF">Walis Futuna</option>
											<option value="EH">West Sahara</option>
											<option value="TL">West Timor</option>
											<option value="YE">Yemen</option>
											<option value="ZM">Zambia</option>
											<option value="ZW">Zimbarwe</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<!-- 신용카드 정보 -->
						<div class="request col-6"
							style="border-left: 1px dotted #dee2e6;">
							<div class="request-title">신용카드 정보</div>
							<div class="text-box" style="margin-block: 20px;">
								<div class="row">
									<div class="t-box col-3">
										<div class="t name">
											카드종류 <span style="color: red; font-size: 18px;">*</span>
										</div>
										<div class="t name-en" style="margin-block: 30px;">
											카드번호 <span style="color: red; font-size: 18px;">*</span>
										</div>
										<div class="t email">
											유효기간 <span style="color: red; font-size: 18px;">*</span>
										</div>
									</div>
									<div class="col-9">
										<!-- 카드종류  onchange="this.form.submit()" -->
										<select class="card-sort" name="cardType" style="width: 383px; height: 40px;">
											<option value="AX">AMEX CARD</option>
											<option value="BC">BC CARD</option>
											<option value="CB">CITIBANK CARD</option>
											<option value="DI">DINERS CARD</option>
											<option value="HD">HYUNDAI CARD</option>
											<option value="JC">JCB CARD</option>
											<option value="KE">KEB CARD</option>
											<option value="KM">KOOKMIN CARD</option>
											<option value="LO">LOTTE CARD</option>
											<option value="MA">MASTER OVERSEAS</option>
											<option value="SH">SHINHAN CARD</option>
											<option value="SS">SAMSUNG CARD</option>
											<option value="VS">VISA OVERSEAS</option>
											<option value="UN">UNION PAY</option>
										</select>
										<!-- 카드번호 -->
										<div class="card-num row" style="margin-block: 15px;">
											<div class="col-3" style="padding-right: 0px;">
												<input type="text" id="cardNo1" name="cardNumber1"
													style="width: 70px; height: 40px; margin-right: 8px;" maxlength="4" >
											<span>-</span></div>
											<div class="col-3" style="padding-right: 0px;">
												<input type="password" id="cardNo2" name="cardNumber2"
													style="width: 70px; height: 40px; margin-right: 8px;" maxlength="4" >
											<span>-</span></div>
											<div class="col-3" style="padding-right: 0px;">
												<input type="password" id="cardNo3" name="cardNumber3"
													style="width: 70px; height: 40px; margin-right: 8px;" maxlength="4">
											<span>-</span></div>
											<div class="col-3">
												<input type="password" id="cardNo4" name="cardNumber4"
													style="width: 71px; height: 40px;" maxlength="4">
											</div>
										</div>
										<!-- 유효기간 -->
										<div class="card-exp-date row" style="margin-block: 15px;">
											<div class="col-6" style="padding-right: 10px;">
												<select name="cardValidMonth" style="width: 180px; height: 40px;">
													<option selected="selected">월</option>
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
													<option>6</option>
													<option>7</option>
													<option>8</option>
													<option>9</option>
													<option>10</option>
													<option>11</option>
													<option>12</option>
												</select>
											</div>
											<div class="col-6" style="padding-left: 10px;">
												<select name="cardValidYear" style="width: 180px; height: 40px;">
													<option selected="selected">년</option>
													<option value="2022">2022</option>
													<option>2023</option>
													<option>2024</option>
													<option>2025</option>
													<option>2026</option>
													<option>2027</option>
													<option>2028</option>
													<option>2029</option>
													<option>2030</option>
													<option>2031</option>
													<option>2032</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="text-gray" style="color: gray; margin-top: 25px;">※
								신용카드 정보는 고객님의 투숙을 개런티하기 위한 용도 외에는 어떤 목적으로도 사용되지 않으며, 체크카드 및 일부
								신용 카드의 경우 사용이 제한될 수 있습니다.</div>
							<div class="text-gray" style="color: gray; margin-top: 10px;">
								※ <span style="color: red;">온라인 예약 시 직접 결제가 이루어지지 않으며,</span>최종
								결제는 프론트 데스크에서 해주시기 바랍니다.
							</div>
						</div>
						<!-- 신용카드 정보 끝  -->

					</div>
				</div>

				<!-- 유의사항 및 취소 환불 규정 -->
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
					<div class="anw2" style="border-bottom: 1px solid #dddddd;">
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
					<div class="que4"
						style="align-content: center; justify-content: center; height: 60px; background-color: #e0d9b396; color: #664d03b8;">
						<span class="form-check"> <input class="form-check-input1"
							type="checkbox" value="" style="margin-left: 20px;"
							id="agree-checked"> <label class="form-check-label"
							for="agree-checked" style="margin-left: 10px;">유의사항, 취소 및
								환불 규정을 모두 확인해주세요.</label>
						</span>
					</div>
				</div>
				<!-- 필수 개인정보 수집 동의  -->
				<div id="Accordion_wrap4" style="border: 0.01em solid #80808063;">
					<div class="que1">
						<span style="margin-left: 20px;">필수적인 개인정보 수집이용에 동의하십니까?</span>
					</div>
					<div class="anw1" style="padding: 20px;">
						<!-- 이용동의 1 -->
						<div class="op-box1" style="margin-bottom: 10px;">
						<div class="op1" style="margin-bottom: 10px;">
							<div style="margin-top: 20px; font-weight: bold; font-size: 15px; ">필수적인 개인정보의 수집ㆍ이용에 관한 사항</div>
							<div class="op-text-box" style="border: 1px solid #41464b99; margin-top: 15px; padding: 15px; height: 100px; overflow-y: auto; " >
								<p>
									<b style="font-weight: 500;">스프링호텔 객실예약과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.</b><br>
									<br> <b style="font-size: 14px;">① 수집 이용 항목 |
										성명(국문·영문), 지역(여권기준), 이메일, 연락처(휴대전화·자택전화), 예약정보, 결제정보(카드종류,
										카드번호, 유효기간)</b><br> <b style="font-size: 14px;">② 수집 이용
										목적 | 호텔 예약 및 고객 응대</b><br> <b style="font-size: 14px;">③
										보유 이용 기간 | 예약일 후 1년</b><br> <br><b style="font-weight: 500;"> ※위 사항에 대한 동의를 거부할 수
									있으나, 이에 대한 동의가 없을 경우 예약 서비스 제공과 관련된 제반 절차 진행이 불가능 할 수 있음을
									알려드립니다.</b>
								</p>
							</div>
						</div>
						<div class="radio-form" style="column-gap: 20px; display: flex; justify-content: end;">
								<div class="radio">
									<input class="form-check-input2" type="radio"
										name="radio1" id="check-a1" > <label
										class="form-check-label" for="check-a1">
										동의함</label>
								</div>
								<div class="radio">
									<input class="form-check-input2" type="radio"
										name="radio1" id="check-d1" checked>
									<label class="form-check-label" for="check-d1">
										동의하지 않음</label>
								</div>
							</div>
					</div>
					<!-- 이용동의 2 -->
						<div class="op-box2" style="margin-bottom: 10px;">
							<div class="op2" style="margin-bottom: 10px;">
								<div style="margin-top: 20px; font-weight: bold; font-size: 15px;">개인정보 제3자 제공에 대한 동의</div>
								<div class="op-text-box" style="border: 1px solid #41464b99; margin-top: 15px; padding: 15px; height: 100px; overflow-y: auto; " >
									<p>
										<b style="font-size: 14px;">① 제공받는 자 | (주)스프링스테이</b><br> <b
											style="font-size: 14px;">② 제공 목적 | 호텔 예약 및 고객 응대</b><br>
										<b style="font-size: 14px;">③ 제공하는 항목 | 성명(국문·영문),
											지역(여권기준), 이메일, 연락처(휴대전화·자택전화), 예약정보, 결제정보(카드종류, 카드번호, 유효기간)</b><br>
										<b style="font-size: 14px;">④ 제공 기간 | 예약일 후 1년간</b><br> <br>
										※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 스프링 리워즈 회원가입 및 서비스 제공이
										불가능함을 알려드립니다.
									</p>
								</div>
							</div>
							<div class="radio-form" style="column-gap: 20px; display: flex; justify-content: end;">
								<div class="radio">
									<input class="form-check-input2" type="radio"
										name="radio3" id="check-a2" value="Y"> <label
										class="form-check-label" for="check-a2">
										동의함</label>
								</div>
								<div class="radio">
									<input class="form-check-input2" type="radio"
										name="radio3" id="check-d2" value="N" checked>
									<label class="form-check-label" for="check-d2">
										동의하지 않음</label>
								</div>
							</div>
						</div>

					</div>
				</div>
				<!-- 필수 개인정보 수집 동의 끝  -->
				</form>

			<!-- rev2 total accordion -->
			<div id="Accordion_wrap3" style="border-top: 0.01em solid #8080809e;">
				<div class="anw3">
					<div class="row p-3">
						<div class="total-info col-3">
							<div class="total-title">예약정보</div>
							<div>
								<img alt="호텔사진"
									src="../resources/images/room/location/서울.jpg">
							</div>
							<div class="total-sub">
								<div class="sub-title">체크인-체크아웃</div>
								<span id="checkinDate"><fmt:formatDate value="${roomReservationForm.checkinTime }" pattern="yyyy-MM-dd"/></span><span>~</span><span id="checkoutDate"><fmt:formatDate value="${roomReservationForm.checkoutTime }" pattern="yyyy-MM-dd"/></span>
							</div>
							<div class="total-sub-a">
								<div class="sub-title">객실</div>
								<span>${roomReservationForm.roomName },${roomReservationForm.bedType }</span>
							</div>
							<div class="total-sub">
								<div class="sub-title">투숙인원</div>
								<span>성인 <span><fmt:formatNumber value="${roomReservationForm.adult }"/></span>, 어린이 <span><fmt:formatNumber value="${roomReservationForm.child }"/></span></span>
							</div>
						</div>
						<div class="total-detail col-9">
							<div class="total-title-box">
								<div class="total-title">요금상세 (<span id="night">n</span>박)</div>
								<span><img alt="예약초기화"
									src="../resources/images/room/rev/rev_clear.png"></span>
							</div>
							<div class="total-sub-box">
								<div class="total-sub">객실1(성인 <span><fmt:formatNumber value="${roomReservationForm.adult }"/></span> / 어린이 <span><fmt:formatNumber value="${roomReservationForm.child }"/></span>)</div>
								<span><span id="all-total-price"><fmt:formatNumber value="${roomReservationForm.totalPrice }"/></span>원</span>
							</div>
							<div class="total-sub2-box row">
								<div class="객실요금 col-4">
									<div>객실요금</div>
									<div class="sub2-price"><span id="room-price"><fmt:formatNumber value="${roomReservationForm.roomPrice }"/></span> 원</div>
								</div>
								<div class="옵션사항 col-4">
									<div>옵션사항</div>
									<!-- 성인조식/엑스트라베드/어린이조식 -->
									<div class="sub2-price"><span id="optionTotalP"><fmt:formatNumber value="${roomReservationForm.optionTotalPrice }"/></span> 원</div>
								</div>
								<div class="부가가치세 col-4">
									<div>부가가치세</div>
									<div class="sub2-price"><span id="vat">0</span> 원</div>
								</div>
							</div>
							<div class="">부가가치세 10%가 포함된 금액입니다.</div>
						</div>
					</div>
				</div>
				<div class="que3">

					<div class="arrow-wrap3" style="display: flex;">
						<a href="../room/roomRev2" style="margin-right: 250px;"><img alt=""
							src="../resources/images/room/rev/prev.gif"></a>
						<div class="arrow-top3">↑</div>
						<div class="arrow-bottom3"></div>
					</div>
					<div class="r-box" style="display: flex;">
						<div class="total-text" style="margin-right: 230px;">
							<span class="text1" style="font-weight: normal;">요금합계</span> <span class="text2">부가가치세
								포함</span>
						</div>
						<div class="total-price" style="margin-right: 20px; margin-top: 10px;"><span id="final-price">0</span>원</div>
						<a href="#" class="m-btn" id="submit"><img alt="예약하기"
							src="../resources/images/room/rev/btn-rev.gif"></a>
					</div>
						
				</div>
			</div>
			<!-- rev2 total accordion -->
			<input type="hidden" name="totalPrice">
	</div>
</div>
	<%@ include file="../common/footer.jsp"%>
	<script>
	$(".anw1").mouseout(function(){
		let a = $('#room-price').text().replace(',','');
		let vat = parseInt(a)*0.1;
		let b = vat.toLocaleString();
		let alltotalprice = $('#all-total-price').text();
		$('#final-price').text(alltotalprice);
		let h = alltotalprice.replace(',','');
		$('input[name=totalPrice]').val(h);
		let checkinDate = $('#checkinDate').text();
		let checkoutDate = $('#checkoutDate').text();
		let days = moment(checkoutDate).diff(moment(checkinDate), 'days');
		
		$('#night').text(days);
		$('#vat').text(b);
	})
	$(".r-box a").click(function(){
		return false;
	})
	/* 비회원 버튼을 누르면 */
	$("#submit").click(function(){
		$("#form-rev").trigger("submit");
		return false;
	});
	
	$("#rev-complete").click(function(){
		$("#form-rev").trigger("submit");
		return false;
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
		
		
		$(function(){
			
			$("#form-rev").submit(function() {
				
				if($("select[name=title]").val() === '선택') {
					alert("칭호는 필수 선택항목입니다.");
					return false;
				}
				
				if($(":input[name=userName]").val() === '') {
					alert("이름은 필수 입력항목입니다.");
					return false;
				}
				
				if($(":input[name=firstName]").val() === '') {
					alert("영문 이름은 필수 입력항목입니다.");
					return false;
				}
				
				if($(":input[name=lastName]").val() === '') {
					alert("영문 이름은 입력항목입니다.");
					return false;
				}
				
				if($(":input[name=email]").val() === '') {
					alert("이메일은 필수 입력항목입니다.");
					return false;
				}
				
				if($(":input[name=tel]").val() === '') {
					alert("전화번호는 필수 입력항목입니다.");
					return false;
				}
				
				if($("select[name=country]").val() === '') {
					alert("국가는 필수 선택항목입니다.");
					return false;
				}
				
				if($("select[name=cardType]").val() === '') {
					alert("카드 타입은 필수 선택항목입니다.");
					return false;
				}
				if($(":input[name=cardNumber1]").val() === '' || $(":input[name=cardNumber2]").val() === '' || $(":input[name=cardNumber3]").val() === '' || $(":input[name=cardNumber4]").val() === '') {
					alert("카드 번호는 필수 입력항목입니다.");
					return false;
				}
				
				if($("select[name=cardValidMonth]").val() === '월') {
					alert("카드 유효기간은 필수 선택항목입니다.");
					return false;
				}
				
				if($("select[name=cardValidYear]").val() === '년') {
					alert("카드 유효기간은 필수 선택항목입니다.");
					return false;
				}
				
				if($('#check-d1').prop('checked') || ($('#check-d2').prop('checked'))) {
		            alert("동의해주세요");
		            return false;
		  		  }
				if((!$('#agree-checked').prop('checked'))) {
		            alert("동의해주세요");
		            return false;
		  		  }
				
			
			})
		});
	</script>
</body>
</html>