package br.com.rafael.crud.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {
	
	public static Connection getConnetion() {
		Connection con = null;
		try {
			JdbcConnection jdbc = new JdbcConnection();
			jdbc.getProps();
			Class.forName(jdbc.getDriver());
			con = DriverManager.getConnection(jdbc.getUrl() + "/" + jdbc.getDatabase(),
					jdbc.getUser(), jdbc.getPasswd());
		} catch (SQLException | ClassNotFoundException e) {
			throw new RuntimeException(e.getMessage());
		}
		
		return con;
	}
}
