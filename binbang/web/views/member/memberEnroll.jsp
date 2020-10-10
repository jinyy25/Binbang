<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/commonLink.jsp"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/member/memberEnroll.css" />

</head>
<body>
	<div class="wrap">
		<%@ include file="/views/common/header.jsp" %>

		<section class="section">				
<!-- 1. 회원가입 -->
<%-- action="<%=request.getContextPath() %>/member/memberEnrollEnd" --%>
			<form id="enrollComplite" method="post" class="enroll">
				<div class="title">
					<div class="titletxt">Sign Up</div>
				</div>
				<div class="titleLine"></div>

				<div class="enrollForm">
					<div>
						<input type="email" placeholder="Email" name="email" id="email_" required>
						<input type="button" id="duplicateBtn" value="중복검사" onclick="fn_duplicateCheck();" class=".idcheck">						
						
						<input type="password" name="password" placeholder="Password" id="pw" required>						 
						<input type="password" name="passwordCheck" placeholder="Password" id="pwck" onkeyup="pwCheck();" required>
						
						<span id="pwCheck"></span>
						
						<input type="text" name="name" placeholder="Name" id="name" required> 
						<input type="text" name="nickname" placeholder="Nickname" required> 
						<input type="text" name="phone" placeholder="Phone" id="phone" required>
					</div>
				</div>
					<!-- 인증완료 -->
					<input type="hidden" id="hidden">

<!-- 2. 약관동의 -->
				<div class="contract">
					<div class="title1">
						약관전체동의<input type="checkbox" id="allCheck" onclick="selectAll();">
					</div>

					<div class="contractForm">
						<div class="line2"></div>

						<div id="agree">
							<div class="title1">
								서비스 이용 약관 동의(필수)<input type="checkbox" id="checkbox1" name="chk" required>
							</div>
							<div class="line1"></div>

							<div id=extendBtn1>자세히보기</div>
							<div class="content1">
개인정보 수집 및 이용 동의

1. 수집항목 : [필수] 이름, 연락처, 이메일주소, 인원정보
2. 수집 및 이용목적 : 사업자회원과 예약이용자의 원활한 거래 진행, 고객상담, 불만처리 등 민원 처리, 분쟁조정 해결을 위한 기록보존, 스테이폴리오 멤버십 및 프로모션, 이벤트 안내
3. 보관기간 : 회원탈퇴 등 개인정보 이용목적 달성 시까지 보관. 단, 상법 및 ‘전자상거래 등에서의 소비자 보호에 관한 법률’ 등 관련 법령에 의하여 일정 기간 보관이 필요한 경우에는 해당 기간 동안 보관함
4. 동의 거부권 등에 대한 고지 : 정보주체는 개인정보의 수집 및 이용 동의를 거부할 권리가 있으나, 이 경우 상품 및 서비스 예약이 제한될 수 있습니다.								
															
							</div>


							<div id="agree">
								<div class="title1">
									개인정보 취급방침 동의<input type="checkbox" id="checkbox2" name="chk" required>
								</div>
								<div class="line1"></div>
								<div id="extendBtn2">자세히보기</div>
								<div class="content2">
제 1조 (총칙)

1. 개인정보란 생존하는 개인에 관한 정보로서 당해 정보에 포함되어 있는 성명, 주민등록번호 등의 사항에 의하여 당해 개인을 식별할 수 있는 정보 (당해 정보만으로는 특정 개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함합니다.) 를 말합니다.
2. 빈방은 귀하의 개인정보 보호를 매우 중요시하며, ‘정보통신망 이용촉진 및 정보보호에 관한 법률’ 상의 개인정보 보호규정 및 정보통신부가 제정한 ‘개인정보 보호지침’을 준수하고 있습니다.
3. 빈방은 개인정보취급방침을 정하고 이를 귀하께서 언제나 쉽게 확인할 수 있게 공개하도록 하고 있습니다.
4. 빈방은 개인정보 처리방침의 지속적인 개선을 위하여 개정하는데 필요한 절차를 정하고 있으며, 개인정보 처리방침을 회사의 필요한 사회적 변화에 맞게 변경할 수 있습니다. 그리고 개인정보처리방침을 개정하는 경우 버전번호 등을 부여하여 개정된 사항을 귀하께서 쉽게 알아볼 수 있도록 하고 있습니다.

제 2조 (수집하는 개인정보 항목 및 수집방법)

1. 빈방은 별도의 회원가입 절차 없이 대부분의 컨텐츠에 자유롭게 접근할 수 있습니다. 빈방에서 예약 및 프로모션. 이벤트 서비스를 이용하시고자 할 경우 다음의 정보를 입력해주셔야 합니다.
· 입력항목 : 희망ID, 비밀번호, 성명, 이메일주소
2. 또한 서비스 이용과정이나 사업 처리 과정에서 아래와 같은 정보들이 생성되어 수집될 수 있습니다.
· 최근접속일, 접속 IP 정보, 쿠키, 구매로그, 이벤트로그
· 회원가입 시 회원이 원하시는 경우에 한하여 추가 정보를 선택, 제공하실 수 있도록 되어있으며, 일부 재화 또는 용역 상품에 대한 주문 및 예약 시 회원이 원하는 정확한 주문 내용 파악을 통한 원활한 고객 응대 및 예약 처리를 위하여 추가적인 정보를 요구하고 있습니다.
3. 빈방은 다음과 같은 방법으로 개인정보를 수집합니다.
· 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 예약신청
· 로그 분석 프로그램을 통한 생성정보 수집
4. 개인정보 수집에 대한 동의
· 빈방은 귀하께서 스테이폴리오의 개인정보취급방침 및 이용약관의 내용에 대해 「동의한다」버튼 또는 「동의하지 않는다」버튼을 클릭할 수 있는 절차를 마련하여, 「동의한다」버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다.
5. 14세 미만 아동의 개인정보보호
· 빈방은 법정 대리인의 동의가 필요한 만14세 미만 아동의 회원가입은 받고 있지 않습니다.
6. 비회원의 개인정보보호
· 빈방은 비회원 주문의 경우에도 예약정보, 대금결제, 예약내역 조회 및 예약확인, 실명여부 확인을 위하여 필요한 개인정보만을 요청하고 있으며, 이 경우 그 정보는 대금결제 및 객실예약 관련된 용도 이외에는 다른 어떠한 용도로도 사용되지 않습니다.
· 빈방은 비회원의 개인정보도 회원과 동등한 수준으로 보호합니다.

 제 3조 (개인정보의 수집목적 및 이용 목적)
1. 빈방은 다음과 같은 목적을 위하여 개인정보를 수집하고 있습니다.

2. 성명, 아이디, 비밀번호 : 회원제 서비스 이용에 따른 본인 식별 절차에 이용
이메일주소(뉴스레터 수신여부) : 고지사항 전달, 본인 의사 확인, 불만 처리 등 원활한 의사소통 경로의 확보, 새로운 서비스, 신상품이나 이벤트 정보 등 최신 정보의 안내
3. 주소, 전화번호 : 예약 및 구매 물품 배송에 대한 정확한 배송지의 확보
4. 그 외 선택항목 : 개인맞춤 서비스를 제공하기 위한 자료

제 4조 (개인정보의 공유 및 제공)

빈방은 회원에 대하여 보다 더 질 높은 서비스 제공 등을 위해 아래와 같이 귀하의 개인정보를 제공하고 있습니다.

1. 제공정보의 이용 목적 : 제휴 마케팅, 예약 고객의 응대 및 서비스 제공
2. 제공 대상 : 숙박 제휴 업체 및 프로모션, 이벤트 제휴 업체
3. 제공 정보 : 이름, 이메일, 핸드폰 번호, 주소, 예약정보(예약일, 숙소명)
4. 제공 정보의 보유 및 이용 기간 : 스테이폴리오 회원 탈퇴 시까지
단, 다음은 예외로 합니다.

1. 관계법령에 의하여 수사상의 목적으로 관계기관으로부터의 요구가 있을 경우
2. 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우
3. 이용자들이 사전에 동의한 경우
4. 그러나 예외사항에서도 관계법령에 의하거나 수사기관의 요청에 의해 정보를 제공한 경우에는 이를 당사자에게 고지하는 것을 원칙으로 운영하고 있습니다. 법률상의 근거에 의해 부득이하게 고지를 하지 못할 수도 있습니다. 본래의 수집목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 최대한 노력하겠습니다.

제 5조 (수집한 개인정보 취급 위탁)

· CJ택배, 우체국택배, 현대택배, 대한통운, 한진택배 외 기타택배사 : 상품배송업무
· 이니시스, NPAY : 상품 구매에 필요한 신용카드, 현금결제 등의 결제정보 전송
· 케이티하이텔주식회사 : SMS, MMS등 문자메세지 전송
· 예약상품판매제휴업체 : 예약확인 및 고객응대 업무

제 6조 (개인정보의 보유, 이용기간)

1. 귀하의 개인정보는 회사가 신청인에게 서비스를 제공하는 기간 동안에 한하여 보유하고 이를 활용합니다. 다만 다른 법률에 특별한 규정이 있는 경우에는 관계법령에 따라 보관합니다.
· 회원가입정보 : 회원가입을 탈퇴하거나 회원에 제명된 때
· 대금지급정보 : 대금의 완제일 또는 채권소명시효기간이 만료된 때
· 배송정보 : 물품 또는 서비스가 인도되거나 제공된 때
· 설문조사, 이벤트 등 일시적 목적을 위하여 수집한 경우 : 당해 설문조사, 이벤트 등이 종료한 때

2. 위 개인정보 수집목적 달성시 즉시파기 원칙에도 불구하고 다음과 같이 거래 관련 권리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 전자상거래 등에서의 소비자보호에 관한 법률 등에 근거하여 일정기간 보유합니다.
· 계약 또는 청약철회 등에 관한 기록 : 5년
· 대금결제 및 재화 등의 공급에 관한 기록 : 5년
· 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년
· 설문조사, 이벤트 등 일시적 목적을 위하여 수집한 경우 : 당해 설문조사, 이벤트 등의 종료 시점

3. 귀하의 동의를 받아 보유하고 있는 거래정보 등을 귀하께서 열람을 요구하는 경우 스테이폴리오는 지체없이 그 열람, 확인 할 수 있도록 조치합니다.

제 7조 (개인정보의 파기 절차)

스테이폴리오는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.

1. 파기절차: 귀하가 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(제6조 개인정보의 보유, 이용기간 참조) 일정 기간 저장된 후 파기되어집니다. 동 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.
2.파기방법 : 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기하고, 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.

제 8조 (개인정보 처리를 위한 기술적, 관리적 대책)

* 기술적 대책

스테이폴리오는 귀하의 개인정보를 처리함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안정성 확보를 위하여 다음과 같은 기술적 대책을 강구하고 있습니다.

스테이폴리오는 방화벽(Fire Wall)과 Nescape사의 채널보안방식인 SSL(Secure Socket Layer)방식 암호화 체계 시스템 등을 갖추어 개인정보 보호에 만전을 기하고 있습니다.
세계적인 보안 인증 회사로부터 인증서를 발급 받아 스테이폴리오를 사칭하는 것을 방지하여 고객께 피해가 가지 않도록 하고 있습니다.
귀하의 개인정보는 비밀번호에 의해 보호되며, 파일 및 전송 데이터를 암호화하거나 파일 잠금기능(Lock)을 사용하여 중요한 데이터는 별도의 보안기능을 통해 보호되고 있습니다.
스테이폴리오는 암호알고리즘을 이용하여 네트워크 상의 개인정보를 안전하게 전송할 수 있는 보안장치(SSL 또는 SET)를 채택하고 있습니다.
* 관리적 대책

스테이폴리오는 귀하의 개인정보에 대한 접근 권한을 최소한의 인원으로 제한하고 있습니다. 그 최소한의 인원에 해당하는 자는 다음과 같습니다.

이용자를 직접 상대로 하여 마케팅 업무를 수행하는 자
개인정보보호책임자 및 담당자 등 개인정보보호업무를 수행하는 자
기타 업무상 개인정보의 처리가 불가피한 자
개인정보를 처리하는 직원을 대상으로 새로운 보안 기술 습득 및 개인정보 보호 의무 등에 관해 정기적인 사내교육 및 외부 위탁교육을 실시하고 있습니다.
입사 시 전 직원의 보안서약서를 통하여 사람에 의한 정보유출을 사전에 방지하고 개인정보처리방침에 대한 이행사항 및 직원의 준수여부를 감사하기 위한 내부절차를 마련하고 있습니다.
개인정보 관련 처리자의 업무 인수인계는 보안이 유지된 상태에서 철저하게 이뤄지고 있으며 입사 및 퇴사 후 개인정보 사고에 대한 책임을 명확화하고 있습니다.
전산실 및 자료 보관실 등을 특별 보호구역으로 설정하여 출입을 통제하고 있습니다.
스테이폴리오는 이용자 개인의 실수나 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않습니다. 회원 개개인이 본인의 개인정보를 보호하기 위해서 자신의 ID 와 비밀번호를 적절하게 관리하고 여기에 대한 책임을 져야 합니다.
그 외 내부 관리자의 실수나 기술관리 상의 사고로 인해 개인정보의 상실, 유출, 변조, 훼손이 유발될 경우 스테이폴리오는 즉각 귀하께 사실을 알리고 적절한 대책과 보상을 강구할 것입니다.
제 9조 (링크사이트)

스테이폴리오는 귀하께 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 스테이폴리오 외부사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다. 스테이폴리오가 포함하고 있는 링크를 클릭(Click)하여 타 사이트(Site)의 페이지로 옮겨갈 경우 해당 사이트의 개인정보처리방침은 스테이폴리오와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.

제 10조 (게시물)

스테이폴리오는 귀하의 게시물을 소중하게 생각하여 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다.그러나 다음의 경우는 그렇지 아니합니다.
스팸(spam)성 게시물 및 상업성 게시물 (예: 행운의 편지, 특정사이트 광고 등)
타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글
동의 없는 타인의 신상공개, 제3자의 저작권 등 권리를 침해하는 내용, 기타 게시판 주제와 다른 내용의 게시물
스테이폴리오는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개 시 특정부분 이동 경로를 밝혀 오해가 없도록 하고 있습니다. 그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.
근본적으로 게시물에 관련된 제반 관리와 책임은 작성자 개인에게 있습니다. 또 게시물을 통해 자발적으로 공개된 정보는 보호받기 어려우므로 정보 공개 전에 심사 숙고하시기 바랍니다.
제 11조 (이용자의 권리와 의무)

귀하의 개인정보를 최신의 상태로 정확하게 입력하여 불의의 사고를 예방해 주시기 바랍니다. 귀하가 입력한 부정확 한 정보로 인해 발생하는 사고의 책임은 이용자 자신에게 있으며 타인 정보의 도용 등 허위정보를 입력할 경우 회원 자격이 상실될 수 있습니다.
귀하는 개인정보를 보호받을 권리와 함께 스스로를 보호하고 타인의 정보를 침해하지 않을 의무도 가지고 있습니다. 비밀번호를 포함한 귀하의 개인정보가 유출되지 않도록 조심 하시고 게시물을 포함한 타인의 개인정보를 훼손하지 않도록 유의해 주십시오. 만약 이 같은 책임을 다하지 못하고 타인의 정보 및 존엄성을 훼손할 시에는 ‘정보통신망이용 촉진및정보보호등에관한법률’ 등에 의해 처벌받을 수 있습니다.
온라인상에서(게시판, E-mail, 또는 채팅 등) 귀하가 자발적으로 제공하는 개인정보는 다른 사람들이 수집하여 사용할 수 있음을 항상 유념하시기 바랍니다. 즉, 공개적으로 접속할 수 있는 온라인상에서 개인정보를 게재하는 경우, 다른 사람들로부터 원치 않는 메시지를 답장으로 받게 될 수도 있음을 의미합니다.
공공장소에서 이용할 때에는 자신의 비밀번호가 노출되지 않도록 하고 서비스 이용을 마친 후에는 반드시 로그아웃을 해주시기 바랍니다.
제 12조 (이용자 및 법정 대리인의 권리와 그 행사방법)

귀하는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다.
귀하의 개인정보 조회, 수정 또는 가입해지를 위해서는 스테이폴리오에 서면, 전화 또는 이메일로 연락하시면 지체 없이 조치하겠습니다.
스테이폴리오 대표번호 : 1670-4123
스테이폴리오 메일 : stayfolio@stayfolio.com
스테이폴리오 팩스 : 02-738-1599
스테이폴리오는 귀하의 요청에 의해 해지 또는 삭제된 개인정보는 “제 6조 개인정보의 보유, 이용기간’에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.
제 13조 (개인정보 자동 수집 장치의 설치, 운영 및 그 거부에 관한 사항)

쿠키(cookie)란?
스테이폴리오는 귀하에 대한 정보를 저장하고 수시로 찾아내는 쿠키(cookie)를 사용합니다. 쿠키는 웹사이트가 귀하의 컴퓨터 브라우저(넷스케이프, 인터넷익스플로러 등)로 전송하는 소량의 정보입니다. 귀하께서 웹사이트에 접속을 하면 스테이폴리오의 서버는 귀하의 브라우저에 추가정보를 임시로 저장하여 접속에 따른 성명 등의 추가 입력 없이 스테이폴리오의 서비스를 제공할 수 있습니다. 쿠키는 귀하의 컴퓨터는 식별하지만 귀하를 개인적으로 식별하지는 않습니다. 또한 귀하는 쿠키에 대한 선택권이 있습니다.

스테이폴리오의 쿠키 운용
스테이폴리오는 이용자의 편의를 위하여 쿠키를 운영합니다. 스테이폴리오가 쿠키를 통해 수집하는 정보는 회원ID에 한하며, 그 외의 다른 정보는 수집하지 않습니다. 스테이폴리오가 쿠키를 통해 수집한 회원 ID는 다음의 목적을 위해 사용됩니다.

개인의 관심 분야에 따란 차별화된 정보를 제공
쇼핑한 품목들에 대한 정보와 장바구니 서비스를 제공
회원과 비회원의 접속빈도 또는 머문 시간 등을 분석하여 서비스 개편 및 마케팅에 활용
쿠키는 브라우저의 종료시나 로그아웃 시 만료됩니다.
쿠키의 설치 및 거부
귀하는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서 귀하는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.
다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 스테이폴리오 일부 서비스는 이용에 어려움이 있을 수 있습니다.
쿠키 설치 허용 여부를 지정하는 방법
Internet Explorer의 경우 : [도구] 메뉴에서 [인터넷 옵션]을 선택 → [개인정보]를 클릭 → [고급]을 클릭 → 쿠키 허용여부를 선택
Safari의 경우 :MacOS 상단 좌측 메뉴바에서 [Safari]에서 [환경설정]을 선택 → [환경설정] 창에서 [보안]으로 이동하여 쿠키 허용여부 선택
제 14조 (개인정보 보호문의처)

당사는 귀하의 의견을 소중하게 생각하며, 귀하는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다.
고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아 래와 같이 관련 부서를 지정하고 있습니다.
CRM팀의 연락처는 다음과 같습니다. [스테이폴리오 CRM팀]
이메일 : stayfolio@stayfolio.com
전화번호 : 1670-4123
팩스번호 : 02-738-1599
주소 : 서울시 종로구 통인동 74번지 2F 스테이폴리오
전화상담은 월~금요일 오전 10:00 ~ 오후 06:30에만 가능합니다. (주말, 공휴일 휴무)
전자우편이나 팩스 및 우편을 이용한 상담은 접수 후 24시간 내에 성실하게 답변 드리겠습니다. 다만 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다.
기타 개인정보에 관한 상담이 필요한 경우에는 개인정보침해신고센터, 대검찰청 인터넷범죄수사센터, 경찰청 사이버테러대응센터 등으로 문의하실 수 있습니다.
[개인정보침해신고센터] 118 / http://www.118.or.kr/ 118@kisa.or.kr / 02-3480-3600
[대검찰청 인터넷범죄수사센터] http://icic.sppo.go.kr/ 02-392-0330
[경찰청 사이버테러대응센터] http://ctrc.go.kr/
제 15조 (개인정보보호책임자 및 담당자)

스테이폴리오는 귀하가 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다. 개인정보를 보호하는데 있어 귀하께 고지한 사항들에 반하는 사고가 발생할 시에 개인정보관리책임자가 모든 책임을 집니다. 그러나 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임이 없습니다. 귀하의 개인정보를 취급하는 책임자 및 담당자는 다음과 같으며 개인정보 관련 문의사항에 신속하고 성실하게 답변해드리고 있습니다.

[개인정보 관리 책임자]

· 성명 : 백경훈
· 소속 : 마케팅팀
· 직책 : 마케팅 팀장
· 이메일 : bgh@stayfolio.com
· 전화: 1670-4123
· Fax: 02-738-1599

제 16조 (고지의 의무)

개인정보처리방침은 2015년 04월 20일부터 적용됩니다. 내용의 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전부터 홈페이지의 공지사항을 통하여 고지할 것입니다. 또한 개인정보처리방침에 버전번호 및 개정일자 등을 부여하여 개정여부를 쉽게 알 수 있도록 하고 있습니다.

· 개인정보처리방침 버전번호 : v20150420
· 개인정보처리방침 변경공고일자 : 2015년 04월 20일
· 개인정보처리 시행일자 : 2015년 04월 20일								
								
								</div>
							</div>


							<div id="agree">
								<div class="title1">
									마케팅 정보 수신 동의(선택)<input type="checkbox" id="checkbox3" name="chk" required>
								</div>
								<div class="line1"></div>
								<div id="extendBtn3">자세히보기</div>
								<div class="content3">
· 스테이폴리오 멤버십 서비스 혜택, 프로모션 및 이벤트, 마케팅 정보 안내 등을 주 목적으로 하며 수신 동의 시 메일, 문자 메시지, 푸시 알림에 수신 동의 처리됩니다. 
    동의하지 않으셔도 서비스 이용이 가능하며 동의하신 이후에도 정보 수신 시 안내에 따라 수신 동의를 철회할 수 있습니다
								
								</div>

							</div>
						</div>
					</div>

					<div class="line2 line3"></div>

					
					<div class="Btn">					
						<input type="button" onclick="fn_complite();" id="signBtn" value="Sign Up"/>									
					</div>
			</form>
			
			<form action="" name="checkEmailDuplicate">
		        	<input type="hidden" name="email">
		    </form>
		    
		</section>
	</div>
	
    
<script src="<%=request.getContextPath()%>/js/common/header.js"></script>
<script src="<%=request.getContextPath()%>/js/member/memberEnroll.js"></script>
<script>

	/* password 일치 */
    function pwCheck() {
      let pw=$("#pw").val().trim();
      let pwck=$("#pwck").val().trim();
      if(pw==pwck){
          $("#pwCheck").css("color","green").html("비밀번호가 동일합니다.");            
        }else if(pw!=pwck){
           $("#pwCheck").css("color","red").html("동일한 비밀번호를 입력하세요.");           
        }
      
    };
    
    
    
    /* 중복확인 */
    function fn_duplicateCheck(){
    	/* email정규표현 */
        var email1 = document.getElementById("email_");     	
    	var regEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    	     	
    	if (!regEmail.test(email1.value)) {
              alert("이메일을 입력해주세요");
              return false;
          }
    	
    	/* 값넘기기 및 창띄우기 */
        var email=$("#email_").val();
     		
    	const url="<%=request.getContextPath()%>/member/checkEmailDuplicateAjax";    	
    	const title="checkEmailDuplicate";
    	const status="left=500px,top=100px, width=500px, height=400px";
    	
    	open("",title,status);       	
    	checkEmailDuplicate.target=title;
    	checkEmailDuplicate.action=url;
    	checkEmailDuplicate.method="post";
    	checkEmailDuplicate.email.value=email;    	
    	checkEmailDuplicate.submit();
    }        
    
    
    

    /* 인증번호가 회원가입 로직에 찍히면 회원가입이 가능하게 구현 */
    function fn_complite(){
    	/*pw 정규표현*/  
    	var pw = document.getElementById("pw");    	
        var regPw = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&*()]).*$/
        	  if (!regPw.test(pw.value)) {
                  alert("비밀번호 8~15글자 (숫자,문자,특수기호)를 포함해주세요");
                  return false;
              }
        
        /* 이름 정규표현 */
            var name = document.getElementById("name");
            var regName = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
            if (!regName.test(name.value)) {
                alert("한글은 2 ~ 4글자(공백 없음) , 영문은 Firstname(2 ~ 10글자) (space) Lastname(2 ~10글자)로 입력해 주세요.");
                return false;
            }
        	
        	
        /* 전화번호 정규표현*/
       	var phone = document.getElementById("phone");
       	var regPhone =/^\d{2,3}-\d{3,4}-\d{4}$/;
			 if(!regPhone.test(phone.value)){
				 alert("전화번호를 입력해주세요")
			 }       
		
		/* 약관동의와 인증이후 회원가입*/ 
    	if($("#hidden").val()!="인증이 완료되었습니다."){
    			alert("중복확인을 해주세요.");
    		}else if($("#checkbox1").is(":checked") == false){
                alert("모든 약관에 동의해주세요");
                return;
            }else if($("#checkbox2").is(":checked") == false){
                alert("모든 약관에 동의해주세요");
                return;
            }else if($("#checkbox3").is(":checked") == false){
                alert("모든 약관에 동의해주세요");
                return;
            }else{
    			$("#enrollComplite").attr("action","<%=request.getContextPath() %>/member/memberEnrollEnd").submit();
    		}    	    	    	    	
    	  
    	/* 약관동의 */                        
    			
                
        



			  
    	
    }
    
    
	    	

   
    
    
    
</script>
	
<%@ include file="/views/common/footer.jsp"%>
	
	
</body>
</html>