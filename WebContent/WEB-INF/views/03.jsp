<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>El을배워보자(파라미터값을 꺼내 사용해보자)</title>
</head>
<body>
	<!--http://localhost:8088/elJstl/03?id=you&pw=1111&name=재석&num1=100&num2=20  -->
	<h2>자바스클립틀릿</h2>
	<%
		String id = request.getParameter("id");
	%>
	
	id = <%= id%><br>
	pw = <%= request.getParameter("pw")%><br>
	name = <%= request.getParameter("name")%><br>
	num1 = <%= request.getParameter("num1")%><br>
	num2 = <%= request.getParameter("num2")%><br>
	sum = <%= Integer.parseInt(request.getParameter("num1")) + Integer.parseInt(request.getParameter("num2"))%>
	
	<br><br>
	
	
	<h2>el 파라미터값 사용</h2>
	id = ${ param.id}<br>
	pw = ${ param.pw}<br>
	name = ${ param.name}<br>
	num1 = ${ param.num1}<br>
	num2 = ${ param.num2}<br>
	sum = ${param.num1 + param.num2 }
	

</body>
</html>