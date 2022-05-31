package com.bbdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.Reyes;
import com.model.Lugar;
import com.model.Caramelos;
/**
 * Clase que centraliza los métodos de acceso a BBDD
 * 
 * @author JAGD
 * @since 27/05/2021
 */

public class ConexionBBDD {

	Connection conexion; 
	int port = 3306;
	String host= "localhost";
	String db  = "reyes";
	String user="root";
	String password="0123456789";

	String url = String.format("jdbc:mysql://%s:%d/%s?useSSL=false", host, port, db);

	public void conectar() throws SQLException {
		conexion =  DriverManager.getConnection(url, user, password);
	}	
	 

	public void desconectar() {
		try {
			conexion.close();
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
		}
	}

	public ResultSet ejecutarSentencia(String sentencia) {
		ResultSet rsResultado = null;
		try {
			System.out.println("Ejecutando: " + sentencia);
			PreparedStatement prepStatement = conexion.prepareStatement(sentencia);
			rsResultado = prepStatement.executeQuery();
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
		}
		return rsResultado;
	}
	
	public int insertarReyes(Reyes Reyes) {
		int iRes=0;
		String sInsert ="INSERT INTO vecinos (dni,apellido,nombre,pwd,email,reyes) values (?,?,?,?,?,?)";
		try {
		System.out.println("Ejecutando: " + sInsert);
		System.out.println("datos: " + Reyes);
		PreparedStatement prepStatement =
		conexion.prepareStatement(sInsert);
		prepStatement.setString(1,Reyes.getDni());
		prepStatement.setString(2,Reyes.getApellido());
		prepStatement.setString(3,Reyes.getNombre());
		prepStatement.setString(5,Reyes.getPwd());
		prepStatement.setString(6,Reyes.getEmail());
		prepStatement.setString(4,Reyes.getReyes());
		iRes = prepStatement.executeUpdate();
		} catch (SQLException sqlex) {
		System.out.println("Error: " + sqlex.getMessage());
		sqlex.printStackTrace();
		}
		return iRes;
		}
	public int insertarLugar(Lugar Lugar) {
		int iRes=0;
		String sInsertL ="INSERT INTO lugar (pabellon,calle) values (?,?)";
		try {
		System.out.println("Ejecutando: " + sInsertL);
		System.out.println("datos: " + Lugar);
		PreparedStatement prepStatement =
		conexion.prepareStatement(sInsertL);
		prepStatement.setString(1,Lugar.getPabellon());
		prepStatement.setString(2,Lugar.getCalle());
		iRes = prepStatement.executeUpdate();
		} catch (SQLException sqlex) {
		System.out.println("Error: " + sqlex.getMessage());
		sqlex.printStackTrace();
		}
		return iRes;
		}
	public int insertarCaramelos(Caramelos Caramelos) {
		int iRes=0;
		String sInsert ="INSERT INTO caramelos (pabellon,sandia,menta,fresa) values (?,?,?,?)";
		try {
		System.out.println("Ejecutando: " + sInsert);
		System.out.println("datos: " + Caramelos);
		PreparedStatement prepStatement =
		conexion.prepareStatement(sInsert);
		prepStatement.setString(1,Caramelos.getPabellon());
		prepStatement.setString(2,Caramelos.getSandia());
		prepStatement.setString(3,Caramelos.getMenta());
		prepStatement.setString(4,Caramelos.getFresa());
		iRes = prepStatement.executeUpdate();
		} catch (SQLException sqlex) {
		System.out.println("Error: " + sqlex.getMessage());
		sqlex.printStackTrace();
		}
		return iRes;
		}
}
