package com.moona.dbutils;

import java.sql.Connection;
import java.sql.DriverManager;

//MySQL database connection
public class DBConnection {
	
	public static Connection createConnection() {
		
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/webproject?useSSL=false&serverTimezone=Asia/Shanghai&allowPublicKeyRetrieval=true&useUnicode=true&characterEncoding=utf8";
		String username = "James";
		String password = "Marpin_0002";
		
		try {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				System.out.println("Loading JDBC driver...");
			}catch (ClassNotFoundException e){
				e.printStackTrace();
			}
			conn = DriverManager.getConnection(url, username, password);
			System.out.println("Connection object" + conn);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
}
