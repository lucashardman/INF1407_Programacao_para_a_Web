<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!	// a ! informa que o código aqui dentro não vai para o método de serviço
long fatorial(long n) {
	if(n==0) return 1;
	return n * fatorial(n-1);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>Cálculo de Fatorial (valor constante)</h2>
<%
long numero, resultado;
numero = 5;
resultado = fatorial(numero);
out.print("O <i>fatorial</i> de <b>" + numero + "</b> é " + resultado);
%>
<br/>
O <i>fatorial</i> de <b><% out.print(numero); %></b> é <%out.print(resultado); %>
<br/>
O <i>fatorial</i> de <b><%=numero %></b> é <%=resultado %>
</body>
</html>