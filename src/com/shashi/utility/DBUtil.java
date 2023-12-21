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
//				ResourceBundle rb = ResourceBundle.getBundle("application");
//				String connectionString = rb.getString("db.connectionString");
//				String driverName = rb.getString("db.driverName");
//				String username = rb.getString("db.username");
//				String password = rb.getString("db.password");
				// Cứng cố tên lớp của JDBC driver
				String driverName = "com.mysql.cj.jdbc.Driver";

				// Các thông tin kết nối từ file cấu hình hoặc nơi khác
				/*
				 * String connectionString =
				 * "jdbc:mysql://localhost:3306/shopping-cart?useSSL=false"; String username =
				 * "root"; String password = "PhamHuuTuan258654@";
				 */

				String connectionString = "jdbc:mysql://localhost:3306/shoptruyen?useUnicode=true&characterEncoding=UTF-8";
				String username = "root";
				String password = "PhamHuuTuan258654@";

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
