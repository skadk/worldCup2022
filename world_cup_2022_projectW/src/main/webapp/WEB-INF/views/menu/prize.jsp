<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>경품 응모</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/prize.css'/>">
		<script src="<c:url value='/js/prize.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
				<div id="bigimage">
					<img src="<c:url value='/image/황희찬_홈.jpg'/>">
					<img src="<c:url value='/image/정우영_어웨이.jpg'/>">
					<img src="<c:url value='/image/김민재_홈.jpg'/>">
					<img src="<c:url value='/image/황희찬_어웨이.jpg'/>">
				</div>
				<div id="miniwrap">
					<div id="prizeBox">
		                <h1 id='prdheader'>포인트 응모 상품</h1>
		                <div class="prize">
                			<ul id="przList">
                				<li>
			                		<div>
				                		<img src="<c:url value='/image/축구화.jpg'/>"><br>
				                		<button id="przBtn1" class="przBtn500 przBtn">응모하기</button>
			                		</div>
			                			<h3 id="przTitleText">Adidas 축구화</h3>
				                		<h4 id='needPointText'>500포인트</h4>
				                		<small>20개 한정</small><br>
                				</li>
		                		<li>
			                		<div>
				                		<img src="<c:url value='/image/budspro2.jpg'/>"><br>
				                		<button id="przBtn2" class="przBtn500 przBtn">응모하기</button>
			                		</div>
			                			<h3 id="przTitleText">Buds Pro 2</h3>
				                		<h4 id='needPointText'>500포인트</h4>
				                		<small>20개 한정</small><br>
		                		</li>
		                		<li>
			                		<div>
				                		<img src="<c:url value='/image/ball.jpg'/>"><br>
				                		<button id="przBtn3" class="przBtn500 przBtn">응모하기</button>
			                		</div>
			                			<h3 id="przTitleText">World Cup Ball</h3>
				                		<h4 id='needPointText'>500포인트</h4>
				                		<small id="smalltext">40개 한정</small><br>
		                		</li>
		                		<li>
		                			<div>
				                		<img src="<c:url value='/image/ipad.jpg'/>"> <br>
				                		<button id="przBtn4" class="przBtn1000 przBtn">응모하기</button>
				                	</div>
				                		<h3 id="przTitleText">iPad Air 5th Gen</h3>
				                		<h4 id='needPointText'>1000포인트</h4>
				                		<small>5개 한정</small><br>
		                		</li>
		                		<li>
		                			<div>
				                		<img src="<c:url value='/image/sony.jpg'/>"> <br>
				                		<button id="przBtn5" class="przBtn1000 przBtn">응모하기</button>
			                		</div>
			                			<h3 id="przTitleText">Sony WH-1000XM4</h3>
				                		<h4 id='needPointText'>1000포인트</h4>
				                		<small>15개 한정</small><br>
		                		</li>
		                		<li>
		                			<div>
				                		<img src="<c:url value='/image/airpod.jpg'/>"> <br>
				                		<button id="przBtn6" class="przBtn1000 przBtn">응모하기</button>
				                	</div>
				                		<h3 id="przTitleText">AirPods Pro 2</h3>
				                		<h4 id='needPointText'>1000포인트</h4>
				                		<small>10개 한정</small><br>
		                		</li>
		                	</ul>
		                </div>
					</div> <br>
					
					<div id="productBox">
             		  <h1 id='prdheader'>포인트 응모 한정판 굿즈</h1>
             		  <div class="product">
                			<ul id="prdList">
                				<li>
			                		<div>
				                		<img src="<c:url value='/image/굿즈_홈유니폼.jpg'/>"> <br>
				                		<button id="prdBtn1" class="przBtn10000 przBtn">응모하기</button>
			                		</div>
			                			<h3 id="prdTitleText">대한민국 축구 국가대표 홈 유니폼</h3>
				                		<h4 id='needPointText'>10000포인트</h4>
				                		<small>2개 한정</small><br>
                				</li>
		                		<li>
			                		<div>

				                		<img src="<c:url value='/image/굿즈_어웨이유니폼.jpg'/>"> <br>
				                		<button id="prdBtn2" class="przBtn10000 przBtn">응모하기</button>
                            
			                		</div>
			                			<h3 id="prdTitleText">대한민국 축구 국가대표 어웨이 유니폼</h3>
				                		<h4 id='needPointText'>10000포인트</h4>
				                		<small>2개 한정</small><br>
		                		</li>
		                		<li>
			                		<div>
                          
				                		<img src="<c:url value='/image/굿즈_트로피.jpg'/>"> <br>
				                		<button id="prdBtn3" class="przBtn10000 przBtn">응모하기</button>

			                		</div>
			                			<h3 id="prdTitleText">카타르 월드컵 한정판 공식 트로피</h3>
				                		<h4 id='needPointText'>10000포인트</h4>
				                		<small>2개 한정</small><br>
		                		</li>
		                		<li>
		                			<div>
                          
				                		<img src="<c:url value='/image/굿즈_커피포트.jpg'/>"> <br>
				                		<button id="prdBtn4" class="przBtn20000 przBtn">응모하기</button>

				                	</div>
				                		<h3 id="prdTitleText">카타르 월드컵 황동 커피포트</h3>
				                		<h4 id='needPointText'>20000포인트</h4>
				                		<small>1개 한정</small><br>
		                		</li>
		                		<li>
		                			<div>

				                		<img src="<c:url value='/image/굿즈_향수.jpg'/>"> <br>
				                		<button id="prdBtn5" class="przBtn20000 przBtn">응모하기</button>

				                	</div>
				                		<h3 id="prdTitleText">카타르 월드컵 코파 먼디알 알자지라 향수</h3>
				                		<h4 id='needPointText'>20000포인트</h4>
		                				<small>1개 한정</small><br>
		                		</li>
		                		<li>
		                			<div>
				                		<img src="<c:url value='/image/굿즈_마스코트피규어.jpg'/>"> <br>
				                		<button id="prdBtn6" class="przBtn20000 przBtn">응모하기</button>
			                		</div>
			                			<h3 id="prdTitleText">카타르 월드컵 공식 마스코트 피규어</h3>
				                		<h4 id='needPointText'>20000포인트</h4>
				                		<small>1개 한정</small><br>
		                		</li>
		                	</ul>
		                </div>
					</div>
				</div>
			<!-- bottom -->
       		<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>