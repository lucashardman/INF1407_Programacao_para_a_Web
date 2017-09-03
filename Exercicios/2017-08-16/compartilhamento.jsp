<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
int nVezes = 0;
%>
<%
synchronized(this){
	nVezes++;
}
/*
	registro = nVezes
	registro = registro +1
	nVezes = registro
*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porttitor ut sem non bibendum. In et tellus est. Nunc elementum, urna ac semper maximus, elit nunc tincidunt augue, ac rhoncus odio augue in arcu. Sed hendrerit, lectus quis vehicula ultrices, eros turpis varius massa, sit amet cursus lacus neque id eros. Vestibulum elementum mattis lorem, sed tincidunt elit tincidunt non. Nulla vehicula felis at tortor vestibulum imperdiet. Vestibulum orci nulla, vestibulum sed ex cursus, tristique dignissim ligula. Donec porttitor quis sapien non ultricies. Donec a condimentum risus, sed malesuada ligula. Aliquam orci augue, consectetur non maximus a, tincidunt vitae diam. Fusce volutpat rutrum ipsum, nec sodales lectus elementum in.
</p>
<hr>
Essa página foi acessada <b><%=nVezes %></b> ve(zes) por todos os usuários.

</body>
</html>