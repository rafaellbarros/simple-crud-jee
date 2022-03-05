package br.com.rafael.crud.db;

import lombok.Getter;
import lombok.Setter;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.Properties;

@Getter
@Setter
public class JdbcConnection {

	private String user;
	private String passwd;
	private String driver;
	private String url;
	private String database;

	public void getProps() {
		final Properties defaultDb = new Properties();
		Properties propsDb = new Properties();
		try {

			String pathDefaultDbCofing = Paths.get("properties/set_db_config_default.xml").toAbsolutePath().toString();
			FileInputStream fisPathDefaultDbCofing = new FileInputStream(pathDefaultDbCofing);
			defaultDb.loadFromXML(fisPathDefaultDbCofing);

			final String dbDefault = defaultDb.getProperty("db.default");

			// TODO: refact strategy
			String path = Paths.get("properties/db_postgres_config.xml").toAbsolutePath().toString();

			if ("postgres".equals(dbDefault)) {
				path = Paths.get("properties/db_postgres_config.xml").toAbsolutePath().toString();
			}

			FileInputStream fis = new FileInputStream(path);
			propsDb.loadFromXML(fis);
		} catch (IOException e) {
			System.out.println(e.getMessage());
			System.out.println("O arquivo não foi encontrado!!!");
		}

		// TODO: Config string to Enum
		this.setUser(propsDb.getProperty("jdbc.user"));
		this.setPasswd(propsDb.getProperty("jdbc.passwd"));
		this.setDriver(propsDb.getProperty("jdbc.driver"));
		this.setUrl(propsDb.getProperty("jdbc.url"));
		this.setDatabase(propsDb.getProperty("jdbc.dataBase"));
		
	}
}
