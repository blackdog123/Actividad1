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
    <title>Usuario::</title>
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

		<form:form method="post" id="formulario" action="/usuario/login" modelAttribute="usuario">

			<div class="mb-3">
				<h2>Crear Usuario</h2>
			</div>

			<div class="mb-3">
				<input type="hidden" name="_method" value="put">
				<form:label path="nombre" class="col-sm-2 col-form-label">Nombre</form:label>
				<form:input type="text" id="input" path="nombre" class="form-control" placeholder='Escribe aqui tu nombre'/>
			</div>

			<div class="mb-3">
				<form:label path="apellido" class="col-sm-2 col-form-label">Apellido</form:label>
				<form:input type="text" id="input" path="apellido" class="form-control" placeholder='Escribe aqui tu apellido'/>
			</div>

			<div class="mb-3">
				<form:label path="limite" class="col-sm-2 col-form-label">Limite</form:label>
				<form:input type="number" id="input" path="limite" class="form-control" placeholder='0'/>
			</div>

			<div class="mb-3">
				<form:label path="codigoPostal" class="col-sm-2 col-form-label">Código Postal</form:label>
				<form:input type="number" id="input" path="codigoPostal" class="form-control" placeholder='0'/>
			</div>


			<div class="btn-group" style="width: 100%; margin-top: 20px">
				<a href="/usuario" id="clean_button" class="btn btn-success" role="button" data-bs-toggle="button">Limpiar</a>
				<input type="submit" id='send_button' class="btn btn-primary" value="Enviar">
			</div>


		</form:form>
	
		<br>
		<hr>
		<h2>Tabla Usuarios</h2>

		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Nombre</th>
		      <th scope="col">Apellido</th>
		      <th scope="col">Limite</th>
		      <th scope="col">Código Postal</th>
		      <th scope="col-2">Acciones</th>
		    </tr>
		  </thead>

		  <tbody>
		  	<c:forEach items="${listaUsuarios}" var="usuario" >
			    <tr>
			      <th scope="row">${usuario.getId()}</th>
			      <td>${usuario.getNombre()}</td>
			      <td>${usuario.getApellido()}</td>
			      <td>${usuario.getLimite()}</td>
			      <td>${usuario.getCodigoPostal()}</td>
			      <td>


			      <a href="/usuario/${usuario.getId()}/editar" class="btn btn-primary" type="button">Editar</a>
			      
			      </td>

			      <td>
				      <form action="/usuario/eliminar" method="get">
				      	<input type="hidden" name="id" value="${usuario.getId()}">
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