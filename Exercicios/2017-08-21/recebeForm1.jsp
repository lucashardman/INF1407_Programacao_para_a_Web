<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dados do Formulário</title>
</head>
<body>

Oi
<%
String nome;
nome = request.getParameter("campoNome");
out.print(nome);
%>!
<br/>
A sua senha é <%=request.getParameter("campoSenha") %>.<br/>
<%
if(request.getParameter("2")!=null) out.print("2a feira<br/>");
if(request.getParameter("3")!=null) out.print("3a feira<br/>");
if(request.getParameter("4")!=null) out.print("4a feira<br/>");
if(request.getParameter("5")!=null) out.print("5a feira<br/>");
if(request.getParameter("6")!=null) out.print("6a feira<br/>");

%>

O usuário vem de <%=request.getParameter("transporte") %><br/>
</body>
</html>