<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
<fieldset>
<legend>회원정보수정</legend>
	<form action="/member/update" method="post" name="fr">
		아이디 <input type="text" name="id" value="${memVO.userid }" readonly><br>
		비밀번호 <input type="password" name="pw" placeholder="비밀번호를 입력하세요" required><br>
		이름 <input type="text" name="name" value="${memVO.username } "><br>
		이메일 <input type="text" name="email" value="${memVO.useremail }"><br>
		<input type="submit" class="btn" value="회원정보수정하기">
		<input type="button" class="btn" value="메인으로" onclick="location.href='/member/main'">
	</form>
</fieldset>
</body>
</html>