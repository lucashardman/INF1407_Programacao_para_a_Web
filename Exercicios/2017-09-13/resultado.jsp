<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resultado</title>
</head>
<body>

<%=request.getParameter("operando1") %>
<%=request.getParameter("operacao") %>
<%=request.getParameter("operando2") %>
=
<%=request.getAttribute("resultado") %>

</body>
</html>