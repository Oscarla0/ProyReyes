<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Reyes"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Crea tu cuenta</title>

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

    <br>
    <br>
    <br>
    <br>
    <div class="text-center"><h2 style="color:white;"><ins>PÁGINA DE REGÍSTRO</ins></h2></div>
    <div class="text-center"><p id="color">Si estás interesado en apuntarte y ayudar con nuestro proyecto, no lo dudes más, apúntate con nosotros y haz feliz a muchos niños</p>	</div>

    <form class="form-group " action="ServletForm" method="POST" >
    
      <div class="container col-md-6 p-5 my-5 border bg-light" id="rey">
      <div class="input-group mb-4">
      <span class="input-group-text">Dni</span>
<input type="text" class="form-control" name="dni" required pattern="[0-9]{8}[A-Za-z]{1}">
   </div>
        <div class="input-group mb-4">
      <span class="input-group-text">Nombre</span>
<input type="text" class="form-control" name="nombre" required pattern="[a-zA-Z]{5,20}">
        </div>
        <div class="input-group mb-3">
         <span class="input-group-text">Apellido</span>
<input type="text" class="form-control" name="apellido" required pattern="[a-zA-Z]{5,20}">
          </div>
            <div class="input-group mb-3">
             <span class="input-group-text">Contraseña</span>
<input type="text" class="form-control" name="pwd" required >
            </div>
            <div class="input-group mb-3">
             <span class="input-group-text">Email</span>
<input type="email" class="form-control" name="email" required  >
            </div><div class="input-group mb-3">
             <span class="input-group-text">Rey Favorito</span>
<input type="text" class="form-control" name="reyes" required pattern="[a-zA-Z]{5,8}">
            </div>
            <div class="input-group mb-3">

              </div>


              <div class="text-center">
                <a href="listado.jsp"><button type="Submit" class="btn btn-dark">Apuntarse</button></a>
              </div>

                </div>

</form>
<div id="pieDocumento">
  Teléfono: 654-459-258 <br>
  Email de contacto:oscarlex@asociacionvec.com
</div>
  </body>
</html>