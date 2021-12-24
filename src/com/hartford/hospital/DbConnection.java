package com.hartford.hospital;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * 
 * @author Sujit Kumar
 * 
 */
public class DbConnection {

	public static Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(
					"jdbc:mysql://localhost/hospital_db", "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
}
