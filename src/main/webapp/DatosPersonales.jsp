<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Reyes"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Datos personales</title>

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
            <a href="vecinos.jsp" class="nav-link active ">Asociacion de vecinos</a>
          </li>
          <li class="nav-item">
            <a href="reyes.jsp" class="nav-link active ">Reyes Magos</a>
          </li>
          <li class="nav-item">
            <a href="asistir.jsp" class="nav-link active ">Donde asistir</a>
          </li>
          <li class="nav-item">
            <a href="formulario.jsp" class="nav-link active ">Apuntate!!</a>
          </li>

          </ul>
          <ul class="nav navbar-nav navbar-right" >
            <li ><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span><button type="button" class="btn btn-outline-light">Login</button></a></li>
          </ul>
        </div>
    </nav>
    <br>
    <br>
    <br>
    <br>
    <div class="text-center" id="color"><h2 style="color:white;">Datos Personales</h2></div>

    <form class="form-group" action="afterregistrar.jsp" method="get" id="form1">
      <div class="container col-md-5 p-5 my-5 border bg-light" id="rey">
        <div class="input-group mb-4">
          <span class="input-group-text">Dni</span>
          <input type="text" class="form-control" required pattern="[a-zA-Z 0-9]{5,20}">
        </div>
        <div class="input-group mb-3">
          <span class="input-group-text">Apellido</span>
          <input type="text" class="form-control" required pattern="[a-zA-Z]{5,10}">
          </div>
          <div class="input-group mb-3">
            <span class="input-group-text">Nombre</span>
            <input type="text" class="form-control" required pattern="[a-zA-Z]{3,10}">
            </div>
            <div class="input-group mb-3">
              <span class="input-group-text">Rey deseado</span>
              <input type="text" class="form-control"required pattern="[a-zA-Z]{5,10}">
              </div>
              <div class="text-center">
                <button type="Submit" class="btn btn-dark">Aceptar</button>
              </div>

                </div>

</form>
    <div id="pieDocumento">
      Teléfono: 654-459-258 <br>
      Email de contacto:oscarlex@asociacionvec.com
    </div>
  </body>
</html>
