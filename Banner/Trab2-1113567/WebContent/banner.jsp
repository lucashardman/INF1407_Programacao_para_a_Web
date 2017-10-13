<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="beans.BannerNumber"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Banner</title>
</head>
<body>

<jsp:useBean id="bean" class="beans.BannerNumber" scope="request">
</jsp:useBean>

<jsp:useBean id="bean2" class="beans.CountClicks" scope="application">
</jsp:useBean>

<form action="./PrimeiroServlet">

<c:choose>
	<c:when test = "${bean.random == 0}">
		<input type="text" name="b" value="${0}" hidden>
		<input type="image" src="./banner/banner-DAD.jpg">
    </c:when>
    <c:when test = "${bean.random == 1}">
		<input type="text" name="b" value="${1}" hidden>
		<input type="image" src="./banner/banner-DI.jpg" >
    </c:when>
    <c:when test = "${bean.random == 2}">
		<input type="text" name="b" value="${2}" hidden>
		<input type="image" src="./banner/banner-Java.jpg">
    </c:when>
    <c:when test = "${bean.random == 3}">
		<input type="text" name="b" value="${3}" hidden>
		<input type="image" src="./banner/banner-PUC.jpg">
    </c:when>

</c:choose>

</form>
</body>
</html>