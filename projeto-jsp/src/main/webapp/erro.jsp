<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Erro: Mensagem de erro do sistema, entre em contato com o desenvolvedor do sistema</h1>

<%
out.print(request.getAttribute("msg"));
%>
</body>
</html>