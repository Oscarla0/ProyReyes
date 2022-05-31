<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Reyes"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="java.util.LinkedList"%>
<%@ page import="com.model.Usuario" %>
<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="css/estilos.css">
  </head>
  <body id="grad2">

    <nav class="navbar navbar-expand-sm navbar-light bg-dark scrolling-navbar fixed-top top-navbar-collapse navbar-dark">
      <div class="container-fluid">
        <ul class="navbar-nav m-auto">
          <li class="nav-item">
            <a href="inicio.jsp" class="nav-link active"><img src="https://www.valdemoro.es/documents/10180/14395240/REYES.jpg/77923cc3-226a-4826-bbee-d6d8ac1cedad?t=1607084860071" alt="" width="35"></a>
          </li>
          <li class="nav-item">
            <a href="vecinos.jsp" class="nav-link active ">Asociaci�n de vecinos</a>
          </li>
          <li class="nav-item">
            <a href="reyes.jsp" class="nav-link active ">Reyes Magos</a>
          </li>
          <li class="nav-item">
            <a href="asistir.jsp" class="nav-link active ">D�nde asistir</a>
          </li>
          <li class="nav-item">
            <a href="formulario.jsp" class="nav-link active ">Ap�ntate!!</a>
          </li>
          <% HttpSession sesionoscar = request.getSession();        		
          		Reyes reyes=(Reyes) sesionoscar.getAttribute("usuarionormal");
          		Usuario admin=(Usuario)sesionoscar.getAttribute("admin");
          		if (sesionoscar.getAttribute("usuarionormal")!=null){
          			out.print("<li class='nav-item'>");
          			out.print("<a href='Sorteo.jsp' class='nav-link active'>SorteoRegalo</a>");
          			out.print("</li>");
          			out.print("</ul>");
          			out.print("<ul class='nav navbar-nav navbar-right'>");
              		out.print("<li >");
              		out.print("<a href='Login.jsp'><span class='glyphicon glyphicon-log-in'></span><button type='button' class='btn btn-outline-light'>");
              		out.print("Perfil</button></a>");
              	    out.print("</li>");
              	    out.print("</ul> </div>"+"</nav>");
              	    out.print("<br>");
              	    out.print("<br>");
              		out.print("<br>");
	              	out.print("<div  id='color'>");
	              	out.print("<h2 class='text-center'>Bienvenido!!!</h2>");
	              	out.print("<h3 class='text-center'>Gracias por registrarte con nosotros , tenemos una Sorpresa para ti</h3>");
	              	out.print("<br>");
	              	out.print("<center><a href='Sorteo.jsp'><img src='imagenes/regalo.gif' alt='...' width='400px' height='400px'><img></a></center>");
	              	out.print("</div>");
	              	out.print("<br>");
        			out.print("<br>");
	              	out.print("<center>");
	              	out.print("<form action='ServletForm' method='POST'");
        			out.print("<input type='hidden' name='cerrado' value=''>");
        		    out.print("<button type='submit' id='color' class='btn btn-outline-light' name='cerrado' role='button'>Cerrar Sesion</button>");
        			out.print("</form>");
        			out.print("</center>");
        			out.print("<br>");
        			out.print("<br>");
	              	out.print("<br>");
	              	out.print("");
	              	out.print("");
          		}
          		else if (sesionoscar.getAttribute("admin") !=null){
          			 
          			out.print("<li class='nav-item'>");
          			out.print("<a href='Sorteo.jsp' class='nav-link active'>SorteoRegalo</a>");
          			out.print("</li>");
          			out.print("</ul>");
          			out.print("<ul class='nav navbar-nav navbar-right'>");
              		out.print("<li >");
              		out.print("<a href='admin.jsp'><span class='glyphicon glyphicon-log-in'></span><button type='button' class='btn btn-outline-light'>");
              		out.print("admin</button></a>");
              	    out.print("</li>");
              	    out.print("</ul> </div>"+"</nav>");
	              	out.print("<br><br>");
	              	out.print("<div class='container mt-5' id='color'>");
	              	out.print(" <div class='row'>");
	              	out.print("<div class='col-sm-4'>");
	              	out.print("<h3>Listado-Usuario</h3>");
	              	out.print("<img src='imagenes/usuario.jpg' class='rounded' alt=''...' width='200px'>");
	              	out.print("<p><a href='listadoUsuario.jsp'><button type='Submit' class='btn btn-dark'>Inspeccionar</button></a></p>");
	              	out.print(" </div>");
	              	out.print("<div class='col-sm-4'>");
	              	out.print("<h3>Listado-Caramelos</h3>");
	              	out.print("<img src='imagenes/caramelo.webp' class='rounded' alt=''...' width='200px'>");
	              	out.print("<p><a href='listadoCaramelos.jsp'><button type='Submit' class='btn btn-dark'>Inspeccionar</button></a></p>");
	              	out.print("</div>");
	              	out.print("");
	              	out.print("<div class='col-sm-4'>");
	              	out.print("<h3>Listado-Lugar</h3>");
	              	out.print("<img src='imagenes/ubicacion.webp' class='rounded' alt=''...' width='200px'>");
	              	out.print("<p><a href='listadoLugar.jsp'><button type='Submit' class='btn btn-dark'>Inspeccionar</button></a></p>");
	              	out.print("</div>");
	              	out.print("<form action='ServletForm' method='POST'>");
	              	out.print("<input type='hidden' name='cerrado' value=''>");
	              	out.print("<button type='submit' id='color' class='btn btn-outline-light' name=cerrado role='button'>Cerrar Sesion</button>");
	              	out.print("</form>");
	              	out.print("<br><br>");
	              	out.print("");
	              	
              	    
          		 }else {
          			out.print("<li class='nav-item'>");
          			out.print("<a href='Sorteo.jsp' class='nav-link disabled'>SorteoRegalo</a>");
          			out.print("</li>");
          			out.print("</ul>");
          			out.print("<ul class='nav navbar-nav navbar-right'>");
              		out.print("<li >");
              		out.print("<a href='Login.jsp'><span class='glyphicon glyphicon-log-in'></span><button type='button' class='btn btn-outline-light'>Login</button></a>");
              	    out.print("</li>");
              	    out.print("</ul> </div>"+"</nav>");
              	    out.print("<br>");
              	    out.print("<br>");
              	    out.print("<br>");
              	    out.print("<br>");
              	    out.print("<div class='text-center' id='color'><h2 style='color:white;'>LOGIN</h2></div>");
              	    out.print("<form action='ServletForm' method='post'>");
              	    out.print("<div class='container col-md-6 p-5 my-5 border' id='rey'>");
              	    out.print("<div class='input-group mb-4'>");
              	    out.print("<span class='input-group-text'>Email</span>");
              	    out.print("<input type='email'  name='email1' class='form-control' required>");
              	    out.print("</div>");
              	    out.print("<div class='input-group mb-3'>");
              	    out.print("<span class='input-group-text'>Contrase�a</span>");
              	    out.print("<input type='password' class='form-control' name='pwd' required>");
	              	out.print("</div>");
	              	out.print("<div  class='text-center' id='color'>");
	              	out.print("<p>No tienes cuenta? Pulse <a href='formulario.jsp'>aqui</a> para registrar</p>");
	              	out.print("<a href='inicio.jsp'><button type='Submit' class='btn btn-dark'>Aceptar</button></a>");
	              	out.print("</div>");
	              	out.print("</div>");
	              	out.print("</form>");
          		 }
                  %>
 		
 		
		
		
 		
 		<br><br>
<div id="pieDocumento">
  Tel�fono: 654-459-258 <br>
  Email de contacto:oscarlex@asociacionvec.com
</div>
  </body>
</html>
