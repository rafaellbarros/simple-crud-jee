package br.com.rafael.crud.teste;

import java.sql.Connection;
import java.sql.SQLException;

import br.com.rafael.crud.db.ConnectionDB;

public class TestaConexao {

	public static void main(String[] args) {
		try {
			Connection conn = ConnectionDB.getConnetion();
			System.out.println("Abrindo conexão com Banco!");
			conn.close();
		} catch (SQLException e) {
			throw new RuntimeException("Não foi possivel fazer conexaão com Banco! Message:" + e.getMessage());
		}

	}
}
