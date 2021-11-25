<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <title>Ventas::</title>
</head>

<body>
	<nav class="navbar navbar-light  fixed-top" id="barra_menu">
		<div class="container-fluid">
		  <a class="navbar-brand" href="#" id="nav_tittle">App</a>
		  <button class="navbar-toggler" id="menu_button" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
			<span class="navbar-toggler-icon"></span>
		  </button>

		  <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel" style="background-color: var(--first-color); color: var(--white-color);">

			<div class="offcanvas-header">
			  <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Menu</h5>
			  <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
			</div>

			<div class="offcanvas-body">
			  <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
				<li class="nav-item">
				  <a class="nav-link " id="links" href="/usuario">Usuarios</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link" id="links" href="/producto">Productos</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="links" href="/venta">Ventas</a>
				  </li>
			  </ul>
			</div>
		  </div>
		  
		</div>
	</nav>

	<div class="container" id="box_container">

		<h2>Crear Venta</h2>

		<form:form method="post" action="/venta/login" modelAttribute="venta">
			<input type="hidden" name="_method" value="put">
			<form:label path="nombreComprador" class="col-sm-2 col-form-label">Nombre Comprador:</form:label>
			<form:input type="text" path="nombreComprador" class="form-control"/>
			<br>
			<form:label path="fecha" class="col-sm-2 col-form-label">Fecha Compra:</form:label>
			<form:input type="date" path="fecha" class="form-control"/>
			<br>
			<form:label path="cantidad" class="col-sm-2 col-form-label">Cantidad:</form:label>
			<form:input type="text" path="cantidad" class="form-control"/>
			<br>		
			<a href="/venta" class="btn btn-success" role="button" data-bs-toggle="button">Limpiar</a>
			<input type="submit" class="btn btn-primary" value="Submit">

		</form:form>
	
		<br>
		<hr>
		<h2>Tabla Ventas</h2>
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Nombre Comprador</th>
		      <th scope="col">Fecha Compra</th>
		      <th scope="col">Cantidad</th>
		      <th scope="col-2">Acciones</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach items="${listaVentas}" var="venta" >
			    <tr>
			      <th scope="row">${venta.getId()}</th>
			      <td>${venta.getNombreComprador()}</td>
			      <td>${venta.getFecha()}</td>
			      <td>${venta.getCantidad()}</td>
			      <td>
			      <a href="/venta/${venta.getId()}/editar" class="btn btn-primary" role="button" data-bs-toggle="button">Editar</a>
			      
			      </td>
			      <td>
				      <form action="/venta/eliminar" method="get">
				      	<input type="hidden" name="id" value="${venta.getId()}">
				      	<input class="btn btn-danger" type="submit" value="Eliminar">
				      </form>
			      </td>
			    </tr>
		    </c:forEach>
		  </tbody>
		</table>
	</div>


	<style>
		@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400&display=swap');	

		/*estilos */

		:root {
  		--first-color: #2A2438;
  		--second-color: #352F44;
		--third-color: #5C5470;
  		--white-color: #DBD8E3;


		}

	
		*{
			font-family: 'Montserrat', sans-serif;
		}

		/*estilos menu */

		body {
			background-color: var(--first-color);
			color: var(--white-color);
		}

		#box_container {
			margin-top: 100px;
		}

		#nav_tittle {
			color: var(--white-color);
		}

		#menu_button {
			background-color: var(--white-color);
			border: none;
			box-shadow: none;
			width: 48px;
			height: 48px;
			border-radius: 50%;
			font-size: 15px;
		
		}
	
		#barra_menu {
			border-bottom: 1px solid rgba(255, 255, 255, 0.1);
			height: 80px;
			background-color: var(--first-color);
		
		}

		#formulario {
			max-width: 750px;
			margin: auto;
			padding: 20px 20px;
			border-radius: 20px;
		}


		#input {
			padding: 10px;
			box-shadow: none;
			background-color: var(--white-color);
			outline-style: none;
			border: 1px solid transparent;
			border-radius: 8px;
			transition: all 0.3s;
		}

		#input:hover {
			background-color: transparent;
			color: var(--white-color);
			border-color: var(--white-color);
			box-shadow: 5px 5px 10px rgb(255, 255, 255, 0.1);
		}

		#input:focus {
			background-color: transparent;
			color: var(--white-color);
			border-color: var(--white-color);
			box-shadow: 5px 5px 10px rgb(255, 255, 255, 0.1);
		}

		#send_button {
			
			padding: 12px;
			box-shadow: none;
			background-color: #FE2E64;
			outline: none;
			border: none;
		}

		#clean_button {
			padding: 12px;
			box-shadow: none;
			background-color: #04B45F;
			outline: none;
			border: none;
		}

		#links {
			color: var(--white-color);
			margin-bottom: 10px;
			text-align: center;
			padding: 20px;
			border-radius: 8px;
			background-color: rgb(255, 255, 255, 0.1);
			transition: all 0.3s;
		}

		#links:hover {
			background-color: rgb(255, 255, 255, 0.3);
		}

		.table {
			margin-top: 20px;
			color: var(--white-color);
		}
	</style>

</body>

</html>