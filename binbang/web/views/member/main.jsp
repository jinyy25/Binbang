<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/views/common/commonLink.jsp"%>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/member/main.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/common/cal.css"
	type="text/css" />
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>

</head>
<body>
	<div class="wrap">
		<%@ include file="/views/common/header.jsp"%>
		<div class="banner">
			<form class="searchBox" style="display: flex;">
				<input type="text" name="search" id="search">
					<div>
						<p>체크인</p>
						<input type="text" name="checkIn" id="checkIn" value="날짜선택" readonly>
					</div>
					<div>
						<p>체크아웃</p>
						<input type="text" name="checkOut" id="checkOut" value="날짜선택" readonly>
					</div>
				<input type="button" value="검색" onclick="fn_search();">
			</form>

		</div>
		<section class="section">
			<div class="section2">
				<h2 class="recommendTitle">Recommend</h2>
				<div class="recommend">
					<div>
						<div class="recomPic1 recommon"></div>
						<div class="recomContents">
							<p>lorem</p>
							<p>lorem</p>
						</div>
					</div>
					<div>
						<div class="recomPic2 recommon"></div>
						<div class="recomContents">
							<p>lorem</p>
							<p>lorem</p>
						</div>
					</div>
					<div>
						<div class="recomPic3 recommon"></div>
						<div class="recomContents">
							<p>lorem</p>
							<p>lorem</p>
						</div>
					</div>
					<div>
						<div class="recomPic4 recommon"></div>
						<div class="recomContents">
							<p>lorem</p>
							<p>lorem</p>
						</div>
					</div>
					<div>
						<div class="recomPic5 recommon"></div>
						<div class="recomContents">
							<p>lorem</p>
							<p>lorem</p>
						</div>
					</div>
					<div>
						<div class="recomPic6 recommon"></div>
						<div class="recomContents">
							<p>lorem</p>
							<p>lorem</p>
						</div>
					</div>
				</div>
			</div>
			<div class="section3">
				<ul>
					<li>공지사항</li>
					<li>Lorem ipsum, dolo adipisicing elit. incidunt quas debitis<br />
						궁금한 사항을 검색해보세요
					</li>
					<li><a href="<%=request.getContextPath()%>/notice/noticeList">SHOW
							NOW</a></li>
				</ul>
				<ul>
					<li>ABOUT BINBANG</li>
					<li>Lorem ipsum, dolo adipisicing elit. incidunt quas debitis<br />
						BINBANG에 대한 정보를 자세히 알아보세요.
					</li>
					<li><a href="#">CONTACT US</a></li>
				</ul>
			</div>
		</section>
		<%@ include file="/views/common/footer.jsp"%>
	</div>
	<script src="<%=request.getContextPath()%>/js/common/header.js"></script>
	<script src="<%=request.getContextPath()%>/js/member/main.js"></script>
	<script>
		$(function() {
			$("#checkIn").datepicker(
					{
						dateFormat : "yy/mm/dd",
						dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],
						monthNames : [ "1월", "2월", "3월", "4월", "5월", "6월",
								"7월", "8월", "9월", "10월", "11월", "12월" ],
						onSelect : function(d) {
							 $("#checkIn").val(d);
							var week = new Array("일", "월", "화", "수", "목", "금","토");
						}
					});
			$("#checkOut").datepicker(
					{
						dateFormat : "yy/mm/dd",
						dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],
						monthNames : [ "1월", "2월", "3월", "4월", "5월", "6월",
								"7월", "8월", "9월", "10월", "11월", "12월" ],
						onSelect : function(d) {
							 $("#checkOut").val(d);
							var week = new Array("일", "월", "화", "수", "목", "금","토");
						}
					});
		});

    	function fn_search(){
    		$(".searchBox").attr("action", "<%=request.getContextPath()%>/house/houseSearchList")
					.submit();
		}
	</script>
</body>
</html>
