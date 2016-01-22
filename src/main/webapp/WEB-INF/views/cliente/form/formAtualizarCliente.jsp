<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Atualizar Cliente</title>
</head>
<body>
	<form action="atualizarCliente" method="POST">
		<fieldset>
			<legend>Novo Cliente</legend>
			<input type="hidden" name="id" value="${cliente.id}" />
			Nome: <input type="text" name="nome" value="${cliente.nome}"/> <br /> Sobrenome <input
				type="text" name="sobrenome" value="${cliente.sobrenome}"/> <br /> Email <input type="email"
				name="email" value="${cliente.email}"/>
		</fieldset>
		<input type="submit" value="atualizar" />
	</form>
</body>
</html>