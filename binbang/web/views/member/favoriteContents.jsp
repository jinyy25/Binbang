<%@page import="java.text.Normalizer.Form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/views/common/commonLink.jsp"%>
<%@ page import = "com.binbang.member.model.vo.Favorite, com.binbang.member.model.vo.Member" %>
<%@page import="java.util.List"%>	

<% 
	List<Favorite> list = (List) request.getAttribute("list");
	String na = (String)request.getAttribute("folderName"); 
	String no = (String)request.getAttribute("folderNo");  
	String mno = (String)request.getAttribute("memberNo");
%>

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/member/favoriteContents.css" />
</head>
<body>
<div class="wrap">
		<%@ include file="/views/common/header.jsp"%>

		<!-- 관심숙소content -->
		
<section class="section">		
		<form class="favHouse" method="post">
			<div>
				<input type="hidden" value="<%=no%>" name="folderNo" name="folderNo">
				<input type="hidden" value="<%=mno%>" name="memberNo">
			</div>
			
			<div class="line1">
				<input type="text" value="<%=na%>" class="favTitle">
				<div class="listLine"></div>
			</div>			
			
			<!-- 관심숙소폴더 -->
			<div class="favorite">

				<!-- 버튼  class="Btn"-->
				<div class="btnGroup">
					<input type="button" id="backBtn" value="뒤로가기" onclick="fn_back11();"> 						
					<input type="button" id="modifyBtn11" value="목록수정" >															
				</div>

				
				<div class="modifyPop ModDisNone">
					<div id="popupContent">					
						<div class="popupHeader">
							<p class="modifyTitle">목록수정</p>
							<button class="xBtn">x</button>
						</div>

						<div class="popupSection">
							<input id="listName" type="text" placeholder="이름" name="folderName">
						</div>

						<div class="popupFooter">
							<input type="button" id="saveBtn" value="저장" onclick="fn_modify();">
							<input type="button" id="deleteBtn" value="목록삭제" onclick="fn_folderDelete();">														
						</div>
					</div>										
				</div>			
			</div>
			</form>

				<div class="favoriteList">
					<% for(Favorite f : list){%>
					<form class="favHouse" method="post">					
						<div>
							<input type="button" class="heartButton fav">
							
							<input type="hidden" value="<%=na%>" name="folderName">
							<input type="hidden" value="<%=no%>" name="folderNo" name="folderNo">						
							<input type="hidden" class="check 0" value="<%=f.getFolderNo()%>">
							<input type="text" value="<%=f.getHouseNo()%>" name="houseNo">															
							<a href="<%=request.getContextPath()%>/house/houseDetailMove?houseNo=<%=f.getHouseNo()%>">	
							<img src="<%=request.getContextPath() %>/upload/house/<%=f.getPictureName()%>" style="width:100%; height:90%;"  alt="사진">												 																						 																																																				
						</div>
					</form>	
					<%}%>	
				</div>	
							
		</section>

		<%@ include file="/views/common/footer.jsp"%>
	</div>
	
	<script>
	
	function fn_back11(){					 
		         $(".favHouse").attr("action","<%=request.getContextPath()%>/favorite/favoriteBack").submit();
		    }			
	//x버튼, 팝업버튼
	  $(document).ready(function () {   
		   $("#modifyBtn11").on("click",function(e){
		    	  $(".modifyPop").removeClass("ModDisNone");
		   	  });
		   $(".xBtn").on("click",function(e){
		     	   $(".modifyPop").addClass("ModDisNone");
		      });    
 	 });
	
	
	function fn_folderDelete(){
		 	$(".favHouse").attr("action","<%=request.getContextPath()%>/favorite/deleteFolder").submit();
		}
	function fn_modify(){
			$(".favHouse").attr("action","<%=request.getContextPath()%>/favorite/modifyFolder").submit();
	}
	  
	  // 경고창
	  $("#deleteBtn").click(e =>{
	    alert("정말 삭제하시겠습니까?")
	    })
	    
	    
	  //하트버튼
	  $(".heartButton").on("click",function(e){				  
	      $(e.target).toggleClass("heart");
	      $(e.target).toggleClass("fav");
	      
	      alert("관심숙소 삭제");
	      $(".favHouse").attr("action","<%=request.getContextPath()%>/favorite/deleteContent").submit();	      	      
	      
	  });
	</script>
	
	<script src="<%=request.getContextPath()%>/js/common/header.js"></script>
	<script src="<%=request.getContextPath()%>/js/member/favorite.js"></script>	
</body>
</html>