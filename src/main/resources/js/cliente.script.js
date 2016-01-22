/* script cliente */
$(document).ready(function() {
	$("#sucesso").ready(function() {
		successLogado();
	})
})

function successLogado() {
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