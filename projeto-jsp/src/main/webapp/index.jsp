<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<title>Gerenciador de tarefas</title>
</head>
<body>
<h4>Este é o projeto para um gerenciador de tarefas</h4>
<h4>As tecnologias envolvidas neste projeto serão Java, JSP, JSF e HTML</h4>
<h5>Contate-me no linkedin: Pedro <link href = "https://www.linkedin.com/in/pedro-luz-machado/"> </h5> 
<style type="text/css">
form{
position: absolute;
top: 70%
left: 33%
}
</style>

<form action="ServletLogin" method="post" class="row g-3">
<input type="hidden" value ="<%= request.getParameter("url") %>" name="url" />

<div class="col-md-6">
<label class="form-label">Login</label>
<input class="form-control" name="login" type="name"/>
</div>

<div class="col-md-6">
<label class="form-label">Senha</label>
<input class="form-control" name="senha" type="password"/>
</div>

  <div class="col-12">
    <button type="submit" value="Acessar" class="btn btn-primary">
<input type="submit" /></button>
</div>
</form>

<h4>${msg}</h4>
<!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>