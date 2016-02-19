<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Rafael Barros">
<link rel="icon" href="resources/img/favicon.ico">
<title>Listar Clientes</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="resources/css/starter-template.css" rel="stylesheet">
<link href="resources/css/sticky-footer-navbar.css" rel="stylesheet">
<link href="resources/css/footable/footable.core.min.css" rel="stylesheet" />

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="resources/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="resources/js/ie-emulation-modes-warning.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="resources/js/ie10-viewport-bug-workaround.js"></script>

<!-- jQuery and Bootstrap JS -->
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/footable/footable.js"></script>
<script type="text/javascript" src="resources/js/cliente.script.js"></script>


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
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
			<!--/.nav-collapse -->
		</div>
	</nav>
	<div id="deletar-dado" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Confirme excluir</h4>
				</div>

				<div class="modal-body">
					<p>Você está prestes a excluir um registro, esse procedimento é irreversível.</p>
					<p>Você quer prosseguir?</p>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
					<a id="confirmaDelecao" class="btn btn-danger btn-ok">Excluir</a>
				</div>
			</div>
		</div>
	</div>
	<!-- ./modal -->
	<div class="container">
		<div id="#resultado" style="display: none" class="alert alert-danger text-center">
			<span class="glyphicon glyphicon-remove"></span> Dados excluido com Sucesso!.
		</div>
	</div>
	<div class="container table-responsive">
		<h2 class="text-center">Clientes Cadastrados</h2>
		<br />
		<table class="table toggle-circle-filled table-striped table-hover">
			<thead>
				<tr>
					<th class="col-md-2" data-toggle="true">Nome</th>
					<th class="text-center col-md-0" data-hide="tablet, phone">Sobrenome</th>
					<th class="text-center col-md-4" data-hide="phone">Email</th>
					<th class="text-center col-md-2">Ações</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cliente" items="${clientes}">
					<tr>

						<td class="">${cliente.nome}</td>
						<td class="text-center">${cliente.sobrenome}</td>
						<td class="text-center">${cliente.email}</td>
						<td class="text-center"><a
							href="formAtualizarCliente?id=${cliente.id}&nome=${cliente.nome}&sobrenome=${cliente.sobrenome}&email=${cliente.email}"
							class="btn btn-info"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>editar</a> <a
							href="#deletar-dado" role="button" onclick="pegaId(${cliente.id});" class="btn btn-danger" data-toggle="modal"
							data-target="#deletar-dado" class="btn btn-danger"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>excluir</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!-- /.table -->
	</div>
	<!-- /.container -->
	<footer class="footer navbar-fixed-bottom">
		<div class="container">
			<p class="text-muted text-center">
				&copy; 2016 | Developer by: <a href="http://rafaelbarros.azurewebsites.net" target="_blank"> Rafael Barros</a>.
			</p>
		</div>
	</footer>
	<!-- /.footer -->
</body>
<script type="text/javascript">
	$(document).ready(function() {
		$("table").footable();
	});
</script>
</html>