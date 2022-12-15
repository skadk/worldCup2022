<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<header>
			<div id="headerBox">
				<div id="logoBox">
					<a href="<c:url value='/'/>"><img src="<c:url value='/image/logo.png'/>"></a>
				</div>
				<div id="topMenuBox">
					<c:if test="${empty sessionScope.sid }">
						<a href="<c:url value='/member/login'/>">로그인</a>
						<a href="<c:url value='/member/signUp'/>">회원가입</a>
					</c:if>
					<c:if test="${not empty sessionScope.sid }">
						${sessionScope.sid}님 환영합니다!
						<a href="<c:url value='/member/logout'/>">로그아웃</a><br>
						<a href="<c:url value='/myPage/detailViewMyPage/${sessionScope.sid}'/>">마이 페이지</a>
						<a href="<c:url value='/member/cart'/>">장바구니</a>
					</c:if>
				</div>
				<div id="mainMenuBox">
					<div id="mainMenuItem">
						<p><a href="<c:url value='/menu/korTeam'/>">한국대표팀 소개</a></p>
						<p><a href="<c:url value='/menu/cheerWall'/>">응원 담벼락</a></p>
						<p><a href="<c:url value='/menu/match'/>">승부 예측</a></p>
						<p><a href="<c:url value='#'/>">경품 응모</a></p>
						<p><a href="<c:url value='#'/>">굿즈 상점</a></p>
					</div>
				</div>
			</div>
		</header>