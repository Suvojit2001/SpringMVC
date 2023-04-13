<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${Header}</h1>
	<h1>${footer }</h1>
	<%
	String name = (String) request.getAttribute("name");
	%>
	<h1>
		My name is
		<%=name%></h1>
	<h1>My name is ${name}</h1>
	<h1>${time}</h1>
	<h1>${f}</h1>
	<!--This will print using toString method  -->

	<c:forEach var="item" items="${f}">
		<h1>${item}</h1>
	</c:forEach>
</body>
</html>