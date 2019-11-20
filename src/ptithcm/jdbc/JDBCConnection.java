package ptithcm.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {
	public static Connection getJDBCConnection() {
		Connection connection = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String user = "sa";
			String pass = "123456";
			String url = "jdbc:sqlserver://localhost:1433;databaseName=WEB_GD";
			connection = DriverManager.getConnection(url, user, pass);
			
		} catch (ClassNotFoundException | SQLException ex) {
			ex.printStackTrace();
		}

		return connection;
	}
}
