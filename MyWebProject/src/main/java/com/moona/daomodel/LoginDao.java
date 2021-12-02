package com.moona.daomodel;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;

import com.moona.beanmodel.LoggedInBean;
import com.moona.beanmodel.RegisterBean;
import com.moona.dbutils.DBConnection;

//Create model to check login information & encapsulate the necessary information into session
public class LoginDao {

	String DBusername = "";
	String DBpswd = "";
	String DBaddr = "";
	String DBmobile = "";
	LoggedInBean lib = null;
	
	Connection conn = null;
	Statement sttment = null;
	ResultSet rs = null;
	
	public String loginUser(RegisterBean registeredBean, HttpServletRequest request) {
		//Assign register bean characters to local variables
		String username = registeredBean.getUsername();
		String pswd = registeredBean.getPswd();
		
		try {

			//Fetch database connection object
			conn = DBConnection.createConnection();
			
			//Use statement to invoke connection and to be ready to write query
			sttment = conn.createStatement();
			
			//Use resultset to invoke statement, fetch records of the matched name & password, then store in rs
			rs = sttment.executeQuery("select name, password, address, phone_number from customers");

			while(rs.next()) {
				DBusername = rs.getString("name");
				DBpswd = rs.getString("password");
				DBaddr = rs.getString("address");
				DBmobile = rs.getString("phone_number");
				if(username.equals(DBusername) && pswd.equals(DBpswd)) {


					//Create an object for logged in bean to encapsulate characters
					lib = new LoggedInBean(DBusername, DBaddr, DBmobile);
					//Encapsulate the logged in bean to the session
					request.getSession().setAttribute("lib", lib);
					System.out.println(lib.getUsername());
					System.out.println(lib.getAddress());
					
					
					return "µÇÂ¼³É¹¦";
				}
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return "Login failed";
		
	}
}
