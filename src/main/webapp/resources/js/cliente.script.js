/* ajax form cliente*/
$(document).ready(function() {
	$("#formCliente").submit(function() {
		var nome = $("#nome").val();
		var sobrenome = $("#sobrenome").val();
		var email = $("#email").val();
			$.ajax({
				url : "novoCliente",
				type : "POST",
				dataType : "html",
				data : {
					nome : nome,
					sobrenome : sobrenome,
					email : email
				},
				success : function(dados) {

				},
				statusCode : {
					200 : success
				}
			});
		return false;
	});
});

function redirectListarClientes() {
	window.setTimeout(function() {
		var raiz = window.location.origin;
		var projeto = "/simple-crud-jee";
		var action = "/listarClientes"

		var urlTomcat = raiz + projeto;
		var urlJetty = raiz;

		if (window.location.href === urlTomcat + "/formNovoCliente") {
			window.location = urlTomcat + action;
		} else if (window.location.href === urlTomcat + "/novoCliente") {
			window.location = urlTomcat + action;
		} else if (window.location.href === urlJetty + "/formNovoCliente"){
			window.location = urlJetty + action;
		}
	}, 3000);

}

function success() {
	$("div.alert-success").fadeIn(300).delay(2500).fadeOut(400);
	document.getElementById('nome').value = ''; // Limpa o campo
	document.getElementById('sobrenome').value = '';
	document.getElementById('email').value = '';
	redirectListarClientes();
}

