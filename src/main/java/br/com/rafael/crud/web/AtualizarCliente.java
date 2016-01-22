package br.com.rafael.crud.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.rafael.crud.dao.ClienteDAO;
import br.com.rafael.crud.db.ConnectionDB;
import br.com.rafael.crud.modelo.Cliente;

@WebServlet(urlPatterns = "/atualizarCliente")
public class AtualizarCliente extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		String nome = req.getParameter("nome");
		String sobrenome = req.getParameter("sobrenome");
		String email = req.getParameter("email");

		Cliente cliente = new Cliente();
		cliente.setId(id);
		cliente.setNome(nome);
		cliente.setSobrenome(sobrenome);
		cliente.setEmail(email);

		try (Connection con = ConnectionDB.getConnetion()) {
			ClienteDAO dao = new ClienteDAO(con);
			dao.atualizar(cliente);
			req.getRequestDispatcher("/WEB-INF/views/cliente/atualizarCliente.jsp").forward(req, resp);

		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		}
	}
}
