<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- Using @RequestParam annotation  -->
<%-- <h1>my name is ${name} and my email is ${email} you phone no is ${phone} and ${address}</h1> --%>


 <!-- Using @ModelAttribute annotation -->
<%-- <h1>my name is ${user.name} and my email is ${user.email} you phone no is ${user.phone} and ${user.address}!!!</h1> --%>

<%-- <h1>${student}</h1> --%>  <!-- this msg is from complex form -->

<img alt="mylta" src='<c:url value="/resources/img/${filename}" />' ><!-- this msg is from fileUploadController -->
</body></html>