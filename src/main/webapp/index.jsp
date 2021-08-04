<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gerenciador de tarefas</title>
</head>
<body>
<h1>Este é o projeto para um gerenciador de tarefas</h1>
<h2>As tecnologias envolvidas neste projeto serão Java, JSP, JSF e HTML</h2>
<h3>Contate-me no linkedin: </h3>

<form action="ServletLogin" method="post">
<input type="hidden" value ="<%= request.getParameter("url") %>" name="url" />
<table>
<tr>
	<td><label>Login</label></td>
	<td><input name="login" type="name"/></td>
</tr>
<tr>
	<td><label>Senha</label></td>
	<td><input name="senha" type="password"/></td>
</tr>
</table>

<input type="submit" />
</form>

<h4>${msg}</h4>
</body>
</html>