/* ajax form novoCliente*/
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
		var urlAtual = window.location.href;

		if (window.location.href === urlTomcat + "/formNovoCliente") {
			window.location = urlTomcat + action;
		} else if (window.location.href === urlTomcat + "/novoCliente") {
			window.location = urlTomcat + action;
		} else if (window.location.href === urlJetty + "/formNovoCliente"){
			window.location = urlJetty + action;
		} else if (urlAtual.match(/simple-crud-jee/)){
			window.location = urlTomcat + action;
		} else if (urlAtual.match(/formAtualizarCliente/)){
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
/* fim */

/* listar clientes action deletar */
function pegaId(getId){
	$("#confirmaDelecao").click(function(){
		excluir(getId);
		$('.modal').modal('hide');
		
	});
}

function excluir(id){
	$.get("excluirCliente?id=" + id, deuCerto);
}

function deuCerto(dados){
	successDelete();

	$.ajax({
		url : "listarClientes",
		type : "GET",
		dataType : "html",
		success : function(dados) {	
			window.setTimeout('location.reload()', 2000);
		}
	});
}

function successDelete(){
	$("div.alert-danger").fadeIn(300).delay(2000).fadeOut(400);
}
/* fim */
/* ajax form atualizarCliente */
$(document).ready(function() {
	$("#formAtualizarCliente").submit(function() {
		var id = $("#id").val();
		var nome = $("#nome").val();
		var sobrenome = $("#sobrenome").val();
		var email = $("#email").val();
			$.ajax({
				url : "atualizarCliente",
				type : "POST",
				dataType : "html",
				data : {
					id	: id,
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
