<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getParameter("botao").equals("Volta"))
		request.getRequestDispatcher("index.jsp").forward(request, response);
	else
		request.getRequestDispatcher("armazena.jsp").forward(request, response);
%>    
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

</body>
</html>