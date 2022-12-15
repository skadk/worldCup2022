<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<link rel="stylesheet" type="text/css" href="../css/myPageDelete.css">
		<title>회원탈퇴</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#memPwd").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#memPwd").focus();
					return false;
				}	
			});
		})
	</script>
	<body>
	<div id="wrap">
			<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
        	<h3 class="exit">회원탈퇴</h3>
        	<hr>
        	<p class="exittext">고객님의 개인정보 보호를 위해 본인확인을 진행합니다.</p>
		<section id="container">
			<form action="/myPage/myPageDelete" method="post">
				<div class="feedback">
					<label class="control-label" for="userId">아이디</label>
					<input class="form-control" type="text" id="memId" name="memId" value="${mem.memId}" readonly>
				</div><br>
				<div class="feedback">
					<label class="control-label" for="userPass">패스워드</label>
					<input class="form-control" type="password" id="memPwd" name="memPwd" />
				</div><br>
				<div class="feedback">
					<label class="control-label" for="userName">성명</label>
					<input class="form-control" type="text" id="memName" name="memName" value="${mem.memName}" readonly>
				</div><br>
				<div class="feedback">
					<button class="btn btn-success" type="submit" id="submit">회원탈퇴</button>
					<button class="cencle btn btn-danger" type="button">취소</button>
				</div>
			</form>
			<div>
				<c:if test="${msg == false}">
					비밀번호가 맞지 않습니다.
				</c:if>
			</div>
		</section>
		 <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</div>	
	</body>
	
</html>