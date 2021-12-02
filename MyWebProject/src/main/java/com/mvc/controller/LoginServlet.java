package com.mvc.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.moona.beanmodel.LoggedInBean;
import com.moona.beanmodel.RegisterBean;
import com.moona.daomodel.LoginDao;
import com.moona.dbutils.DBConnection;


//Check inputs from login.jsp are correct or not & go to customerInfo.jsp if everything is correct
public class LoginServlet extends HttpServlet{

	public LoginServlet() {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//Set inputs from login.jsp to local variables
		String username = request.getParameter("login_name");
		String loginPswd = request.getParameter("login_pswd");

		
		//Create login user object & set the bean characters to the object
		RegisterBean loginBean = new RegisterBean();
		loginBean.setUsername(username);
		loginBean.setPswd(loginPswd);
		
		//Create object for loginDao, get ready to insert inputs from login.jsp into database
		LoginDao loginDao = new LoginDao();
		String loginVerifying = loginDao.loginUser(loginBean, request);

		
		if(loginVerifying.equals("µÇÂ¼³É¹¦")) {

			request.getRequestDispatcher("/customerInfo.jsp").forward(request, response);
		}else {
			request.setAttribute("errMessage", loginVerifying);
            request.getRequestDispatcher("/login.jsp").forward(request, response);
			
		}

	}
}
