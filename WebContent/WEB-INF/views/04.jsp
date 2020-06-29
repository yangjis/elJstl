<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="vo.UserVo" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el을 배워보자</title>
</head>
<body>
	
	<h1>어트리뷰트 값 쓰기</h1>
	<h2>자바스클립틀릿</h2>
	
	<%
		UserVo userVo = (UserVo)request.getAttribute("userVo");
		int num = (int)request.getAttribute("num");
	%>
	
	name = <%= userVo.getName()%><br>
	password = <%= userVo.getPassword()%><br>
	gender = <%= userVo.getGender()%><br>
	
	num = <%= num%><br>
	str = <%= request.getAttribute("str")%><br>
	
	<h1>el</h1>
	name = ${requestScope.userVo.name}<br>
	password = ${requestScope.userVo.password }<br>
	gender = ${userVo.gender }<br><!-- requestScope는 샹략이 가능 -->
	
	num = ${requestScope.num}<br>
	str = ${requestScope.str }<br>

</body>
</html>