<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl을 배워보자</title>
</head>
<body>

<table border = "1">
	<tr>
		<td>no</td>
		<td>name</td>
		<td>email</td>
		<td>status.index</td>
		<td>status.count</td>
	</tr>
	
<c:forEach items="${requestScope.userList }" var="UserVo" varStatus="status">
	<tr>
		<td> ${UserVo.no} </td>
		<td> ${UserVo.name} </td>
		<td> ${UserVo.email} </td>
		<td> ${status.index} </td>
		<td> ${status.count} </td>
	</tr>
</c:forEach>
	
	
</table>

</body>
</html>