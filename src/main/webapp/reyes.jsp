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
  <center><h1 id="color"><ins>REYES MAGOS DE ORIENTE</ins></h1></center>
  <div>
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
         <center><img src="imagenes/rey1.jpg" class="d-block " alt="..." width="900px"></center>

        </div>
        <div class="carousel-item">
          <center><img src="imagenes/rey2.jpg" class="d-block" alt="..." width="900px" ></center>

        </div>
        <div class="carousel-item">
          <center><img src="imagenes/rey3.jpg" class="d-block" alt="..." width="750px"></center>

        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
  </div>
  <div class="container mt-5" id="color">
    <div class="row">
      <div class="col-sm-4">
        <h3>Melchor</h3>
        <img src="imagenes/melchor.jpg"  class="rounded-circle"  alt="Melchor" height="200">
        <p>Melchor está caracterizado por una gran y larga barba blanca y
          por llevar una corona dorada y una larga túnica de invierno,
           apropiada para la gélida visita al pequeño niño nacido en un pesebre.</p>
      </div>
      <div class="col-sm-4">
        <h3>Gaspar</h3>
        <img src="imagenes/gaspar.webp"  class="rounded-circle"  alt="Gaspar" height="200">
        <p>Es considerado como el rey más joven de los tres,
          ya que Melchor es el mayor y el más sabio, originario de Europa .</p>

      </div>
      <div class="col-sm-4">
        <h3>Baltasar</h3>
        <img src="imagenes/Baltasa.jpg"  class="rounded-circle"  alt="Baltasar" height="200">
        <p>Del Rey Baltasar, niños y adultos admiran mas cualidades:
          es el Rey más mágico y misterioso; 
          Como no tiene barba,
          aparenta ser el más jóven y no rasca los niños cuando les besa..</p>

      </div>
    </div>
  </div>


<div class="container col-md-6 p-5 my-5 border bg-light" id="rey2">
  <div id="color">
    <p>Había una vez tres Reyes magos que vivían cada uno en sus respectivos reinos. Eran muy buenos y la gente de sus pueblos los querían mucho. Se llamaban Melchor, Gaspar y Baltasar.
       Un día, apareció en el cielo una estrella, una estrella distinta a las demás. Todos decían que señalaba el camino hasta donde había nacido el niño Jesús.
       Todos los campesinos la seguían para hacerle regalos, llevarle pan,fruta.
       Decían que era un niño muy especial y que algún día sería el Rey de Reyes.
       Los tres Reyes también decidieron seguirla y llevarle un regalo cada uno. Melchor le llevó oro, Gaspar le llevó un incienso mágico y Baltasar, mirra con la que hacer medicinas y muchas más cosas.
       Cada Rey mago montó en su camello y salieron de sus reinos siguiendo a la estrella. Casi llegando a Belén, una gran niebla les cegaba. Asi que los tres tuvieron la misma idea, subir a lo alto de una montaña para ver desde allí la estrella que señalaba el camino.
       Cuando llegaron encima de la montaña,  se encontraron los tres. No se conocían, pero decidieron continuar juntos su camino montados en sus camellos. Era un camino muy largo y llegaron a ser grandes amigos.</p>
  </div>
</div>
		
<br><br><br>

<div id="pieDocumento">
  Teléfono: 654-459-258 <br>
  Email de contacto:oscarlex@asociacionvec.com
</div>
</body>

</html>
