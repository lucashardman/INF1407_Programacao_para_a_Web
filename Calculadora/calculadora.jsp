<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Calculadora</title>
	</head>
	<body>

	<% 
	request.setAttribute("TextValue", new Double (0) );
	request.setAttribute("OpValue", "0");
	double aux = 0;
	
	if(request.getParameter("adicao") != null){
		request.setAttribute("OpType", new Integer (1));
		aux = Double.parseDouble(request.getParameter("op"));
		Double.parseDouble(request.getParameter("op"));
		request.setAttribute("TextValue", aux);
		request.setAttribute("OpValue", "0");
	}
	
	if(request.getParameter("subtracao") != null){
		request.setAttribute("OpType", new Integer (2));
		aux = Double.parseDouble(request.getParameter("op"));
		Double.parseDouble(request.getParameter("op"));
		request.setAttribute("TextValue", aux);
		request.setAttribute("OpValue", "0");
	}
	
	
	if(request.getParameter("multiplicacao") != null){
		request.setAttribute("OpType", new Integer (3));
		aux = Double.parseDouble(request.getParameter("op"));
		Double.parseDouble(request.getParameter("op"));
		request.setAttribute("TextValue", aux);
		request.setAttribute("OpValue", "0");
	}
	if(request.getParameter("divisao") != null){
		request.setAttribute("OpType", new Integer (4));
		aux = Double.parseDouble(request.getParameter("op"));
		Double.parseDouble(request.getParameter("op"));
		request.setAttribute("TextValue", aux);
		request.setAttribute("OpValue", "0");
	}
	
	if(request.getParameter("resultado") != null){
		
		if(Integer.parseInt(request.getParameter("operacao")) == 1){
			aux = Double.parseDouble(request.getParameter("auxiliar")) + Double.parseDouble(request.getParameter("op"));
			request.setAttribute("TextValue", aux);
		}
		if(Integer.parseInt(request.getParameter("operacao")) == 2){
			aux = Double.parseDouble(request.getParameter("auxiliar")) - Double.parseDouble(request.getParameter("op"));
			request.setAttribute("TextValue", aux);
		}
		if(Integer.parseInt(request.getParameter("operacao")) == 3){
			aux = Double.parseDouble(request.getParameter("auxiliar")) * Double.parseDouble(request.getParameter("op"));
			request.setAttribute("TextValue", aux);
		}
		if(Integer.parseInt(request.getParameter("operacao")) == 4){
			aux = Double.parseDouble(request.getParameter("auxiliar")) / Double.parseDouble(request.getParameter("op"));
			request.setAttribute("TextValue", aux);
		}
		request.setAttribute("OpValue", aux);
	}
	%>
	
	<form action="index.jsp" method="get">
		<input type='text' name='op' value='<%=request.getAttribute("OpValue")%>'/><br/>
		<p>
			<input type='submit' name='divisao' value='/'/>
			<input type='submit' name='multiplicacao' value='*'/>
			<input type='submit' name='subtracao' value='-'/>
			<input type='submit' name='adicao' value='+'/>
			<input type='submit' name='resultado' value='='/>
			<input type='text' name='operacao' value='<%=request.getAttribute("OpType")%>' hidden/>
			<input type='text' name='auxiliar' value='<%=request.getAttribute("TextValue")%>' hidden/>
		</p>
	</form>
	</body>
</html>
