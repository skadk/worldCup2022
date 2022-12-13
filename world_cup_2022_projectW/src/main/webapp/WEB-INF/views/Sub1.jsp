<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
			<!--  head -->         
        	<c:import url="/WEB-INF/views/layout/head.jsp" />
		<script src="../js/Sub1.js"></script>
		<link rel="stylesheet" type="text/css" href="../css/Sub1.css">
	</head>
	<body>
	<div id="wrap">
			<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
		<nav>
			<div id="position">
				<ul id="positionmenu">
					<li class="teamlink"><a href="#">대표팀 소개</a></li>
					<li class="DRlink"><a href="#">감독</a></li>
					<li class="GKlink"><a href="#">골키퍼(GK)</a></li>
					<li class="DFlink"><a href="#">수비수(DF)</a></li>
					<li class="MFlink"><a href="#">미드필더(MF)</a></li>
					<li class="FWlink"><a href="#">공격수(FW)</a></li>
				</ul>
			</div>
		</nav>
		<hr>
		<div id="drt" align="center">
			<img src="<c:url value='/image/벤투.jpg'/>" id="bentoImg">
			<p class="drtintroduce">
				감독이름 ▶ 파울루 벤투<br> <br> 출생 ▶ 1969년 6월 20일(53세)<br> <br>
				국적 ▶ 포르투갈<br> <br> 신체 ▶ 키 174cm 체중 68kg<br> <br>
				경력 ▶ 2018.08~ 대한민국 축구 국가대표팀 감독<br>2017.12~2018.07 충칭 당다이 리판
				(중국) 감독<br> 2016.08~2017.03 올림피아코스 FC (그리스) 감독<br>
				2016.05~2016.07 크루제이루 EC (브라질) 감독
			</p>
		</div>
		<br> <br>
		<div id="player" align="center">
			<h2 id="teamlist">대표팀 명단 및 월드컵 역대 전적</h2>
			<br> <img src="<c:url value='/image/명단.jpg'/>" id="listimg"> 
			<img src="<c:url value='/image/성적.PNG'/>" class="listimgscore">
		</div>
	</div>
	<br>
	<div id="GK">
		<h2 align="center" id="team">골키퍼(GK)</h2><br>
		<div class="GKname" align="center">
			<div>
				<a href="#"><img class="ksk" src="../image/김승규.jpg"onclick="location.href='https://www.instagram.com/seungseung18/'"></a>
				<p class="krplayer">김승규</p>
				<p class="krplayertext">
					출생 ▶ 1990.9.30<br> 신체 ▶ 187cm,84kg<br> 소속팀 ▶ 알 샤밥 FC
			</div>
			<div>
				<a href="#"><img src="<c:url value='/image/조현우.jpg'/>"onclick="location.href='https://www.instagram.com/hyeonwoo2rin/'"></a>
				<p class="krplayer">조현우</p>
				<p class="krplayertext">
					출생 ▶ 1991.9.25<br> 신체 ▶ 189cm,75kg<br> 소속팀 ▶ 울산현대축구단
			</div>
			<div>
				<a href="#"><img src="<c:url value='/image/송범근.jpg'/>"onclick="location.href='https://www.instagram.com/bumkeun_song/'"></a>
				<p class="krplayer">송범근</p>
				<p class="krplayertext">
					출생 ▶ 1997.10.15<br> 신체 ▶ 196cm,90kg<br> 소속팀 ▶ 전북 현대 모터스
			</div>
		</div>
	</div><br>
	<hr><br>
	<h2 align="center" id="team">수비수(DF)</h2><br>
	<div id="DF">
		<div class="DFname" align="center">
			<div>
				<a href="#"><img src="<c:url value='/image/권경원.jpg'/>"onclick="location.href='https://www.instagram.com/kwon_kyungwon/'"></a>
				<p class="krplayer">권경원</p>
				<p class="krplayertext">
					출생 ▶ 1992.1.31<br> 신체 ▶ 189cm,84kg<br> 소속팀 ▶ 감바 오사카
			</div>
			<div>
				<a href="#"><img src="<c:url value='/image/김문환.jpg'/>"onclick="location.href='https://www.instagram.com/hwan._.ii/'"></a>
				<p class="krplayer">김문환</p>
				<p class="krplayertext">
					출생 ▶ 1995.8.1<br> 신체 ▶ 173cm,64kg<br> 소속팀 ▶ 전북 현대 모터스
			</div>
			<div>
				<a href="#"><img src="<c:url value='/image/김민재.jpg'/>"onclick="location.href='https://www.instagram.com/kiminjae3/'"></a>
				<p class="krplayer">김민재</p>
				<p class="krplayertext">
					출생 ▶ 1996.11.15<br> 신체 ▶ 190cm,87kg<br> 소속팀 ▶ 나폴리
			</div>
		</div>
		<br>
		<div class="DFname" align="center">
			<div>
				<a href="#"><img src="<c:url value='/image/김영권.jpg'/>"onclick="location.href='https://www.instagram.com/gwon__sj/'"></a>
				<p class="krplayer">김영권</p>
				<p class="krplayertext">
					출생 ▶ 1990.2.27<br> 신체 ▶ 186cm,81kg<br> 소속팀 ▶ 울산현대축구단
			</div>
			<div>
				<a href="#"><img src="<c:url value='/image/김진수.jpg'/>"onclick="location.href='https://www.instagram.com/jinsu_jung_a0531/'"></a>
				<p class="krplayer">김진수</p>
				<p class="krplayertext">
					출생 ▶ 1992.6.13<br> 신체 ▶ 177cm,68kg<br> 소속팀 ▶ 전북 현대 모터스
			</div>
			<div>
				<a href="#"><img src="<c:url value='/image/김태환.jpg'/>"onclick="location.href='https://www.instagram.com/holichwan/'"></a>
				<p class="krplayer">김태환</p>
				<p class="krplayertext">
					출생 ▶ 1989.7.24<br> 신체 ▶ 180cm,72kg<br> 소속팀 ▶ 울산현대축구단
			</div>
		</div>
		<br>
		<div class="DFname" align="center">
			<div>
				<a href="#"><img src="<c:url value='/image/윤종규.jpg'/>"onclick="location.href='https://www.instagram.com/dbswhdrb_/'"></a>
				<p class="krplayer">윤종규</p>
				<p class="krplayertext">
					출생 ▶ 1998.3.20<br> 신체 ▶ 173cm,65kg<br> 소속팀 ▶ FC 서울
			</div>
			<div>
				<a href="#"><img src="<c:url value='/image/조유민.jpg'/>"onclick="location.href='https://www.instagram.com/c.yuum_/'"></a>
				<p class="krplayer">조유민</p>
				<p class="krplayertext">
					출생 ▶ 1996.11.17<br> 신체 ▶ 182cm,79kg<br> 소속팀 ▶ 대전하나시티즌
			</div>
			<div>
				<a href="#"><img src="<c:url value='/image/홍철.jpg'/>"onclick="location.href='https://www.instagram.com/hongchul33/'"></a>
				<p class="krplayer">홍철</p>
				<p class="krplayertext">
					출생 ▶ 1990.9.17<br> 신체 ▶ 176cm,70kg<br> 소속팀 ▶ 대구 FC
			</div>
		</div><br>
		<hr>
		<br>
		<h2 align="center" id="team">미드필더(MF)</h2><br>
		<div id="MF">
			<div class="MFname" align="center">
				<div>
					<a href="#"><img src="<c:url value='/image/권창훈.jpg'/>"onclick="location.href='https://www.instagram.com/kwonchanghoon/'"></a>
					<p class="krplayer">권창훈</p>
					<p class="krplayertext">
						출생 ▶ 1997.6.30<br> 신체 ▶ 174cm,69kg<br> 소속팀 ▶ 김천상무프로축구단
				</div>
				<div>
					<a href="#"><img src="<c:url value='/image/나상호.jpg'/>"onclick="location.href='https://www.instagram.com/na_sangho17/'"></a>
					<p class="krplayer">나상호</p>
					<p class="krplayertext">
						출생 ▶ 1996.8.12<br> 신체 ▶ 173cm,70kg<br> 소속팀 ▶ FC 서울
				</div>
				<div>
					<a href="#"><img src="<c:url value='/image/백승호.jpg'/>"onclick="location.href='https://www.instagram.com/seungho_paik/'"></a>
					<p class="krplayer">백승호</p>
					<p class="krplayertext">
						출생 ▶ 1997.3.17<br> 신체 ▶ 182cm,72kg<br> 소속팀 ▶ 전북 현대 모터스
				</div>
				<div>
					<a href="#"><img src="<c:url value='/image/손준호.jpg'/>"onclick="location.href='https://www.instagram.com/lovemomo.juno/'"></a>
					<p class="krplayer">손준호</p>
					<p class="krplayertext">
						출생 ▶ 1992.5.12<br> 신체 ▶ 180cm,73kg<br> 소속팀 ▶ 산둥 타이산
				</div>
			</div>
			<br>
			<div class="MFname" align="center">
				<div>
					<a href="#"><img src="<c:url value='/image/손흥민.jpg'/>"onclick="location.href='https://www.instagram.com/hm_son7/'"></a>
					<p class="krplayer">손흥민</p>
					<p class="krplayertext">
						출생 ▶ 1992.7.8<br> 신체 ▶ 183cm,77kg<br> 소속팀 ▶ 토트넘 홋스퍼 FC
				</div>
				<div>
					<a href="#"><img src="<c:url value='/image/송민규.jpg'/>"onclick="location.href='https://www.instagram.com/song.__.v/'"></a>
					<p class="krplayer">송민규</p>
					<p class="krplayertext">
						출생 ▶ 1999.9.12<br> 신체 ▶ 179cm,72kg<br> 소속팀 ▶ 전북 현대 모터스
				</div>
				<div>
					<a href="#"><img src="<c:url value='/image/이강인.jpg'/>"onclick="location.href='https://www.instagram.com/kanginleeoficial/'"></a>
					<p class="krplayer">이강인</p>
					<p class="krplayertext">
						출생 ▶ 2001.2.19<br> 신체 ▶ 173cm,63kg<br> 소속팀 ▶ 레알 마요르카
				</div>
				<div>
					<a href="#"><img src="<c:url value='/image/이재성.jpg'/>"onclick="location.href='https://www.instagram.com/jaesung17/'"></a>
					<p class="krplayer">이재성</p>
					<p class="krplayertext">
						출생 ▶ 1992.8.10<br> 신체 ▶ 180cm,70kg<br> 소속팀 ▶ FSV 마인츠 05
					
				</div>
			</div>
			<br>
			<div class="MFname" align="center">
				<div>
					<a href="#"><img src="<c:url value='/image/정우영2.jpg'/>"onclick="location.href='https://www.instagram.com/wooyon5/'"></a>
					<p class="krplayer">정우영</p>
					<p class="krplayertext">
						출생 ▶ 1989.12.14<br> 신체 ▶ 186cm,78kg<br> 소속팀 ▶ 알 사드 SC
				</div>
				<div>
					<a href="#"><img src="<c:url value='/image/황인범.jpg'/>"onclick="location.href='https://www.instagram.com/inbeom_hwang6/'"></a>
					<p class="krplayer">황인범</p>
					<p class="krplayertext">
						출생 ▶ 1996.9.20<br> 신체 ▶ 177cm,67kg<br> 소속팀 ▶ 올림피아코스 FC
				</div>
				<div>
					<a href="#"><img src="<c:url value='/image/황희찬.jpg'/>"onclick="location.href='https://www.instagram.com/hwangheechan/'"></a>
					<p class="krplayer">황희찬</p>
					<p class="krplayertext">
						출생 ▶ 1996.1.26<br> 신체 ▶ 177cm,77kg<br> 소속팀 ▶ 울버햄튼 원더러스
						FC
				</div>
			</div>
		</div><br>
		<hr>
		<br>
		<h2 align="center" id="team">공격수(FW)</h2><br>
		<div id="FW">
			<div class="FWname" align="center">
				<div>
					<a href="#"><img src="<c:url value='/image/정우영1.jpg'/>"onclick="location.href='https://www.instagram.com/jeong_wooyeong/'"></a>
					<p class="krplayer">정우영</p>
					<p class="krplayertext">
						출생 ▶ 1999.9.20<br> 신체 ▶ 180cm,70kg<br> 소속팀 ▶ SC 프라이부르크
				</div>
				<div>
					<a href="#"><img src="<c:url value='/image/조규성.jpg'/>"onclick="location.href='https://www.instagram.com/whrbtjd/'"></a>
					<p class="krplayer">조규성</p>
					<p class="krplayertext">
						출생 ▶ 1998.1.25<br> 신체 ▶ 188cm,82kg<br> 소속팀 ▶ 전북 현대 모터스
				</div>
				<div>
					<a href="#"><img src="<c:url value='/image/황의조.jpg'/>"onclick="location.href='https://www.instagram.com/hwang_uijo/'"></a>
					<p class="krplayer">황의조</p>
					<p class="krplayertext">
						출생 ▶ 1992.8.28<br> 신체 ▶ 185cm,82kg<br> 소속팀 ▶ 올림피아코스 FC
				</div>
			</div>
		</div>
		<br>
	</div>
	<footer>
        <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
    </footer>
</body>
</html>
