<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Listar Clientes</title>
<!-- Bootstrap -->
<link rel="stylesheet" href="webjars/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
						aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Simple-Crud-Jee</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/"><button class="btn btn-info">
									<span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home
								</button></a></li>
						<li><a href="formNovoCliente"><button class="btn btn-success">
									<span class="glyphicon glyphicon-user" aria-hidden="true"></span> Cadastrar
								</button></a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title text-center">Clientes Cadastrados</h3>

			</div>
			<div class="panel-body">
				<!-- Table -->
				<table class="table table-striped table-hover table-condensed">
					<thead>
						<tr>
							<th class="col-md-1 text-center">Nome</th>
							<th class="col-md-2 text-center">Sobrenome</th>
							<th class="col-md-2 text-center">Email</th>
							<th class="col-md-2 text-center">Ações</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="cliente" items="${clientes}">
							<tr>

								<td class="text-center">${cliente.nome}</td>
								<td class="text-center">${cliente.sobrenome}</td>
								<td class="text-center">${cliente.email}</td>
								<td class="text-center"><a
									href="formAtualizarCliente?id=${cliente.id}&nome=${cliente.nome}&sobrenome=${cliente.sobrenome}&email=${cliente.email}"
									class="btn btn-info"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>editar</a> <a
									href="excluirCliente?id=${cliente.id}" class="btn btn-danger"><span class="glyphicon glyphicon-trash"
										aria-hidden="true"></span>excluir</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>


	<script type="text/javascript" src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</body>
</html>