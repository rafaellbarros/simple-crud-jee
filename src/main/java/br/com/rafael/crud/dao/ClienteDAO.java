package br.com.rafael.crud.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.rafael.crud.modelo.Cliente;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class ClienteDAO {

	private final Connection con;

	public void inserir(Cliente cliente) {
		String sql = "INSERT INTO tb_cliente (nome, sobrenome, email) VALUES (?, ?, ?)";
		try (PreparedStatement stmt = con.prepareStatement(sql)) {
			stmt.setString(1, cliente.getNome());
			stmt.setString(2, cliente.getSobrenome());
			stmt.setString(3, cliente.getEmail());
			stmt.execute();
			stmt.close();
			this.con.close();
			System.out.println("Dados inseridos com sucesso!");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Cliente> listar() throws SQLException {
		List<Cliente> clientes = new ArrayList<>();
		String sql = "SELECT * FROM tb_cliente";
		try (PreparedStatement stmt = con.prepareStatement(sql)) {
			stmt.execute();
			try (ResultSet rs = stmt.getResultSet()) {
				while (rs.next()) {
					int id = rs.getInt("id");
					String nome = rs.getString("nome");
					String sobrenome = rs.getString("sobrenome");
					String email = rs.getString("email");
					Cliente cliente = new Cliente(nome, sobrenome, email);
					cliente.setId(id);
					clientes.add(cliente);

				}
				rs.close();
			}
			stmt.close();
			this.con.close();
		}
		return clientes;
	}

	public void atualizar(Cliente cliente) throws SQLException {
		String sql = "UPDATE tb_cliente SET nome = ?, sobrenome = ?, email = ? WHERE id = ?";
		try (PreparedStatement stmt = con.prepareStatement(sql)) {
			stmt.setString(1, cliente.getNome());
			stmt.setString(2, cliente.getSobrenome());
			stmt.setString(3, cliente.getEmail());
			stmt.setInt(4, cliente.getId());
			stmt.execute();
			stmt.close();
			this.con.close();
			System.out.println("Atualizado com Sucesso!");
		}
	}

	public void excluir(int id) throws SQLException {
		if (id == 0) {
			throw new IllegalStateException("Id da conta nao deve ser nula.");
		}

		String sql = "DELETE FROM tb_cliente WHERE id = ?";
		try (PreparedStatement stmt = con.prepareStatement(sql)) {
			stmt.setLong(1, id);
			stmt.execute();
			stmt.close();
			this.con.close();
			System.out.println("Excluido com sucesso!");
		}
	}
}
