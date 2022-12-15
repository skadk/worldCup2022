<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 상세 조회</title>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/info.css'/>">
	</head>
	<body>
		<div id="wrap">
			<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
			<h3>회원정보조회</h3>
			<br><br>
			<form method="post">
			<table border="1" width="800">
					<tr><td>회원아이디</td><td>${mem.memId}</td></tr>
					<tr><td>회원이름 </td><td>${mem.memName } </td></tr>
					<tr><td>회원전화번호  </td><td>${mem.memHP }</td></tr>
					<tr><td>회원이메일</td><td>${mem.memEmail } </td></tr>
					<tr><td>우편번호  </td><td>${mem.memZipcode }</td></tr>
					<tr><td>도로명주소  </td><td>${mem.memAddress1 }</td></tr>
					<tr><td>상세주소  </td><td>${mem.memAddress2}</td></tr>
				</table><br><br>
					<a href="<c:url value='/myPage/updateMyPageForm/${mem.memId}'/>"><input type="button" value="회원정보수정" class="btn"></a>
					<a href="<c:url value='/myPage/deleteMyPageForm/${mem.memId}'/>"><input type="button" value="회원탈퇴" class="btn"></a>
				<br><br>
				</form>
				
			 <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
    
		</div>
	</body>
</html>

