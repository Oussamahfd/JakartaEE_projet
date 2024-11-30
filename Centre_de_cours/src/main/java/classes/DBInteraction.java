package classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBInteraction {
	static Connection conn;
	static Statement stmt;
	public static void connect()
	{
	final String DB_URL="jdbc:mysql://localhost/centre"; 
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(DB_URL,"root",""); 
		// Execute SQL query 
		stmt = conn.createStatement(); 
		} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		}
		public static void disconnect()
		{
		try {
		conn.close();
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		}
		public static int Maj(String sql)
		{
		int nb = 0;
		try {
		nb = stmt.executeUpdate(sql);
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		return nb;
		}
		public static ResultSet select(String sql)
		{
		ResultSet rs = null;
		try {
		rs = stmt.executeQuery(sql);
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		return rs;
		}

}
