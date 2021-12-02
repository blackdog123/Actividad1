<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Usuario::</title>
</head>

<body>
	
	<div class="container">
	<h1>Productos</h1>
			<hr>
	<h2>Crear Producto</h2>
		<form:form method="post" action="/producto/agregarProducto" modelAttribute="producto">
			<input type="hidden" name="_method" value="put">
			<form:label path="nombre" class="col-sm-2 col-form-label">Nombre:</form:label>
			<form:input type="text" path="nombre" class="form-control"/>
			<br>
			<form:label path="marca" class="col-sm-2 col-form-label">Marca:</form:label>
			<form:input type="text" path="marca" class="form-control"/>
			<br>
			<form:label path="tipo" class="col-sm-2 col-form-label">Tipo:</form:label>
			<form:input type="text" path="tipo" class="form-control"/>
			<br>
			<form:label path="descripcion" class="col-sm-2 col-form-label">Descripcion:</form:label>
			<form:input type="text" path="descripcion" class="form-control"/>
			<br>
			<form:label path="precio" class="col-sm-2 col-form-label">Precio:</form:label>
			<form:input type="number" path="precio" class="form-control"/>
			<br>			
			<a href="/usuario" class="btn btn-success" role="button" data-bs-toggle="button">Limpiar</a>
			<input type="submit" class="btn btn-primary" value="Submit">

		</form:form>	
		
		<br>
		<hr>
		<h2>Tabla Productos</h2>
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Nombre</th>
		      <th scope="col">Descripción</th>
		      <th scope="col">Precio</th>
		      <th scope="col-2">Acciones</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach items="${listaProductos}" var="producto" >
			    <tr>
			      <th scope="row">${producto.getId()}</th>
			      <td>${producto.getNombre()}</td>
			      <td>${producto.getDescripcion()}</td>
			      <td>${producto.getPrecio()}</td>
			      <td>
			      <a href="/producto/${producto.getId()}/editar" class="btn btn-primary" role="button" data-bs-toggle="button">Editar</a>
			      
			      </td>
			      <td>
				      <form action="/producto/eliminar" method="get">
				      	<input type="hidden" name="id" value="${producto.getId()}">
				      	<input class="btn btn-danger" type="submit" value="Eliminar">
				      </form>
			      </td>
			    </tr>
		    </c:forEach>
		  </tbody>
		</table>
	</div>
</body>

</html>