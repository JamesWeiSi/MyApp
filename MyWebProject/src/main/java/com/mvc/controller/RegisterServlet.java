package com.mvc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moona.beanmodel.RegisterBean;
import com.moona.daomodel.RegisterDao;


//Assign all inputs to local variables
public class RegisterServlet extends HttpServlet {

	public RegisterServlet() {

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//Copy all the inputs from register.jsp to the local variables
		String username = request.getParameter("username");
		String pswd = request.getParameter("pswd");
		String addr = request.getParameter("addr");
		String mobile = request.getParameter("mobile");
	
		//Set the variables to bean details by calling RegisterBean
		RegisterBean rb = new RegisterBean();
		rb.setUsername(username);
		rb.setPswd(pswd); 
		rb.setAddress(addr); 
		rb.setMobile(mobile); 
	
		//Insert the bean details into database by calling RegisterDao
		RegisterDao registerDao = new RegisterDao();
		String userRegistered = registerDao.registerUser(rb);
		
		//Check if the String userRegisterd equals to the value returned in file RegisterDao.java, and go to login.jsp
		if(userRegistered.equals("×¢²á³É¹¦£¡£¡£¡ÇëµÇÂ¼£º")) {
			request.setAttribute("×¢²á³É¹¦", userRegistered);
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}else {
			request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("/Register.jsp").forward(request, response);
		}
	
	

	}
	
}
