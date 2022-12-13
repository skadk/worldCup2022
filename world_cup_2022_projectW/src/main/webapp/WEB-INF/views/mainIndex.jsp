<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>한국 대표팀 우승해조</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/mainIndex.css'/>">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
	</head>
	<body>
		<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<section>
				<div id="slideShow">
					<div id="prevNextButtonBox">
						<img id="prevButton" src="<c:url value='/image/prevButton.png'/>">
						<img id="nextButton" src="<c:url value='/image/nextButton.png'/>">
					</div>
					<div id="slideShowBox">
						<div id="slidePanel">
							<img src="<c:url value='/image/단체1.jpg'/>" class="slideImage">
							<img src="<c:url value='/image/3명.jpg'/>" class="slideImage">
							<img src="<c:url value='/image/마무리.jpg'/>" class="slideImage">
						</div>
						<div id="controlButtonBox">
							<img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
							<img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
							<img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
						</div>
					</div>
				</div>
				<div id="matchScheduleBox">
					<div id="desciption">
						대한민국 경기 일정
					</div>
					<div class="matchBox">
						<div class="flagBox">
							<p><img src="<c:url value='/image/kr2.png'/>"></p>
							<img src="<c:url value='/image/ur2.png'/>">
						</div>
						<div class="matchNation">
							<p>대한민국</p>
							우루과이
						</div>
						<div class="matchSchedule">
							<p>Education City Stadium</p>
							<b>2022.11.24.목 22:00</b>
						</div>
					</div>
					<div class="matchBox">
						<div class="flagBox">
							<p><img src="<c:url value='/image/kr2.png'/>"></p>
							<img src="<c:url value='/image/gn2.png'/>">
						</div>
						<div class="matchNation">
							<p>대한민국</p>
							가나
						</div>
						<div class="matchSchedule">
							<p>Education City Stadium</p>
							<b>2022.11.28.월 22:00</b>
						</div>
					</div>
					<div class="matchBox">
						<div class="flagBox">
							<p><img src="<c:url value='/image/kr2.png'/>"></p>
							<img src="<c:url value='/image/pt2.png'/>">
						</div>
						<div class="matchNation">
							<p>대한민국</p>
							포르투갈
						</div>
						<div class="matchSchedule">
							<p>Education City Stadium</p>
							<b>2022.12.3.토 00:20</b>
						</div>
					</div>
				</div>
				<div id="bannerBox">
					<a href="<c:url value='menu/match'/>"><img src="<c:url value='/image/kr.jpg'/>"></a>
					<a href="<c:url value='menu/korTeam'/>"><img src="<c:url value='/image/베스트11.jpg'/>"></a>
					<a href="<c:url value='menu/cheerWall'/>"><img src="<c:url value='/image/트로피3.jpg'/>"></a>
				</div>
			</section>
			<!-- bottom -->
            <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>