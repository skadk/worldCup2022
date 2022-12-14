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
			<form method="post" action="<c:url value='/myPage/updateMyPage' />">
				<table>
					<tr><td>회원명</td>
							<td><input type="text" name="memName" value="${mem.memName }" readonly></td></tr>
					<tr><td>전화번호  </td>
							<td><input type="text" name="memHP"  value="${mem.memHP }" ></td></tr>
					<tr><td>이메일  </td>
							<td><input type="text" name="prdPrice"   value="${prd.prdPrice }" ></td></tr>
					<tr><td>우편번호 </td>
							<td> <input type="text" name="memZipcode" class="postcodify_postcode" id="memZipcode"
						readonly>
						<button type="button" id="postcodify_search_button">검색</button></td></tr>
							
					<tr><td>도로명주소</td>
						<td><input type="text" name="memAddress1" class="postcodify_address" id="memAddress1" readonly></td></tr>
						
					<tr><td>상세주소</td>
						<td><input type="text" name="memAddress2" class="postcodify_details" id="memAddress2"></td></tr>		
							
					
					<tr><td>제조일 </td>
							<td> <input type="text" name="prdDate" value="<fmt:formatDate value="${prd.prdDate}"  pattern="yyyy-MM-dd" />"></td></tr>
					<tr><td colspan="2"><input type="submit" value="수정"> 
													      <input type="reset" value="취소"></td></tr>
				</table>
			</form>
			<br><br>
			<a href="<c:url value='/'/>">메인 화면으로 이동</a>
		</div>
			<!-- 주소 API 스크립트 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
	</body>
</html>