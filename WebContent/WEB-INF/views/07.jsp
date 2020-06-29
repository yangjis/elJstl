<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	pageContext.setAttribute("name", "paga name");
	request.setAttribute("name", "request name");
	session.setAttribute("name", "session name");
	application.setAttribute("name", "app name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el 내장 객제를 배워보자</title>
</head>
<body>

	<h1>범주 우선순위</h1>
	
	<h2>자바스클립틀릿</h2>
	page name = <%= pageContext.getAttribute("name") %><br>
	request name = <%= request.getAttribute("name") %><br>
	session name = <%= session.getAttribute("name") %><br>
	application name = <%= application.getAttribute("name") %><br>
	
	<br><br>
	
	<h2>el</h2>
	page name = ${pageScope.name }<br>
	request name = ${requestScope.name }<br>
	session name = ${sessionScope.name }<br>
	application name = ${applicationScope.name }
	



</body>
</html>