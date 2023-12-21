package com.shashi.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class DBUtil {
	private static Connection conn;

	public DBUtil() {
	}

	public static Connection provideConnection() {

		try {
			if (conn == null || conn.isClosed()) {
				String driverName = "com.mysql.cj.jdbc.Driver";

//				String connectionString = "jdbc:mysql://localhost:3306/shoptruyen?useUnicode=true&characterEncoding=UTF-8";
//				String username = "root";
//				String password = "PhamHuuTuan258654@";
//				String connectionString = "Server=google-cloud-sql-instance-ip;Database=your-database-name;User Id=your-username;Password=your-password;SslMode=Preferred;";
				String instanceConnectionName = "cool-plasma-408716:asia-east2:shoptruyen";
				String databaseName = "shoptruyen";
				String username = "root";
				String password = "";

				// Tạo connection string
				String connectionString = String.format("jdbc:mysql://google/%s?cloudSqlInstance=%s&"
								+ "socketFactory=com.google.cloud.sql.mysql.SocketFactory&user=%s&password=%s&useSSL=false",
						databaseName, instanceConnectionName, username, password);

				try {
					Class.forName(driverName);
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
				conn = DriverManager.getConnection(connectionString, username, password);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return conn;
	}

	public static void closeConnection(Connection con) {
		/*
		 * try { if (con != null && !con.isClosed()) {
		 * 
		 * con.close(); } } catch (SQLException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 */
	}

	public static void closeConnection(ResultSet rs) {
		try {
			if (rs != null && !rs.isClosed()) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void closeConnection(PreparedStatement ps) {
		try {
			if (ps != null && !ps.isClosed()) {
				try {
					ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
