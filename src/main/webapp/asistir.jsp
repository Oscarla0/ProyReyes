<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Reyes"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Donde asistir</title>

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
    <div class="d-flex justify-content-center" id="color">
    <h1><ins>OSCARLEX</ins></h1>
    </div>
    <div class="container mt-5" id="color">
      <div class="row">
        <div class="col-sm-4">
          <h3>Marcelo Usera</h3>
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3039.0493032216327!2d-3.7101697849775666!3d40.385599879368804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4227b15b97970d%3A0x46e2a06712a4ca0a!2sC.%20de%20Marcelo%20Usera%2C%2028026%20Madrid!5e0!3m2!1ses!2ses!4v1652374141277!5m2!1ses!2ses" width="300" height="250" style="border:0;" ></iframe>
          <p>Primer recorrido de la cabalgata de Marcelo Usera del día 03/01,
           pasará por el Hotel Madrid Río y morirá en el metro de Legazpi..</p>

        </div>
        <div class="col-sm-4">
          <h3>Dolores Barranco</h3>
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3039.1578789381006!2d-3.708908684977722!3d40.38319337936902!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4227b2139e587f%3A0x3b95d3069578996b!2sC.%20de%20Dolores%20Barranco%2C%2028026%20Madrid!5e0!3m2!1ses!2ses!4v1652374078893!5m2!1ses!2ses" width="300" height="250" style="border:0;" ></iframe>
          <p>En el segundo recorrido por Dolores Barranco del día 04/01,
           pasará por el supermercado Wenzhou y morirá en el cuartel de la Policía Nacional..</p>

        </div>
        <div class="col-sm-4">
          <h3>Av.Rafael y Barra</h3>
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3039.415226860947!2d-3.7144087849778393!3d40.37748897936978!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4227a81b05e119%3A0x8e2183fe6e5b17cc!2sAv.%20de%20Rafaela%20Ybarra%2C%2028026%20Madrid!5e0!3m2!1ses!2ses!4v1652374013649!5m2!1ses!2ses" width="300" height="250" style="border:0;" ></iframe>
          <p>Por último, la cabalgata de Rafael y Barra del día 05/01,
           pasará por el Polideportivo de Orcasitas y morirá en el IES Pío Baroja, donde se detendrán
            y repartirán regalos para muchos de los niños que estudian en el centro.</p>

        </div>




</div>
<br>
</div>
<div class="text-center" id="color">
          <h1>Recordatorio!!!</h1>
          <p>La cabalgata empezara a las 19:00 horas y tendrá una duración de hora y media, TE ESPERAMOS!!</p>
          <img src="imagenes/reloj.gif" alt="">
        </div>
<br><br><br><br>
<div id="pieDocumento">
  Teléfono: 654-459-258 <br>
  Email de contacto:oscarlex@asociacionvec.com
</div>
  </body>
</html>
