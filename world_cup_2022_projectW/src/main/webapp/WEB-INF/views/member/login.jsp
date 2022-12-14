<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>한국 대표팀 우승해조</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/login.css'/>">
		<script src="<c:url value='/js/login.js'/>"></script>
		<link rel="icon" href="<c:url value='/image/대표팀2.png'/>" type="image/x-icon" sizes="16x16">
	</head>
	<body>
	<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
		<div class="loginbox">
			<div id="login">
				<form id="loginForm" name="loginForm">
					<h1>로그인</h1>
					
					<h4>아이디</h4>
					<span class="input_area"><input type="text" maxlength="13" id="id" name="id" 
					placeholder="아이디를 입력해 주세요." required></span>
					
					<h4>비밀번호</h4>
					<span class="input_area"><input type="password" maxlength="15" id="pwd" name="pwd" 
					placeholder="비밀번호를 입력해 주세요." required></span>
					<ul>
						<li><a href="#">아이디/비밀번호찾기</a></li>
						<li><a href="<c:url value="/member/signUp"/>">회원가입</a></li>
					</ul>
					<button type="submit">로그인</button>
				</form>
			</div>
		</div>
	</div>
	</body>
		<footer>
        <!-- bottom -->
        <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
    </footer>
</html>