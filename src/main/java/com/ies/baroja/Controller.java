package com.ies.baroja;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import com.model.Lugar;
import com.model.Caramelos;
import com.model.Reyes;
import com.bbdd.ConexionBBDD;
import com.model.Usuario;
public class Controller {
	private static String sConsultaReyes = "SELECT dni,apellido,nombre,reyes,pwd,email from vecinos ";
	public static LinkedList<Reyes> getReyes() {
		// Objeto con la lista de jugadores
		LinkedList<Reyes> listaReyes = new LinkedList<Reyes>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			System.out.println("Antes miConexion.ejecutarSentencia(sConsultaReyes) "+sConsultaReyes);
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaReyes);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Reyes Reyes = new Reyes(rsResultado.getString("dni"),
							rsResultado.getString("apellido"), rsResultado.getString("nombre"), rsResultado.getString("reyes"),
							rsResultado.getString("pwd"),rsResultado.getString("email"));
						//Lo insertamos en la lista
					listaReyes.add(Reyes);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de Reyes=" + listaReyes.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			System.out.println("Antes desconectar");
			miConexion.desconectar();
		}
		return listaReyes;
	}
	private static String sConsultaCaramelos = "SELECT pabellon,sandia,menta,fresa from caramelos ";
	public static LinkedList<Caramelos> getCaramelos() {
		// Objeto con la lista de jugadores
		
		LinkedList<Caramelos> listaCaramelos = new LinkedList<Caramelos>();
		
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		System.out.println("Antes miConexion.ejecutarSentencia(sConsultaCaramelos) "+sConsultaCaramelos);
		try {
			miConexion.conectar();
			
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaCaramelos);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Caramelos caramelos = new Caramelos(rsResultado.getString("pabellon"),
							rsResultado.getString("sandia"), rsResultado.getString("menta"), rsResultado.getString("fresa"));
						//Lo insertamos en la lista
					listaCaramelos.add(caramelos);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de Caramelos=" + listaCaramelos.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			System.out.println("Antes desconectar");
			miConexion.desconectar();
		}
		return listaCaramelos;
	}
	private static String sConsultaLugar = "SELECT pabellon,calle from lugar ";
	public static LinkedList<Lugar> getLugar() {
		// Objeto con la lista de jugadores
		
		LinkedList<Lugar> listaLugar = new LinkedList<Lugar>();
		
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		System.out.println("Antes miConexion.ejecutarSentencia(sConsultaLugar) "+sConsultaLugar);
		try {
			miConexion.conectar();
			
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaLugar);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada Lugar)
					Lugar lugar = new Lugar(rsResultado.getString("pabellon"),
							rsResultado.getString("calle"));
						//Lo insertamos en la lista
					listaLugar.add(lugar);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de Lugares=" + listaLugar.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			System.out.println("Antes desconectar");
			miConexion.desconectar();
		}
		return listaLugar;
	}

	
	public static boolean insertarReyes(Reyes Reyes) {
		// TODO Auto-generated method stub
		boolean bRes = true;
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			int iRes=miConexion.insertarReyes(Reyes);
			System.out.println("Resultado de insertar Reyes="+iRes);
			
		}catch(SQLException sqlex) {
			System.out.println("Error"+sqlex.getMessage());
			sqlex.printStackTrace();
			bRes=false;
		}finally {
			miConexion.desconectar();
		}
		return bRes;
	}
	
	
	public static boolean insertarCaramelos(Caramelos Caramelos) {
		// TODO Auto-generated method stub
		boolean bRes = true;
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			int iRes=miConexion.insertarCaramelos(Caramelos);
			System.out.println("Resultado de insertar Caramelos="+iRes);
			
		}catch(SQLException sqlex) {
			System.out.println("Error"+sqlex.getMessage());
			sqlex.printStackTrace();
			bRes=false;
		}finally {
			miConexion.desconectar();
		}
		return bRes;
	}
	
	
	public static boolean insertarLugar(Lugar Lugar) {
		// TODO Auto-generated method stub
		boolean bRes = true;
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			int iRes=miConexion.insertarLugar(Lugar);
			System.out.println("Resultado de insertar Lugares="+iRes);
			
		}catch(SQLException sqlex) {
			System.out.println("Error"+sqlex.getMessage());
			sqlex.printStackTrace();
			bRes=false;
		}finally {
			miConexion.desconectar();
			
			
			
		}
		return bRes;
	}
	public static Usuario getUsuario(String sEmail) {
		// Primero conectamos a la BBDD
		
		String sObtenerUsuario = "SELECT email,pwd FROM vecinos "
				+ "where email='" + sEmail + "';";
		System.out.println(sObtenerUsuario);
		Usuario usuario = null;
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sObtenerUsuario);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {
					// Creamos un objeto jugador por cada fila de la tabla (cada jugador)
					usuario = new Usuario(rsResultado.getString("email"), rsResultado.getString("pwd"));
					System.out.println(rsResultado.getString("pwd"));
					
				}
			} else {
				System.out.println("Usuario : "+sEmail+" no encontrado");
			}
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return usuario;
	}
	
	
	
	public static Reyes getReyes1(String sEmail) {
		// Primero conectamos a la BBDD
		
		String sObtenerUsuario = "SELECT dni,apellido,nombre,reyes,email,pwd FROM vecinos "
				+ "where email='" + sEmail + "';";
	
		Reyes reyes = null;
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sObtenerUsuario);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {
					// Creamos un objeto jugador por cada fila de la tabla (cada jugador)
					reyes= new Reyes(
							rsResultado.getString("dni"),
							rsResultado.getString("apellido"),
							rsResultado.getString("nombre"),
							rsResultado.getString("reyes"),
							rsResultado.getString("pwd"),
							rsResultado.getString("email"));
					
				}
			} else {
				System.out.println("Usuario : "+sEmail+" no encontrado");
			}
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return reyes;
	}
	public static Usuario getAdmin(String sEmail) {
		// Primero conectamos a la BBDD
		
		String sObteneradmin = "SELECT email,pwd FROM admin "
				+ "where email='" + sEmail + "';";
	
		Usuario admin = null;
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sObteneradmin);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {
					// Creamos un objeto jugador por cada fila de la tabla (cada jugador)
					admin= new Usuario(
							rsResultado.getString("email"),
							rsResultado.getString("pwd"));
					
				}
			} else {
				System.out.println("Usuario : "+sEmail+" no encontrado");
			}
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return admin;
	}
}