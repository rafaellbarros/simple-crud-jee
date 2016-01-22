<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listar Clientes</title>
</head>
<body>
	<strong>Listar Clientes</strong>
	<table>
		<thead>
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Sobrenome</th>
				<th>Email</th>
				<th>Ações</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="cliente" items="${clientes}">
				<tr>
					<td>${cliente.id}</td>
					<td>${cliente.nome}</td>
					<td>${cliente.sobrenome}</td>
					<td>${cliente.email}</td>
					<td>
					<a href="formAtualizarCliente?id=${cliente.id}&nome=${cliente.nome}&sobrenome=${cliente.sobrenome}&email=${cliente.email}">editar</a>
					<a href="excluirCliente?id=${cliente.id}">excluir</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>