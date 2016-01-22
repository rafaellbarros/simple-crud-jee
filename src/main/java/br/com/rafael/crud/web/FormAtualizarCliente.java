package br.com.rafael.crud.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.rafael.crud.modelo.Cliente;

@WebServlet(urlPatterns = "/formAtualizarCliente")
public class FormAtualizarCliente extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String nome = req.getParameter("nome");
			String sobrenome = req.getParameter("sobrenome");
			String email = req.getParameter("email");

			Cliente cliente = new Cliente();
			cliente.setId(id);
			cliente.setNome(nome);
			cliente.setSobrenome(sobrenome);
			cliente.setEmail(email);

			req.setAttribute("cliente", cliente);
			req.getRequestDispatcher("/WEB-INF/views/cliente/form/formAtualizarCliente.jsp").forward(req, resp);
		} catch (Exception e) {
			e.getMessage();
		}
	}

}
