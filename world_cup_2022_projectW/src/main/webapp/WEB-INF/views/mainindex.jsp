<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
	</head>
	<body>
		<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<section>
				<article id="slideShow">
					<div id="prevNextButtonBox">
						<img id="prevButton" src="../image/prevButton.png">
						<img id="nextButton" src="../image/nextButton.png">
					</div>
					<div id="slideShowBox">
						<div id="slidePanel">
							<img src="../image/단체1.jpg" class="slideImage">
							<img src="../image/3명.jpg" class="slideImage">
							<img src="../image/마무리.jpg" class="slideImage">
							<img src="../image/트로피3.jpg" class="slideImage">
						</div>
					</div>
					<div id="controlButtonBox">
						<img src="../image/controlButton1.png" class="controlButton">
						<img src="../image/controlButton1.png" class="controlButton">
						<img src="../image/controlButton1.png" class="controlButton">
					</div>
				</article>
				<div id="message">
					우승기원 예선전 결과
				</div>
				<div id="match1" style="float: left; width: 33%;">
					<div id="kr1">
						<img src="../image/kr2.png"><br />
						<img src="../image/ur2.png">
					</div>
					<div id="matchschedule">
						대한민국<br><br><br>
						우루과이
					</div>
					<div id="matchday">
						<b>Education City Stadium<br><br><br>
							2022.11.24.목 22:00
						</b>
					</div>
				</div>
				<div id="match2" style="float: left; width: 33%;">
					<div id="kr1">
						<img src="../image/kr2.png"><br />
						<img src="../image/gn2.png">
					</div>
					<div id="matchschedule">
						대한민국<br><br><br>
						가나
					</div>
					<div id="matchday">
						<b>Education City Stadium<br><br><br>
							2022.11.28.월 22:00
						</b>
					</div>
				</div>
				<div id="match3" style="float: left; width: 33%">
					<div id="kr1">
						<img src="../image/kr2.png"><br />
						<img src="../image/pt2.png">
					</div>
					<div id="matchschedule">
						대한민국<br><br><br>
						포르투갈
					</div>
					<div id="matchday">
						<a><b>Education City Stadium</b></a><br><br><br>
						<a><b>2022.12.3.토 00:00</b></a>
					</div>
				</div>
				<div id="pic">
				<div id="postit">
					<a href="<c:url value='/match'/>"><img src="../image/kr.jpg" id="postitimg"></a>
				</div>
				<div id="best11">
					<a href="<c:url value='/Sub1'/>"><img src="../image/베스트11.jpg" id="best11"></a>
				</div>
				<div id="cheerph">
					<a href="<c:url value='/cheerWall'/>"><img src="../image/트로피3.jpg" id="cheerph"style="max-width: 100%; height: auto;"></a>
				</div>
				</div>
				
			</section>
			<!-- bottom -->
            <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>