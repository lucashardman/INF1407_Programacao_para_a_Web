<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contagem</title>
</head>
<body>


<jsp:useBean id="bean2" class="beans.CountClicks" scope="application">
</jsp:useBean>

DAD: <c:out value="${bean2.qtdDAD}"/> <br>
DI: <c:out value="${bean2.qtdDI}"/> <br>
Java: <c:out value="${bean2.qtdJava}"/> <br>
PUC: <c:out value="${bean2.qtdPUC}"/>

</body>
</html>