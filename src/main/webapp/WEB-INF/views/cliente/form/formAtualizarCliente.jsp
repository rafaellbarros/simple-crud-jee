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
<title>Atualizar Cliente</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="resources/css/starter-template.css" rel="stylesheet">
<link href="resources/css/sticky-footer-navbar.css" rel="stylesheet">
<link href="resources/css/bootstrapValidator.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="resources/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="resources/js/ie-emulation-modes-warning.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="resources/js/ie10-viewport-bug-workaround.js"></script>

<!-- jQuery and Bootstrap JS -->
<script src="resources/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="webjars/jquery/1.11.1/jquery.min.js"></script>

<!-- BootstrapValidator JS -->
<script src="resources/js/bootstrapValidator.min.js"></script>
<script src="resources/js/clienteValidator.js" type="text/javascript"></script>
<script src="resources/js/cliente.script.js" type="text/javascript"></script>

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
					<li><a href="home"><button class="btn btn-info">
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
	<div class="container">
		<div id="#sucesso" style="display: none" class="alert alert-success text-center">
			<span class="glyphicon glyphicon-star"></span> Cliente atualizado com Sucesso!
		</div>
	</div>
	<div class="container">
		<form id="formAtualizarCliente" method="POST" class="form-horizontal">
			<fieldset>

				<!-- Form Name -->
				<legend class="text-center">Atualizar Cliente</legend>

				<input type="hidden" name="id" id="id" value="${cliente.id}" />
				<!-- nome input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="nome">Nome</label>
					<div class="col-md-4">
						<input id="nome" name="nome" type="text" value="${cliente.nome}" placeholder="Digite aqui o seu nome"
							class="form-control input-md">
					</div>
				</div>

				<!-- sobrenone input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="sobrenome">Sobrenome</label>
					<div class="col-md-4">
						<input id="sobrenome" name="sobrenome" type="text" value="${cliente.sobrenome}"
							placeholder="Digite aqui o seu sobrenome" class="form-control input-md">
					</div>
				</div>

				<!-- email input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="email">Email</label>
					<div class="col-md-4">
						<input id="email" name="email" type="email" value="${cliente.email}" placeholder="email@example.com"
							class="form-control input-md">
					</div>
				</div>
			</fieldset>
			<!-- button atualizar -->
			<button type="submit" class="btn btn-success center-block">
				<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span> Atualizar
			</button>
		</form>
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
</html>