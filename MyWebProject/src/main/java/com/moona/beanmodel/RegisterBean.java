package com.moona.beanmodel;

//Encapsulate many objects into one object/bean
//RegisterBean encapsulates the registration properties username, password & mobile number 
public class RegisterBean {
	private String username;
	private String pswd;
	private String mobile;
	private String address;
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPswd() {
		return pswd;
	}
	
	public void setPswd(String pswd) {
		this.pswd = pswd;
	}

	
	public String getMobile() {
		return mobile;
	}
	
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String addr) {
		this.address = addr;
	}
}
