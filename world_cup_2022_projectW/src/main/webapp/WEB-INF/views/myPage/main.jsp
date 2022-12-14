<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet" />
</head>
<body>
<h1>member/main.jsp</h1>
<%
String id = (String) session.getAttribute("id");
if(id == null) response.sendRedirect("/test/member/login");
%>
jsp표현식 세션 : <%= id %> <br>
el표현식 세션: ${id } <br>
그냥 : ${username } , ${useremail } <br>
mvo그냥 : ${mvo.username } , ${mvo.useremail } <br>
<hr>

<input type="button" value="회원정보조회" class="btn" onclick="location.href='/test/member/info'">
<input type="button" value="회원정보수정" class="btn" onclick="location.href='/test/member/update'">
<input type="button" value="로그아웃" class="btn" onclick="location.href='/test/member/logout'">
<input type="button" value="회원탈퇴" class="btn" onclick="location.href='/test/member/delete'">

 }
}
%>