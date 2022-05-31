<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Reyes"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>listado</title>

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
          		 if (sesionoscar.getAttribute("usuarionormal") !=null){
          			 
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
              	    
          		 }else if (sesionoscar.getAttribute("admin") !=null){
          			 
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
              	    out.print("<hr><hr><hr>");
                 	out.print("<div class='container mt-3'>");
                 	out.print("<h1 id='color'>Listado de vecindario</h1>");
                 	out.print("<table class='table table-striped'>");
                 	out.print("<thead class='table-dark'>");
                 	out.print("<tr>");
                 	out.print("<th>Dni</th>");
                 	out.print("<th>Apellido</th>");
                 	out.print("<th>Nombre</th>");
                 	out.print("<th>Reyes</th>");
                 	out.print("<th>Email</th>");
                 	out.print("<th>Contrase�a</th>");
                 	out.print("</tr>");
                 	out.print("</thead>");
                 	out.print("<tbody>");
                 	%>
                 	<%
					LinkedList<Reyes> lista = Controller.getReyes();
					for (int i = 0; i < lista.size(); i++) {
					if (i % 2 == 0) {
						out.println("<tr class='table-primary'>");
					} else {
						out.println("<tr class='table-success'>");
					}
					out.println("<td>" + lista.get(i).getDni() + "</td>");
					out.println("<td>" + lista.get(i).getApellido() + "</td>");
					out.println("<td>" + lista.get(i).getNombre() + "</td>");
					out.println("<td>" + lista.get(i).getReyes() + "</td>");
					out.println("<td>" + lista.get(i).getEmail() + "</td>");
					out.println("<td>" + lista.get(i).getPwd() + "</td>");
					}
					out.println("</tr>");
					%>
					<%
                 	out.print("</tbody>");
                 	out.print("</table>");
                 	out.print("</div>");
                 	out.print("<h2 id='color' class='text-center'>A�adir Datos</h2>");
                 	out.print("<form class='form-group' action='ServletForm' method='POST' >");
                 	out.print("<div class='container col-md-6 p-5 my-5 border bg-light' id='rey'>");
                 	out.print("<div class='input-group mb-4'>");
                 	out.print("<span class='input-group-text'>Dni</span>");
                 	out.print("<input type='text' class='form-control' name='dni1' required pattern='[0-9]{8}[A-Za-z]{1}'>");
                 	out.print("</div>");
                 	out.print("<div class='input-group mb-4'>");
                 	out.print("<span class='input-group-text'>Nombre</span>");
                 	out.print("<input type='text' class='form-control' name='nombre1' required pattern='[a-zA-Z]{5,20}'>");
                 	out.print("</div>");
                 	out.print("<div class='input-group mb-3'>");
                 	out.print("<span class='input-group-text'>Apellido</span>");
                 	out.print("<input type='text' class='form-control' name='apellido1' required pattern='[a-zA-Z]{5,20}'>");
                 	out.print("</div>");
                 	out.print("<div class='input-group mb-3'>");
                 	out.print("<span class='input-group-text'>Contrase�a</span>");
                 	out.print("<input type='text' class='form-control' name='pwd1' required >");
                 	out.print("</div>");
                 	out.print("<div class='input-group mb-3'>");
                 	out.print("<span class='input-group-text'>Email</span>");
                 	out.print("<input type='email' class='form-control' name='email2' required  >");
                 	out.print("</div><div class='input-group mb-3'>");
                 	out.print("<span class='input-group-text'>Rey Favorito</span>");
                 	out.print("<input type='text' class='form-control' name='reyes1' required pattern='[a-zA-Z]{5,8}'>");
                 	out.print("</div>");
                 	out.print("<div class='input-group mb-3'>");
                 	out.print("</div>");
                 	out.print("<div class='text-center'>");
                 	out.print("<a href='listadoUsuario.jsp'><button type='Submit' class='btn btn-dark'>A�adir</button></a>");
                 	out.print("</div>");
                 	out.print("</div>");
                 	out.print("</form>");
                 	out.print("");
                 	out.print("");
                 	out.print("");
                 	out.print("");
                 	out.print("");
                 	out.print("");
                 	out.print("");
                 	out.print("");
                 	out.print("");
                 	out.print("");
                 	out.print("");
					}
              	    else {
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

    
      
<div id="pieDocumento">
  Tel�fono: 654-459-258 <br>
  Email de contacto:oscarlex@asociacionvec.com
</div>
  </body>
</html>
