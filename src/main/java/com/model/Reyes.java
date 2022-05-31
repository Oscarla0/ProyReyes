package com.model;



public class Reyes {
	
	
	
	
	private String dni;
	private String apellido;
	private String nombre;
	private String reyes;
	private String pwd;
	private String email;



	public Reyes(String dni, String apellido, String nombre, String reyes,String pwd,String email) {
		super();
		this.dni = dni;
		this.apellido = apellido;
		this.nombre = nombre;
		this.reyes = reyes;
		this.pwd =pwd;
		this.email=email;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getReyes() {
		return reyes;
	}

	public void setReyes(String reyes) {
		this.reyes = reyes;
	}
	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	public String toString() {
		StringBuffer sbResultado = new StringBuffer();
		sbResultado.append(dni);
		sbResultado.append(",");
		sbResultado.append(apellido);
		sbResultado.append(",");
		sbResultado.append(nombre);
		sbResultado.append(",");
		sbResultado.append(reyes);
		sbResultado.append(",");
		sbResultado.append(pwd);
		sbResultado.append(",");
		sbResultado.append(email);
		sbResultado.append("; \n");
		return sbResultado.toString();
	}
	


}