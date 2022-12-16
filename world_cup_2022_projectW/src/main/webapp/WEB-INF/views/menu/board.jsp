<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/board.css'/>">
	</head>
	<body>
	<div id="wrap">
	<!-- top -->
	<c:import url="/WEB-INF/views/layout/top.jsp"/>
		<form id="boardForm" method="post" action="<c:url value='/menu/boardList'/>">
			<h1>응원 해조</h1>
			<hr>
			<input type="text" maxlength="100" id="boardText" name="boardText">
		 	<input id="button" type="submit" value="등록"><br><br>
			<table border="1" width="1000">
				<tr>
					<th>게시글 번호</th>
					<th>작성자</th>
					<th>작성 내용</th>
					<th>작성 시간</th>
				</tr>
				<c:forEach var="brd" items="${ brdList }">
					<tr><td>${ brd.boardNo }</td>
						<td>${ brd.memId }</td>
						<td>${ brd.boardText }</td>
						<td><fmt:formatDate value="${brd.boardDate }" pattern="yy-MM-dd HH:mm"/></td></tr>
				</c:forEach>
			</table>	
		</form>
	</div>	
	</body>
	<footer>
        <!-- bottom -->
        <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
    </footer>
</html>
