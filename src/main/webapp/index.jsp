<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='<c:url value="/resources/style/style.css" /> ' >
</head>
<body>
<% response.sendRedirect("fileform"); %>

 <h1>Hello world</h1>
<img alt="mylta" src='<c:url value="/resources/img/mylta.png" />' > 


 </body>
</html>