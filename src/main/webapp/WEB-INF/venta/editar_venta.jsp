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
    <title>venta::</title>
</head>

<body>
	<div class="container">
		<form:form method="post" action="/venta/update/${venta.id}" modelAttribute="venta">
			<input type="hidden" name="_method" value="put">
			<form:label path="nombreComprador" class="col-sm-2 col-form-label">Nombre Comprador:</form:label>
			<form:input type="text" path="nombreComprador" class="form-control"/>
			<br>
			<form:label path="fecha" class="col-sm-2 col-form-label">Fecha Compra:</form:label>
			<form:input type="date" path="fecha" class="form-control"/>
			<br>
			<form:label path="cantidad" class="col-sm-2 col-form-label">Cantidad:</form:label>
			<form:input type="number" path="cantidad" class="form-control"/>
			<br>
			<a href="/venta" class="btn btn-success" role="button" data-bs-toggle="button">Volver</a>
			<input class="btn btn-warning" type="submit" value="Editar">

		</form:form>
	</div>
</body>

</html>