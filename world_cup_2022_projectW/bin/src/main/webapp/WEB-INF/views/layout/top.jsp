<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<header>
			<div id="headerBox">
				<div id="logoBox">
					<a href="<c:url value='/'/>"><img src="<c:url value='/image/logo2.png'/>" width='80' height='80'></a>
				</div>
				<div id="topMenuBox">
					<a href="<c:url value='/member/loginForm'/>">로그인</a>
					<a href="<c:url value='/member/joinForm'/>">회원가입</a>
				</div>
				<div id="mainMenuBox">
					<div id="menuItem">
						<p><a href="<c:url value='/korTeam'/>">한국대표팀 소개</a></p>
						<p><a href="<c:url value='/cheerWall'/>">응원 담벼락</a></p>
						<p><a href="<c:url value='/match'/>">승부 예측</a></p>
						<p><a href="<c:url value='/signUp'/>">경품 응모</a></p>
						<p><a href="<c:url value='/login'/>">굿즈 상점</a></p>
					</div>
				</div>
			</div>
		</header>