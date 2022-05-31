<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Reyes"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Reyes</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="css/estilos.css">
  
  <br>  <br>  <br> 
  <center><h1 id="color"><ins>SORTEO REGALOS!</ins></h1></center>
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
<div class="container">
  <div id="color"><h2>Sorteo oficial de los regalos de la cabalgata de Reyes</h2></div>
  <table class="table">
    <thead class="table-dark">
      <tr>
        <th>Nombre</th>
        <th>Descripción del regalo</th>
        <th>Valor del regalo</th>
        <th>Imágen</th>
      </tr>
    </thead>
    <tbody>
      <tr class="table-primary">
        <td>Flauta</td>
        <td>Flauta de madera perfecta para hacer música, viene con una partitura de regalo para aprender a tocar el Himno de la Alegría</td>
        <td>10$</td>
        <td><img src="imagenes/flauta.jpg" class="d-block" alt="..." width="100px"></td>
      </tr>
      <tr class="table-info">
        <td>Gafas 3D</td>
        <td>Gafas para ver cualquier pelíula 3D, reutilizables las veces que quieras</td>
        <td>20$</td>
        <td><img src="imagenes/3d.jpg" class="d-block" alt="..." width="100px"></td>
      </tr>
      <tr class="table-success">
        <td>PlayStation 5</td>
        <td>PlayStation 5 con 825 gb de almacenamiento, conectividad Wifio LAN, Conexión TV / AV: HDMI y Resolución: 4K</td>
        <td>500$</td>
        <td><img src="imagenes/ps5.jpg" class="d-block" alt="..." width="100px"></td>
      </tr>
      <tr class="table-danger">
        <td>Televisión</td>
        <td>Televisor Samsung  Crystal UHD 189 cm 75" 4K Smart TV</td>
        <td>800$</td>
        <td><img src="imagenes/tele.jpg" class="d-block" alt="..." width="100px"></td>
      </tr>
      <tr class="table-warning">
        <td>Pokemon</td>
        <td>Juguetes de Pokemon, la serie de dibujos animados famosa que causó furor entre los jóvenes</td>
        <td>60$</td>
        <td><img src="imagenes/pokemon.jpg" class="d-block" alt="..." width="100px"></td>
      </tr>
      <tr class="table-secondary">
        <td>Bicicleta</td>
        <td>Bicicleta especialmente preparada para el campo, para hacer mountain bike y pasar un buen día de campo, pero tambien utilizable en todo tipo de terrenos</td>
        <td>100$</td>
        <td><img src="imagenes/bicicleta.jpg" class="d-block" alt="..." width="100px"></td>
      </tr>
    </tbody>
  </table>
</div>
</div>
<div class="container p-1 my-1 bg-primary text-white">
  <center><h3>Flauta</h3></center>
<center><img src="imagenes/flauta.jpg"   height="100"></center><br>
<center><a href="GraciasPorParticipar.jsp" class="btn btn-outline-dark">Seleccionar regalo</a></center>
</div>

<br> <br> <br> <br> 
      
        <div class="container p-1 my-1 bg-info text-white">
  <center><h3>Gafas 3D</h3></center>
<center><img src="imagenes/3d.jpg"   height="100"></center><br>
<center><a href="GraciasPorParticipar.jsp" class="btn btn-outline-dark">Seleccionar regalo</a></center>
</div>
  
      
<br> <br> <br> <br> 
      
        <div class="container p-1 my-1 bg-success text-white">
  <center><h3>PlayStation 5</h3></center>
<center><img src="imagenes/ps5.jpg"   height="100"></center><br>
<center><a href="GraciasPorParticipar.jsp" class="btn btn-outline-dark">Seleccionar regalo</a></center>
</div>
  
 
<br> <br> <br> <br> 
      
        <div class="container p-1 my-1 bg-danger text-white">
  <center><h3>Televisión</h3></center>
<center><img src="imagenes/tele.jpg"   height="100"></center><br>
<center><a href="GraciasPorParticipar.jsp" class="btn btn-outline-dark">Seleccionar regalo</a></center>
</div>
  
 	 
<br> <br> <br> <br> 
      
        <div class="container p-1 my-1 bg-warning text-white">
  <center><h3>Pokemon</h3></center>
<center><img src="imagenes/pokemon.jpg"   height="100"></center><br>
<center><a href="GraciasPorParticipar.jsp" class="btn btn-outline-dark">Seleccionar regalo</a></center>
</div>
  
 	 <br> <br> <br> <br> 
      
        <div class="container p-1 my-1 bg-secondary text-white">
  <center><h3>Bicicleta</h3></center>
<center><img src="imagenes/bicicleta.jpg"   height="100"></center><br>
<center><a href="GraciasPorParticipar.jsp" class="btn btn-outline-dark">Seleccionar regalo</a></center>
</div>

<br> <br> <br> <br>
  </body>
</html>
