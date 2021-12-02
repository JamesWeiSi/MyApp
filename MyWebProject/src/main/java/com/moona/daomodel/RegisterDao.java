package com.moona.daomodel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.moona.beanmodel.RegisterBean;
import com.moona.dbutils.DBConnection;

//Using business logic with database connections & operations
//Making connection with database & inserting inputs into database
public class RegisterDao {
	
	public String registerUser(RegisterBean registerBean) {
		//Assign register bean characters to local variables
		String username = registerBean.getUsername();
		String pswd = registerBean.getPswd();
		String mobile = registerBean.getMobile();
		String addr = registerBean.getAddress();
		
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			//Create database connection
			conn = DBConnection.createConnection();
			String query = "insert into customers(id, name, password, address, phone_number) values (null, ?, ?, ?, ?)";
			
			//Use prepared statement to get ready to insert inputs from register.jsp into database by column sequence
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, pswd);
			ps.setString(3, addr);
			ps.setString(4, mobile);
			
			//To ensure the insertion succeed
			int i = ps.executeUpdate();
			if (i!=0) {
				return "×¢²á³É¹¦£¡£¡£¡ÇëµÇÂ¼£º";
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}	
		
		return "Registering failed";
	}
	
}
