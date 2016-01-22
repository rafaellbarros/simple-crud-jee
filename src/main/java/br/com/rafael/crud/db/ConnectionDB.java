package br.com.rafael.crud.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {

	public static Connection getConnetion() throws SQLException {
			

			try {
				Class.forName("org.postgresql.Driver");
			} catch (ClassNotFoundException e) {
				
				throw new RuntimeException("O driver não foi carregado!");
			}

		
		Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/crud","root","root");
		return con;
	}
}
