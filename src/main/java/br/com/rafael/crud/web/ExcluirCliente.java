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

@WebServlet(urlPatterns = "/excluirCliente")
public class ExcluirCliente extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));

		try(Connection con = ConnectionDB.getConnetion()){
			ClienteDAO dao = new ClienteDAO(con);
			dao.excluir(id);
			req.getRequestDispatcher("/WEB-INF/views/cliente/excluirCliente.jsp").forward(req, resp);
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		}
	}
}
