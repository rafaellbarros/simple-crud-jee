<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Novo Cliente</title>
</head>
<body>
	<form action="novoCliente" method="POST">
		<fieldset>
			<legend>Novo Cliente</legend>
			Nome: <input type="text" name="nome" /> <br /> Sobrenome <input
				type="text" name="sobrenome" /> <br /> Email <input type="email"
				name="email" />
		</fieldset>
		<input type="submit" value="gravar" />
	</form>
	
</body>
</html>