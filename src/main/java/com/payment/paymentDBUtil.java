package com.payment;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class paymentDBUtil {
	
	public static boolean insertPayment(String cardType, String cardName, String cardNumber, String expDate, String cvv) {
		
		boolean isSuccess = false;
		
		//database connection
		String url = "jdbc:mysql://localhost:3306/online_property_management";
		String user = "root";
		String pass = "12345";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement st = con.createStatement();
			String sqlPayment = "insert into carddetails values ('"+cardNumber+"', '"+cardType+"', '"+cardName+"', '"+cvv+"', '"+expDate+"')";
			int quary = st.executeUpdate(sqlPayment);
			
			if(quary > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception ex) {
			System.out.println(ex);
		}
		
		
		return isSuccess;
				
	}
}

