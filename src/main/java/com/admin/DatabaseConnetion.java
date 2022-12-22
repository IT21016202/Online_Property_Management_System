package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnetion {
	
	private static String url = "jdbc:mysql://localhost:3306/online_property_management";
	private static String username = "root";
	private static String password = "12345";
	
	private static Connection connect;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection(url, username, password);
			
		}
		catch(Exception ex) {
			System.out.println("Database Connetion ERROR !" + ex);
		}
		
		return connect;
	}

}
