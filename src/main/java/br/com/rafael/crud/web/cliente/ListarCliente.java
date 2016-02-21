package br.com.rafael.crud.web.cliente;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.rafael.crud.dao.ClienteDAO;
import br.com.rafael.crud.db.ConnectionDB;
import br.com.rafael.crud.modelo.Cliente;

@WebServlet(urlPatterns = "/listarClientes")
public class ListarCliente extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try (Connection con = ConnectionDB.getConnetion()) {
			ClienteDAO dao = new ClienteDAO(con);
			List<Cliente> clientes = dao.listar();
			req.setAttribute("clientes", clientes);

			req.getRequestDispatcher("/WEB-INF/views/cliente/listarClientes.jsp").forward(req, resp);
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		}
	}
}
