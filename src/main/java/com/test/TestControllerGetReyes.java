package com.test;

import java.util.LinkedList;
import com.ies.baroja.Controller;

import com.model.Reyes;


public class TestControllerGetReyes {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.print("Inicio de TestController");
		LinkedList<Reyes> listaReyes = Controller.getReyes();
		System.out.println("Total Reyes="+listaReyes.toString());
	}
}
