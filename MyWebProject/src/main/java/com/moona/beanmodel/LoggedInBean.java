package com.moona.beanmodel;

public class LoggedInBean {
	

	private String name;
	private String addr;
	private String mobile;
	
		public LoggedInBean(String username, String address, String mobile) {
	
			this.name = username;
			this.addr = address;
			this.mobile = mobile;
		}
		
		public String getUsername() {
			return name;
		}
		
		public void setUsername(String username) {
			this.name = username;
		}

		
		public String getMobile() {
			return mobile;
		}
		
		public void setMobile(String mobile) {
			this.mobile = mobile;
		}
		
		public String getAddress() {
			return addr;
		}
		
		public void setAddress(String address) {
			this.addr = address;
		}

}
