<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>

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
		<nav class="navbar navbar-inverse navbar-fixed-top">
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
						<li><a href="listarClientes"><button class="btn btn-info">
									<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> Listar
								</button></a></li>
						<li><a href="formNovoCliente"><button class="btn btn-success">
									<span class="glyphicon glyphicon-user" aria-hidden="true"></span> Cadastrar
								</button></a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<br />
	<br />
	<br />
	<div class="container">
		<h1 class="text-center">Bem vindo a Simple Crud Jee!</h1>
	</div>
	<footer class="footer navbar navbar-inverse navbar-fixed-bottom">
		<div class="container">
			<br />
			<p class="text-muted text-center">
				&copy; 2015 | Developer by: <a href="http://rafaelbarros.azurewebsites.net" target="_blank"> Rafael Barros</a>.
			</p>
			<br />
		</div>
	</footer>
	<script type="text/javascript" src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="webjars/jquery/1.11.1/jquery.min.js"></script>
</body>
</html>