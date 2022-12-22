package com.admin;

public class Admin { //Class for administrator
	
	 private int id;
	 private String fName;
	 private String lName;
	 private String address;
	 private String gender;
	 private String dob;
	 private int phone;
	 private String email;
	 private String username;
	 private String password;
	 
	 
	 public Admin(int id, String fName, String lName, String username, String address, String gender, String dob ,int phone, String email, String password) {
		this.id = id;
		this.fName = fName;
		this.lName = lName;
		this.address = address;
		this.gender = gender;
		this.dob = dob;
		this.phone = phone;
		this.email = email;
		this.username = username;
		this.password = password;
			
	}
	
	public int getId() {
		return id;
	}

	public String getfName() {
		return fName;
	}

	public String getlName() {
		return lName;
	}

	public String getAddress() {
		return address;
	}

	public String getGender() {
		return gender;
	}

	public String getDob() {
		return dob;
	}
	
	public String getUsername() {
		return username;
	}
	
	public int getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}
	
	public String getPassword() {
		return password;
	}

}
