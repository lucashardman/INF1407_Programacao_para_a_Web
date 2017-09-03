<%@page import="br.com.meslin.cadastro.Erro"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style="color: #FF0000;">Deu erro</h1>
<%
Erro erro;
try {
	erro = (Erro)request.getAttribute("erro");
	if(erro == null) throw new Exception();
}
catch(Exception e) {
	erro = new Erro();
}

String nome = request.getParameter("nome");
String email = request.getParameter("email");
String telefone = request.getParameter("telefone");
%>
Erro #<%=erro.getNumero() %><br/>
Descrição: <%=erro.getDescricao() %><br/>
Ação: <%=erro.getAcao() %><br/>
<br/>
Para voltar ao inicio, clique 
<a href="index.jsp?nome=<%=response.encodeURL(nome)%>&telefone=<%=response.encodeRedirectURL(telefone)%>&email=<%=response.encodeURL(email)%>">aqui</a>.
</body>
</html>