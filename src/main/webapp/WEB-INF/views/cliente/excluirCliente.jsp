<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Excluido com Sucesso</title>
<!-- Bootstrap -->
<link rel="stylesheet" href="webjars/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript" src="webjars/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#sucesso").ready(function() {
		success();
	})
})

function success() {
	$("div.alert-success").fadeIn(300).delay(2550).fadeOut(400);
	redirectListarClientes();
}

function redirectListarClientes() {
	window.setTimeout(function() {
		var raiz = window.location.origin;
		var action = "/listarClientes"
		window.location = raiz + action;
	}, 3000);

}
</script>    
</head>
<body>
	<br />
	<div class="container">
		<div id="#sucesso" class="alert alert-danger text-center">Cliente excluido com Sucesso!</div>
	</div>
</body>
</html>