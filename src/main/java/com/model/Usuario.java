package com.model;

public class Usuario {
	
	
	
	private String email;
	private String pwd;
	
	
	
	public Usuario(String email, String pwd) {
		super();
		this.email = email;
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	
	
}
