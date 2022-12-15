<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
	</head>
	<body>
	<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<div class="boardbox">
			<div id="board">
			<form id="boardForm" method="post" action="<c:url value='/menu/board'/>">
			<h1>응원 톡</h1>
			<hr>
			
		</form>	
		</div>		
		</div>	
	</div>	
	</body>
	<footer>
        <!-- bottom -->
        <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
    </footer>
</html>
