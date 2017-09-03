<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dados Armazenados</title>
</head>
<body>
<p>
Os seguintes dados foram armazenados:
</p>

Nome: <b><%=request.getParameter("nome") %></b><br/>
e-mail: <b><%=request.getParameter("email") %></b><br/>
Telefone: <b><%=request.getParameter("telefone") %></b><br/>

<p>
Para fazer um novo cadastro, clique <a href="./">aqui</a>. 
</body>
</html>