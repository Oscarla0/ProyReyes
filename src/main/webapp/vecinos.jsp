<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Reyes"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Asociacion de Vecinos</title>

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
            <a href="vecinos.jsp" class="nav-link active ">Asociación de vecinos</a>
          </li>
          <li class="nav-item">
            <a href="reyes.jsp" class="nav-link active ">Reyes Magos</a>
          </li>
          <li class="nav-item">
            <a href="asistir.jsp" class="nav-link active ">Dónde asistir</a>
          </li>
          <li class="nav-item">
            <a href="formulario.jsp" class="nav-link active ">Apúntate!!</a>
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
          		 }
                  %>
<br><br><br>
    <center><h1 id="color"><ins>ASOCIACIÓN DE VECINOS</ins></h1></center>
     <div class="container mt-5" id="color">
    <div class="row">
      <div class="col-sm-6">
        <center><h3>Campeonato de atletismo</h3></center>
               <img src="imagenes/atletismo.jpg" class="rounded mx-auto d-block"alt="Imagen" width="400">
          <center><p>Campeón: Alejandro Martínez</p></center>
      </div>
      <div class="col-sm-6">
        <center><h3>Campeonato de ajedrez</h3></center>
        <img src="imagenes/ajedrez.jpg" class="rounded mx-auto d-block"alt="Imagen" width="325">
        <center><p>Campeón: Víctor Rey</p></center>

      </div>
      
      </div>
    </div>
  
    
    <hr><hr><hr><hr>
     <div class="d-flex" id="color">
      <div>
        <div class="text-center">
        <h2>Estos vecinos, aparte de crear esta idea para los niños, también han hecho mas acticividades dedicadas a todo tipo de públicos.</h2>
        <p>Han conseguido reunir al barrio entero, y gente de otros barrios en los eventos que han realizado ellos mismos</p>
        <br>
        </div>
        <div>
        <div class="container mt-5" id="color">
    <div class="row">
      <div class="col-sm-6">
        <center><h3>Concurso de baile</h3></center>
               <img src="imagenes/baile.jpg" class="rounded mx-auto d-block"alt="Imagen" width="400">
          <center><p>Campeóna: Lucía Domínguez</p></center>
      </div>
      <div class="col-sm-6">
        <center><h3>Campeonato de ping pong</h3></center>
        <img src="imagenes/ping.jpg" class="rounded mx-auto d-block"alt="Imagen" width="400">
        <center><p>Campeón: Wang Ye</p></center>
        <br> <br> <br> <br>

      </div>

      </div>
      </div>

      <div class="text-center">
          <img src="imagenes/vecinos9.jpg" class="img-fluid" alt="vecindario" width=900>
               <h5>Todas estas ideas de nuestros vecinos tienen la finalidad de hacer un barrio feliz y unido</h5>
        <h5>Estos son los vecinos que forman parte de nuestra <a href="listado.jsp">comunidad de vecinos</a></h5>
      </div>
      <br> <br>
    <div>
      <div>

      </div>
  <div>

  </div>

    </div>

    <br><br><br><br>
<div id="pieDocumento">
  Teléfono: 654-459-258 <br>
  Email de contacto:oscarlex@asociacionvec.com
</div>
  </body>
</html>
