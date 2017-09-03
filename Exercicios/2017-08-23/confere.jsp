<%@page import="br.com.meslin.cadastro.Erro"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String nome = request.getParameter("nome");
String email = request.getParameter("email");
String telefone = request.getParameter("telefone");
if(nome == null || nome.length() == 0) {
	// nome em branco
	Erro erroNome = new Erro();
	erroNome.setNumero(1234);
	erroNome.setDescricao("Nome inválido - está em branco");
	erroNome.setAcao("Volte ao formulário e preencha o nome");
	request.setAttribute("erro", erroNome);
	request.getRequestDispatcher("erro.jsp").forward(request, response);
}
/*
if(email == null || email.length() == 0) {
	// nome em branco
}
if(telefone == null || telefone.length() == 0) {
	// nome em branco
}
*/
%>    
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Conferência dos Dados</title>
</head>
<body>
<h1>Confira os dados a seguir</h1>
Nome: <b><%=request.getParameter("nome") %></b><br/>
e-mail: <b><%=request.getParameter("email") %></b><br/>
Telefone: <b><%=request.getParameter("telefone") %></b><br/>

<form action="encaminha.jsp">
<input type="hidden" name="nome" value="<%= request.getParameter("nome")==null? "" : request.getParameter("nome")%>">
<input type="hidden" name="email" value="<%=request.getParameter("email")%>">
<input type="hidden" name="telefone" value="<%=request.getParameter("telefone")%>">
<input type="submit" name="botao" value="Volta">
<input type="submit" name="botao" value="Confirma">
</form>

</body>
</html>