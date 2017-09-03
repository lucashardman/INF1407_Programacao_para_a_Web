<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Formulário de Cadastro</title>
</head>
<body>

<h1>Formulário de cadastro de pessoa física</h1>

<form action="confere.jsp" method="get">
Nome: <input type="text" name="nome" value="<%= request.getParameter("nome")==null? "" : request.getParameter("nome")%>"><br/>
e-mail: <input type="text" name="email" value="<%= request.getParameter("email")==null? "" : request.getParameter("email")%>"><br/>
Telefone: <input type="text" name="telefone" value="<%= request.getParameter("telefone")==null? "" : request.getParameter("telefone")%>"><br/>
<input type="submit" value="Cadastra">
</form>

</body>
</html>