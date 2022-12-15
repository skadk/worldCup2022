<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 상세 조회</title>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
	
	</head>
	<body>

		<div id="wrap">
			<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
			
			<h3>회원정보조회</h3>
			<br><br>
			<form method="post" action="<c:url value='/myPage/info'/>">
			<table border="1" width="800">
					<tr><td rowspan="9"></td></tr>
					<tr><td>회원아이디</td>
					<td><input type="hidden" name="memId" value="${mem.memId}">${mem.memId}</td></tr>
					<tr><td>회원이름 </td><td>${mem.memName } </td></tr>
					<tr><td>회원전화번호  </td><td>${mem.memHP }</td></tr>
					<tr><td>회원이메일</td><td>${mem.memEmail } </td></tr>
					<tr><td>우편번호  </td><td>${mem.memZipcode }</td></tr>
					<tr><td>도로명주소  </td><td>${mem.memAddress1 }</td></tr>
					<tr><td>상세주소  </td><td>${mem.memAddress2}</td></tr>
					<tr><td>포인트  </td><td>${mem.memPoint }</td></tr>
				</table><br><br>
					<input type="button" value="회원정보수정" class="btn" onclick="location.href='/myPage/updateForm'">
					<input type="button" value="로그아웃" class="btn" onclick="location.href='/member/logout'">
					<input type="button" value="회원탈퇴" class="btn" onclick="location.href='/myPage/myPageDeleteView'">
				<br><br>
				</form>
				
			 <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
    
		</div>
	</body>
</html>

