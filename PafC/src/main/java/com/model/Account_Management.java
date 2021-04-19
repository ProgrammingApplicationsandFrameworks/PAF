package com.model;


import java.sql.*;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Account_Management {

	
	//getting DB connection
	private Connection connect() {

		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");

			

			con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/accountdb", "root", "");
					
			System.out.println("Successfully Connected");

		} catch (Exception e) {

			e.printStackTrace();}
			
		
		return con;
	}






	
	
	
	
//read accounts from the system
public String readAccount() {
	String output = "";
	try {

		Connection con = connect();

		if (con == null) {

			return "Error while connecting to the database for reading the Avilable Accounts.";
			
			
		}
		output = "<table border=\"1\"><tr>" + "<th>Acount ID</th>" + "<th>Account name</th>" + "<th>Email</th>"
						+ "<th>Phone</th>" + "<th>password</th></tr>";
		String query = "SELECT * FROM acc_table;";

		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(query);

		while (rs.next()) {
			String id = Integer.toString(rs.getInt("id"));
			String acc_name= rs.getString("acc_name");
		    String email = rs.getString("email");
		    String phone = rs.getString("phone");
		    String password = rs.getString("password");

		    
		   
		    
		    
		    
		    
			
		    output += "<td>" + id  + "</td>";
			output += "<td>" + acc_name + "</td>";
			output += "<td>" + email + "</td>";
			output += "<td>" + phone + "</td>";
			output += "<td>" + password + "</td></tr>";

		}

		con.close();

		output += "</table>";

	} catch (Exception e) {

		output = "An error occurred while reading the Account details. ";
		System.err.println(e.getMessage());

	}

	return output;
}




	//insert new Account into the System
	public String insertAccApplication(int Id,String Acc_name, String Email, String Phone, String Password) {

		String output = ""; 
		
		try {
			Connection con1 = connect();

			if (con1 == null)

			{
				return "Error while connecting to the database for inserting new acc detail details.";
			}
			// create a prepared statement
			String query = " insert into acc_table(id,acc_name,email,phone,password)" + " values (?,?,?,?,?)";  
			
			
			java.sql.PreparedStatement preparedStmt = con1.prepareStatement(query);
			
			
			preparedStmt.setInt(1, Id);
			preparedStmt.setString(2, Acc_name);
			preparedStmt.setString(3, Email);
			preparedStmt.setString(4, Phone);
			preparedStmt.setString(5, Password);
			preparedStmt.execute();
			con1.close();
			output = "Inserted successfully";

			} 
			catch (Exception e) {
			output = "Error while inserting the new acc details.";
			System.err.println(e.getMessage());
			}
			return output;}
	
	
	
	
	
	//Id,String Acc_name, String Email, String Phone, String Password
	
	//update existing Account
		public String updateAccount(String Id,String Acc_name, String Email, String Phone, String Password)
		{
			String output = "";

			try {

				Connection con = connect();

				if (con == null) {

					return "Error occured while updating the Account details.";
				}

				// create a prepared statement
				
				String query = "UPDATE acc_table SET acc_name=?,email=?,phone=?,password=? WHERE id=?"; 
				PreparedStatement preparedStmt = con.prepareStatement(query); 

				// binding values to query
				
				preparedStmt.setString(1, Acc_name);
				preparedStmt.setString(2, Email);
				preparedStmt.setString(3, Phone);
				preparedStmt.setString(4, Password);
				preparedStmt.setString(5, Id);
				
				// Executing the statement
				 preparedStmt.execute(); 
				 con.close();

				output = "Account details update successfully.";
			
			}

			catch (Exception e) {

				output = "An error occurred while updating the Account details.";
				System.err.println(e.getMessage());
			}
			return output;
		}

		
		
		
		
		//delete Account
	    public String deleteAccount(String id) {
			
			String output = "";

			try {

				Connection con = connect();

				if (con == null) {

					return "Error occured while deleting the Account.";
				}

				// create a prepared statement
				String query = "delete from acc_table where id=?";
				java.sql.PreparedStatement preparedStmt = con.prepareStatement(query);
				// binding values
				preparedStmt.setString(1, id);

				// executing the statements
				preparedStmt.execute();

				con.close();

				output = "Account deleted successfully.";
				
			} catch (Exception e) {

				output = " An error occurred while deleting.";
				System.err.println(e.getMessage());
			}
			return output;
		}



}
