<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resultado da Calculadora</title>
</head>
<body>

<h1>Resultado da conta</h1>
<jsp:useBean 
	id="conta" 
	class="br.com.meslin.calculadora.Calculabean" 
	scope="request">
	<!-- Somente se o bean for criado agora -->
	<h2>Alguma coisa que não está certa aconteceu de errado</h2>	
	<jsp:setProperty property="op1" name="conta" value="0"/>
	<jsp:setProperty property="op2" name="conta" value="0"/>
	<jsp:setProperty property="operador" name="conta" value="+"/>
	<jsp:setProperty property="resultado" name="conta" value="0"/>
</jsp:useBean>
<jsp:getProperty property="op1" name="conta"/>
<jsp:getProperty property="operador" name="conta"/>
<jsp:getProperty property="op2" name="conta"/>
=
<jsp:getProperty property="resultado" name="conta"/>
</body>
</html>