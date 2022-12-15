<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 정보 수정 폼</title>
		<style>
			#wrap{
				margin:0 auto;
				width: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				width: 400px;
			}			
		</style>
	</head>
	<body>
		<div id="wrap">
			<h3>상품 정보 수정 폼</h3>
			<hr>
			<form method="post" action="<c:url value='/myPage/deleteMyPage'/>">
				<table>
					<tr><td>회원명</td>
							<td><input type="text" name="memName" value="${mem.memName}" readonly></td></tr>	
					<tr><td>회원아이디</td>
							<td><input type="text" name="memId" value="${mem.memId}" readonly></td></tr>
					<tr><td>비밀번호</td>
							<td><input type="password" name="memPwd"></td></tr>								
					<tr><td colspan="2">
					<input type="submit" value="탈퇴 확인">
				    <input type="reset" value="취소"></td></tr>
				</table>
			</form>
			<br><br>
			<a href="<c:url value='/'/>">메인 화면으로 이동</a>
		</div>
	</body>
</html>