<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Reyes"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Inicio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
      <link rel="stylesheet" href="css/estilos.css">
      <style media="screen">
      #colors {
        color:#FFFFFF;
      }
      #grad1 {
        width:100px;
        height:100px;
        background-image: conic-gradient(darksalmon,darkslateblue,dodgerblue,darkviolet);
      }

      </style>

    <title></title>
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
    <br><br>
            <form class="was-validated" action="EjercicioFormulario4.jsp" method="get" id="form1">
        <div class="container" style="margin-top:30px">
          <div class="container mt-5" id="color">
            <div class="row">
              <div class="col-sm-3">
                <center><h2>Bienvenido a nuestra web!</h2></center>
                <br>
                Encontrarás toda la información que desees pinchando en nuestras fotos y además, si participas puedes llevarte un regalo por hacer feliz a nuetros niños!!
                <div class="fakeimg">  
                <br>
                <a href="vecinos.jsp"><img src="imagenes/vecindario.jpg"class="rounded mx-auto d-block" alt="Imagen" width=175></a>
                <br> <br>
                <a href="reyes.jsp"><img src="imagenes/magos.jpg"class="rounded mx-auto d-block" alt="Imagen" width=175></a>
                <br> <br>
                  <a href="asistir.jsp"><img src="imagenes/maps.jpg"class="rounded mx-auto d-block" alt="Imagen" width=175></a>
                <br> <br>
                 <a href="formulario.jsp"><img src="imagenes/inscribir.jpeg"class="rounded mx-auto d-block" alt="Imagen" width=175></a>
              
                </div>
                
                <hr class="d-sm-none">
              </div>
              <div class="col-sm-8">
                <center><h2><ins>Primera Cabalgata del Barrio Oscarlex</ins></h2></center>
                <br>

                <div class="fakeimg"><img src="imagenes/Cabalgata1.jpeg" class="rounded mx-auto d-block"alt="Imagen"></div>
                <p>Los vecinos del barrio han decidido sumarse a una causa para hacer felices a  los niños,
                   este año se celebrara una edición de cabalgata de Reyes Magos,
                    protagonizada por los padres  y gente solidaria que quiera ayudar a que el barrio junto en armonía,
                   se junte para un día tan especial como es el 6 de enero que se celebra la llegada de los Reyes Magos</p>
                   <br><br><br>
                   <center><h2>Cabalgata Inicial</h2></center> 
                   <br>
                   <div class=""><img src="imagenes/caramelos.jpeg" class="rounded mx-auto d-block"alt="Imagen" width="700"></div>
                   <br>
                  <center><h5>El barrio unido en una noche especial, haciendo feliz a montones de niños que se reunen para disfrutar de la cabalgata</h5></center> 
                   <br> <br> <br> <br>
               <center><h2>Discurso Final</h2></center> 
                <br>
                <div class=""><img src="imagenes/cabalgata2.jpg" class="rounded mx-auto d-block"alt="Imagen" width="700"></div>
                <br>
               <center><h5>Después de las cabalgatas, los reyes hablarán desde el balcón del ayuntamiento y se ofrecerán liderar un discurso hacia los niños para terminar de cerrar la noche</h5></center> 

                   </div>
            </div>
          </div>

</div>
  </form>
<br><br><br>
<div id="pieDocumento">
  Teléfono: 654-459-258 <br>
  Email de contacto:oscarlex@asociacionvec.com
</div>
  </body>
</html>
