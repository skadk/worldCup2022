<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>승부예측</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/match.css'/>">
		<script src="<c:url value='/js/match.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<div id="matchHeaderBox">
				<div id="matchBtnCSS">
					<div id="matchTitleBox">
						<img id="matchBtn" src="<c:url value='/image/승부예측7.png'/>">				
					</div>
				</div>
			</div>
			<div id="mainTabBox">
				<ul id="TabItem">
					<li class='tab-button active'>
						<img src='<c:url value="/image/KoreaSymbol.png"/>'>
						&nbsp;&nbsp;&nbsp;&nbsp;대한민국 vs 우루과이 
						<img src='<c:url value="/image/UruguaySymbol.png"/>'>
					</li>
					<li class='tab-button'>
						<img src='<c:url value="/image/KoreaSymbol.png"/>'>
						&nbsp;&nbsp;&nbsp;&nbsp;대한민국 vs 가나 
						<img src='<c:url value="/image/GhanaSymbol.png"/>'>
						</li>
					<li class='tab-button'>
						<img src='<c:url value="/image/KoreaSymbol.png"/>'>
						&nbsp;&nbsp;&nbsp;&nbsp;대한민국 vs 포르투갈 
						<img src='<c:url value="/image/PortugalSymbol.png"/>'>
					</li>
				</ul>
			</div>
			<div id='mainBetContainer'>
				<div class='mainBet show'>
					<img src="<c:url value="/image/background.jpg"/>" width='1280' height='1000'>
					<div class='draw1'>
						<b class='score1 percent2' id="percent2" name="percent2"></b>
						<button class='resetBtn1 Btn'>선택 초기화</button>
					</div>
					<div class='drawtext'>
						트로피 선택 시 무승부
					</div>
					<div class='leftBet1'>
						<img src="<c:url value="/image/KoreaPlayer.jpg"/>" width='350' height='550'><br>
						<img src="<c:url value="/image/KoreaFB.jpg"/>" width='100' height='100'><br>
						<h3>대한민국</h3>
						<b class='score1 percent1' id="percent1" name="percent1"></b>
					</div>
					<div class='rightBet1'>
						<img src="<c:url value="/image/UruguayPlayer.jpg"/>" width='350' height='550'><br> 
						<img src="<c:url value="/image/UruguayFB.jpg"/>" width='100' height='100'><br>
						<h3>우루과이</h3>
						<b class='score1 percent3' id="percent3" name="percent3"></b>
					</div>
			</div>

			<div class='mainBet'>
				<img src="<c:url value="/image/background.jpg"/>" width='1280' height='840'>
				<div class='draw2'>
						<b class='score2 percent2' id="percent2" name="percent2"></b>
						<button class='resetBtn2 Btn'>선택 초기화</button>
				</div>
				<div class='drawtext'>트로피 선택 시 무승부</div>
				
				<div class='leftBet2'>
					<img src="<c:url value="/image/KoreaPlayer.jpg"/>" width='350' height='550'><br> 
					<img src="<c:url value="/image/KoreaFB.jpg"/>" width='100' height='100'><br>
					<h3>대한민국</h3>
						<b class='score2 percent1' id="percent1" name="percent1"></b>
				</div>
				<div class='rightBet2'>
					<img src="<c:url value="/image/GhanaPlayer.jpg"/>" width='350' height='550'><br>
					<img src="<c:url value="/image/GhanaFB.jpg"/>" width='100' height='100'><br>
					<h3>가나</h3>
						<b class='score2 percent3' id="percent3" name="percent3"></b>
				</div>
			</div>

			<div class='mainBet'>
				<img src="<c:url value="/image/background.jpg"/>" width='1280' height='840'>
				<div class='draw3'>
					<b class='score3 percent2' id="percent2" name="percent2"></b>
					<button class='resetBtn3 Btn'>선택 초기화</button>
				</div>
				<div class='drawtext'>트로피 선택 시 무승부</div>
				
				<div class='leftBet3'>
					<img src="<c:url value="/image/KoreaPlayer.jpg"/>" width='350' height='550'><br>
					<img src="<c:url value="/image/KoreaFB.jpg"/>" width='100' height='100'><br>
					<h3>대한민국</h3>
						<b class='score3 percent1' id="percent1" name="percent1"></b>
				</div>
				<div class='rightBet3'>
					<img src="<c:url value="/image/PortugalPlayer.jpg"/>" width='350' height='550'><br> 
					<img src="<c:url value="/image/PortugalFB.jpg"/>" width='100' height='100'><br>
					<h3>포르투갈</h3>
						<b class='score3 percent3' id="percent3" name="percent3"></b>
				</div>
			</div>
		</div>
		<!-- bottom -->
        <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>