<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자 페이지</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<script src="<c:url value='/js/admin.js'/>"></script>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/admin.css'/>">
	</head>
	<body>
		<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
				<div id="miniwrap">
					<h2 id="text">관리자 페이지 입니다.</h2> <br>
					<button id="pointBtn" class="prdBtn">포인트 지급</button>
					sdfasdfasdfsfasd
				</div>
			<!-- bottom -->
       		<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
       	</div>
	</body>
</html>