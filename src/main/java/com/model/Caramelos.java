package com.model;


public class Caramelos {
	
	
	private String pabellon;
	private String sandia;
	private String menta;
	private String fresa;
	
	
	public Caramelos(String pabellon, String sandia, String menta, String fresa) {
		super();
		this.pabellon = pabellon;
		this.sandia = sandia;
		this.menta = menta;
		this.fresa = fresa;
	}
	

	public String getPabellon() {
		return pabellon;
	}
	public void setPabellon(String pabellon) {
		this.pabellon = pabellon;
	}
	public String getSandia() {
		return sandia;
	}
	public void setSandia(String sandia) {
		this.sandia = sandia;
	}
	public String getMenta() {
		return menta;
	}
	public void setMenta(String menta) {
		this.menta = menta;
	}
	public String getFresa() {
		return fresa;
	}
	public void setFresa(String fresa) {
		this.fresa = fresa;
	}

}
