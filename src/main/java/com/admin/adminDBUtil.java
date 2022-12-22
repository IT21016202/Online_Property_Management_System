package com.admin;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class adminDBUtil {
	
	private static Connection connect = null;
	private static Statement st = null;
	private static ResultSet re = null;
	
	public static List<Admin> validate(String username, String password){
		
		ArrayList<Admin> admin = new ArrayList<>();
		
		//validate
		try {
			
			connect = DatabaseConnetion.getConnection();
			st = connect.createStatement();
			String sqlAdmin = "select * from admin where Username = '"+username+"' and Password = '"+password+"' ";
			re = st.executeQuery(sqlAdmin);
			
			//read from database
			if(re.next()) {
				int id = re.getInt(1);
				String fName = re.getString(2);
				String lName = re.getString(3);
				String address = re.getString(4);
				String gender = re.getString(5);
				String u_name = re.getString(7);
				String dob = re.getString(8);	
				int phone = re.getInt(9);
				String email = re.getString(10);
				String password1 = re.getString(6);
				
				//passing values to Admin class
				Admin adminClass = new Admin(id, fName, lName, u_name, address, gender, dob, phone, email, password1);
				admin.add(adminClass);
			}
				
		}catch(Exception ex){
			System.out.print(ex);
		}
		
		return admin;
	}
	
	
	//update process
	public static boolean updateAdmin(String id, String fName, String lName, String username, String address, String gender, String dob, String phone, String email, String password) {
		
		boolean  isSucess = false;
		
		try {
			
			connect = DatabaseConnetion.getConnection();
			st = connect.createStatement();
			String sqlUpdate = "update admin set F_Name='"+fName+"', L_Name='"+lName+"', Address='"+address+"', Gender='"+gender+"', DOB='"+dob+"', phone='"+phone+"', email='"+email+"', Password='"+password+"' where Id = '"+id+"' ";
			int rs = st.executeUpdate(sqlUpdate);
			
			if(rs > 0) {
				isSucess = true;
			}
			else
				isSucess = false;
			
	
		
		}catch(Exception ex) {
			System.out.println(ex);
		}
	
		return isSucess;
	}
	
	//Again retrieve after the update
	public static List<Admin> getAdminDetails(String id){
		
		int convId = Integer.parseInt(id);
		
		ArrayList<Admin> ad = new ArrayList<>();
	
		try {
				
			connect = DatabaseConnetion.getConnection();
			st = connect.createStatement();
			String sqlRetrieve = "select * from admin where id = '"+convId+"' ";
			re = st.executeQuery(sqlRetrieve);
			
			while(re.next()) {
				int id1 = re.getInt(1);
				String fName1 = re.getString(2);
				String lName1 = re.getString(3);
				String address1 = re.getString(4);
				String gender1 = re.getString(5);
				String username1 = re.getString(7);
				String dob1 = re.getString(8);
				int phone1 = re.getInt(9);
				String email1 = re.getString(10);
				String password1 = re.getString(6);
				
				Admin adminClass1 = new Admin(id1, fName1, lName1, username1, address1, gender1,  dob1, phone1, email1, password1);
				ad.add(adminClass1);
			}
			
		}
		catch(Exception ex) {
			System.out.println(ex);
		}
		
		return ad;
	}
	
	
	
	//delete process
	public static boolean deleteAdmin(String id , String password) {
	
		boolean isSucess = false;
		
		int conID = Integer.parseInt(id);
		
		try {
			
			connect = DatabaseConnetion.getConnection();
			st = connect.createStatement();
			String sqlDelete = "delete from admin where id = '"+conID+"' and Password='"+password+"' ";
			int re1 = st.executeUpdate(sqlDelete);
			
			if(re1 > 0) {
				isSucess = true;
			}
			else {
				isSucess = false;
			}
				
		}
		catch(Exception ex) {
			System.out.println(ex);
		}
		
		
		return isSucess;
	}
}

