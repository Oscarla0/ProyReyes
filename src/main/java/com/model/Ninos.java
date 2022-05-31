package com.model;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public class Ninos {
	
	private String dni;
	private String nombre;
	private String apellido;
	private String direccion;
	private String regalo;
	
	
	public Ninos(String dni, String nombre, String apellido, String direccion, String regalo) {
		super();
		this.dni = dni;
		this.nombre = nombre;
		this.apellido = apellido;
		this.direccion = direccion;
		this.regalo = regalo;
	}
	public void Dni(String dni) {
		int chivato;
		try {
		do {
			Pattern pat = Pattern.compile("[a-zA-Z]{3,20}");
			// TE COMPRUEBA QUE EL dni SIGA EL PATRON
			Matcher mat = pat.matcher(dni);
			chivato=0;
			if (mat.matches()) {
				chivato=1;
				this.dni = dni;
			}
		}while(chivato==0);
		}catch(PatternSyntaxException e) {
			e.printStackTrace();
		}
	}
	public void nombre(String nombre) {
		int chivato;
		try {
		do {
			Pattern pat = Pattern.compile("[a-zA-Z]{3,20}");
			// TE COMPRUEBA QUE EL NOMBRE SIGA EL PATRON
			Matcher mat = pat.matcher(nombre);
			chivato=0;
			if (mat.matches()) {
				chivato=1;
				this.nombre = nombre;
			}
		}while(chivato==0);
		}catch(PatternSyntaxException e) {
			e.printStackTrace();
		}
	}
	public void apellido( String apellido) {
		int chivato;
		try {
		do {
			Pattern pat = Pattern.compile("[a-zA-Z]{3,20}");
			// TE COMPRUEBA QUE EL Apellido SIGA EL PATRON
			Matcher mat = pat.matcher(apellido);
			chivato=0;
			if (mat.matches()) {
				chivato=1;
				this.apellido = apellido;
			}
		}while(chivato==0);
		}catch(PatternSyntaxException e) {
			e.printStackTrace();
		}
	}
	public void direccion(String direccion) {
		int chivato;
		try {
		do {
			Pattern pat = Pattern.compile("[a-zA-Z]{3,20}");
			// TE COMPRUEBA QUE EL direccion SIGA EL PATRON
			Matcher mat = pat.matcher(direccion);
			chivato=0;
			if (mat.matches()) {
				chivato=1;
				this.direccion = direccion;
			}
		}while(chivato==0);
		}catch(PatternSyntaxException e) {
			e.printStackTrace();
		}
	}
	public void regalo(String regalo) {
		int chivato;
		try {
		do {
			Pattern pat = Pattern.compile("[a-zA-Z]{3,20}");
			// TE COMPRUEBA QUE EL NOMBRE SIGA EL PATRON
			Matcher mat = pat.matcher(regalo);
			chivato=0;
			if (mat.matches()) {
				chivato=1;
				this.regalo = regalo;
			}
		}while(chivato==0);
		}catch(PatternSyntaxException e) {
			e.printStackTrace();
		}
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getRegalo() {
		return regalo;
	}
	public void setRegalo(String regalo) {
		this.regalo = regalo;
	}
	public String toString() {
		StringBuffer sbResultado = new StringBuffer();
		sbResultado.append(dni);
		sbResultado.append(",");
		sbResultado.append(nombre);
		sbResultado.append(",");
		sbResultado.append(apellido);
		sbResultado.append(",");
		sbResultado.append(direccion);
		sbResultado.append(",");
		sbResultado.append(regalo);
		sbResultado.append("; \n");
		return sbResultado.toString();
	}
}
