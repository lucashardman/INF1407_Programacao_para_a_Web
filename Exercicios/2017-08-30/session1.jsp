<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%!
int a = 0;
%>
<%
int b = 0;
int c;
int d;
int f =0, g =0;

%>
</head>
<body>
<h1>Página 1</h1>
<%
synchronized(this) {
	a++;
}
b++;
out.print("A = " + a + "<br/>");
out.print("B = " + b + "<br/>");

// atributo de request
try {
	c = (int)request.getAttribute("c");
}
catch(Exception e) {
	c =0;
}
c++;
request.setAttribute("c", c);
out.print("C = " + c + "<br/>");

Thread.sleep(10000);

//atributo de session
try {
	d = (int)session.getAttribute("d");
}
catch(Exception e) {
	d =0;
}
d++;
session.setAttribute("d", d);
out.print("D = " + d + "<br/>");

//atributo de application
try {
	synchronized(application.getAttribute("F")) {
		f = (int)application.getAttribute("F");
		f++;
		application.setAttribute("F", f);
	}
}
catch(Exception e) {
	application.setAttribute("F", 0);
}

out.print("F = " + f + "<br/>");
try {
	synchronized(application.getAttribute("G")) {
		g = (int)application.getAttribute("G");
		g++;
		application.setAttribute("G", g);
	}
}
catch(Exception e) {
	application.setAttribute("G", 0);
}
out.print("G = " + g + "<br/>");
%>

<a href="session2.jsp">Página 2</a><br/>

</body>
</html>