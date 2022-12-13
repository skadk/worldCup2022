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
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/cheerBox.css'/>">
		<script src="<c:url value='/js/cheerBox.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<section>
				<article id="wordBox">
					<div id="title">
						<img src="<c:url value='/image/멘트3.png'/>" id="ment">
						<!-- <h1>맘에 드는 응원 문구가 나올 때까지 버튼을 클릭해 단어를 조합하세요!</h1><br>
						<h1>조합한 문구를 태극기에 새겨보세요!</h1> -->
					</div>
					<div id="btnBox">
						<button class="btn btnRandom btnRandom-outline" type="button">응원 메시지 만들기</button>
						<button class="btn btnWrite btnWrite-outline" type="button">새기기</button>
					</div>
					<div id="hiddenBox">
						<div class="word word1">
							<P>손흥민 </P>
							<P>벤투감독은 </P>
							<P>우리 </P>
							<P>나는 </P>
							<P>월드컵 </P>
							<P>세계가 </P>
							<P>대표팀 </P>
							<P>옆집 아저씨도 </P>
						</div>
						<div class="word word2">
							<P>골을 </P>
							<P>우승을 </P>
							<P>승리를 </P>
							<P>선수를 </P>
							<P>감독을 </P>
							<P>너를 </P>
							<P>우루과이를 </P>
							<P>모두 </P>
						</div>
						<div class="word word3">
							<P>멋있게 </P>
							<P>강렬하게 </P>
							<P>화려하게 </P>
							<P>간단하게 </P>
							<P>꿋꿋이 </P>
							<P>유쾌하게 </P>
							<P>굉장하게 </P>
							<P>끝까지 </P>
						</div>
						<div class="word word4">
							<P>넣자 </P>
							<P>패스해 </P>
							<P>승리하자 </P>
							<P>이기자 </P>
							<P>응원해 </P>
							<P>믿어 </P>
							<P>이겨라 </P>
							<P>파이팅 </P>
						</div>
					</div>
				</article>
				<article id="wallBox">
					<div id="wall">
						<div id="message">
						</div>
						<img src="<c:url value='/image/태극기.png'/>" id="flag">
					</div>
				</article>
			</section>
			<footer>
				<!-- bottom -->
	            <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
				<div id="BottomlogoBox">
            		<a href="index.html"><img src="<c:url value='/image/logo.png'/>" id="logoImg"></a>
            		<ul id="BottommenuItem">
                		<li>고객센터</li>
                		<li>광고문의</li>
                		<li>인재채용</li>
                		<li>개인정보처리방침</li>
                		<li> ⓒ 우승해조 Corp.</li>
            		</ul>
        		</div>
				<div id="bottomFix">
					<img src="<c:url value='/image/멘트4.png'/>" id="lastMent">
					<!-- <h1>태극기에 새겨진 모든 응원이 선수들에게 힘이 됩니다!</h1> -->
				</div>
			</footer>
		</div>
	</body>
</html>