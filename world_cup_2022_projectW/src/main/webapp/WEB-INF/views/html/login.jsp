<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>한국 대표팀 우승해조</title>
		<script src="../js/jquery-3.6.1.min.js"></script>
		<script type="text/javascript">         
		</script>
		<link rel="stylesheet" type="text/css" href="../css/login.css">
		<link rel="stylesheet" type="text/css" href="../css/Toolindex.css">	
		<link rel="icon" href="../image/대표팀2.png" type="image/x-icon" sizes="16x16">
		
	</head>
	<body>
	<header>
		<div id='wrapmenu'>
			<div id="mainIndexBox">
				<ul id="mainIndex">
					<li><a href='mainindex.html'><img src="../image/logo2.png" width='80' height='80'></a></li>
					<li><a href='Sub1.html'>한국대표팀 소개</a></li>
					<li><a href='cheerWall.html'>응원 담벼락</a></li>
					<li><a href='match.html'>승부 예측</a></li>
					<li><a href='signup.html'>회원가입</a></li>
					<li><a href='login.html'>로그인</a></li>
				</ul>
			</div>
		</div>
	</header>
	<div class="loginbox">
		<div id="login">
			<form id="loginForm">
				<h1>로그인</h1>
				
				<h4>아이디</h4>
				<span class="input_area"><input type="text" maxlength="13" name="loginID" 
				placeholder="아이디를 입력해 주세요." required></span>
				
				<h4>비밀번호</h4>
				<span class="input_area"><input type="password" maxlength="15" name="loginPW" 
				placeholder="비밀번호를 입력해 주세요." required></span>
				<ul>
					<li><a href="#">아이디/비밀번호찾기</a></li>
					<li><a href="signup.html">회원가입</a></li>
				</ul>
				<button type="submit">로그인</button>
			</form>
		</div>
	</div>
	</body>
		<footer>
        <div id="BottomlogoBox">
            <a href="mainindex.html"><img src="../image/logo.png" id="logoImg"></a>
            <ul id="BottommenuItem">
                <li>고객센터</li>
                <li>광고문의</li>
                <li>인재채용</li>
                <li>개인정보처리방침</li>
                <li> ⓒ 우승해조 Corp.</li>
            </ul>
        </div>
    </footer>
</html>