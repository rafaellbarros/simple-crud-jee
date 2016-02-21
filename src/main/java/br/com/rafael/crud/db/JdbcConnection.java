package br.com.rafael.crud.db;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class JdbcConnection {
	
	private String user;
	private String passwd;
	private String driver;
	private String url;
	private String database;
	
	public void getProps() {
		Properties props = new Properties();
		
		try {
			String home = System.getProperty("user.home");
			String workspace = "/workspace/simple-crud-jee";
			String properties = "/properties/config.xml";
			String path = home + workspace + properties;

			// Setamos o arquivo que será lido
			FileInputStream fis = new FileInputStream(path);
			// método load faz a leitura através do objeto fis
			props.loadFromXML(fis);
		} catch (IOException e) {
			System.out.println(e.getMessage());
			System.out.println("O arquivo não foi encontrado!!!");
		}
		// Captura o valor da propriedade, através do nome da propriedade(Key)
		this.setUser(props.getProperty("jdbc.user"));
		this.setPasswd(props.getProperty("jdbc.passwd"));
		this.setDriver(props.getProperty("jdbc.driver"));
		this.setUrl(props.getProperty("jdbc.url"));
		this.setDatabase(props.getProperty("jdbc.dataBase"));
		
	}
	
	public String getUser() {
		return user;
	}
	
	public void setUser(String user) {
		this.user = user;
	}
	
	public String getPasswd() {
		return passwd;
	}
	
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}
	
	public String getUrl() {
		return url;
	}
	
	public void setUrl(String url) {
		this.url = url;
	}
	
	public String getDatabase() {
		return database;
	}
	
	public void setDatabase(String database) {
		this.database = database;
	}
	
}
