package com.model;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public class Lugar {
	public Lugar(String pabellon, String calle) {
		super();
		this.pabellon = pabellon;
		this.calle = calle;
	}
	
	public String getPabellon() {
		return pabellon;
	}
	public void setPabellon(String pabellon) {
		this.pabellon = pabellon;
	}
	public String getCalle() {
		return calle;
	}
	public void setCalle(String calle) {
		this.calle = calle;
	}
	private String pabellon;
	private String calle;

}