<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="es">
<head>    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
   
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop Nttdata</title>
</head>
<body class="body">
  <!-- Button trigger modal -->
  <div class="container">
    <div class="row align-items-center" id="all_content">
        <!-- For Demo Purpose -->
        <div class="col-md-5 pr-lg-5 mb-5 mb-md-0">
            <img src="https://logos-world.net/wp-content/uploads/2020/11/Shopify-Emblem.png" alt="Shop Nttdata" class="img-fluid mb-3 d-none d-md-block">
            <h1 class="text-center" id="titulo">Crear una Cuenta</h1>
            <p class="mb-0 text-center" id="subTitulo">Registrate en Shop Nttdata</p>
        </div>

        <!-- Registeration Form -->
        <div class="col-md-7 col-lg-6 ml-auto" id="form_signup">
            <form:form method="post" id="formulario" action="/usuario/crearCuenta" modelAttribute="usuario">
                <div class="row">

                    <!--div class="input-group col-lg-6 mb-4">
                        <div class="input-group-prepend" >
                            <span class="input-group-text px-4 border-md" id="icons_box" >
                                <i class="fa fa-user "></i>
                            </span>
                        </div>
                        <input required id="username" type="text" name="username" placeholder="Username" class="form-control border-md">
                    </div-->

                    <!-- First Name -->
                    <div class="input-group col-lg-6 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text px-4 border-md" id="icons_box"  >
                                <i class="fa fa-user"></i>
                            </span>
                        </div>
                        <form:input id="input" type="text" path="nombre" placeholder="Nombre" class="form-control border-md"/>
                    </div>

                    <!-- Last Name -->
                    <div class="input-group col-lg-6 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text px-4 border-md " id="icons_box" >
                                <i class="fa fa-user"></i>
                            </span>
                        </div>
                        <form:input id="input" type="text" path="apellido"  placeholder="Apellido" class="form-control 0 border-md"/>
                    </div>

                    <!-- Email Address -->
                    <div class="input-group col-lg-6 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text px-4 border-md " id="icons_box" >
                                <i class="fa fa-envelope"></i>
                            </span>
                        </div>
                        <form:input  id="input" type="email" path="email" name="email" placeholder="Email" class="form-control  border-md"/>
                    </div>


                    <div class="input-group col-lg-6 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text px-4 border-md " id="icons_box" >
                                <i class="fa fa-envelope"></i>
                            </span>
                        </div>
                        <form:input  id="input" type="text" path="rut" placeholder="Rut" class="form-control  border-md"/>
                    </div>


					<div class="input-group col-lg-6 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text px-4 border-md " id="icons_box" >
                                <i class="fa fa-envelope"></i>
                            </span>
                        </div>
                        <form:input  id="input" type="text" path="codigoPostal" placeholder="Codigo Postal" class="form-control  border-md"/>
                    </div>

                    <div class="input-group col-lg-6 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text px-4 border-md " id="icons_box" >
                                <i class="fa fa-envelope"></i>
                            </span>
                        </div>
                        <form:input  id="input" type="text" path="limite" placeholder="Limite" class="form-control  border-md"/>
                    </div>

                  
                    <div class="input-group col-lg-6 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text px-4 border-md" id="icons_box" >
                                <i class="fa fa-lock"></i>
                            </span>
                        </div>
                        <form:input id="input" type="password"  path="password"  placeholder="Contraseña" class="form-control border-md"/>
                    </div>

                    
                    <div class="input-group col-lg-6 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text px-4 border-md " id="icons_box"  >
                                <i class="fa fa-lock" ></i>
                            </span>
                        </div>
                        <form:input id="input" type="password" path="passwordConfirmation"  placeholder="Confirmar Contraseña" class="form-control border-md"/>
                    </div>


                    <div class="form-group col-lg-12 mx-auto mb-0">
                        <button class="btn btn-primary btn-block py-2" type="submit" id="btn_registro">
                            <span>Crear Cuenta</span>
                        </button>
                    </div>

                   
                    <!-- Divider Text -->
                    <div class="form-group col-lg-12 mx-auto d-flex align-items-center my-4">
                        <div class="border-bottom w-100 ml-5"></div>
                        <span class="px-2 small font-weight-bold ">O</span>
                        <div class="border-bottom w-100 mr-5"></div>
                    </div>

               
                    <!-- Already Registered -->
                    <div class="text-center w-100">
                        <p>Ya estás registrado ? <a href="/login" class="ml-1" id="to_login">Iniciar Sesión</a></p>
                    </div>

                </div>
            </form:form>
        </div>
    </div>
</div>

<!--div class="container">
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
</div-->



<style>
	@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap');	

	/*estilos */

	:root {
		--first-color: #2A2438;
  		--second-color: #352F44;
  		--third-color: #8FC75C;
  		--white-color: #DBD8E3;
	}
	*{
		font-family: 'Montserrat', sans-serif;
	}


	body {
		background-color: var(--white-color);
	}


	#all_content {
		margin-top: 100px;
	}

	#titulo {
		color: var(--first-color);
	}

	#subTitulo {
		color: var(--first-color);
	}

	#input {
		box-shadow: none;
		background-color: #fff;
		padding: 10px;
	}

	#input:focus {
		border-color: var(--first-color);
	}

	#btn_registro {
		border-radius: 30px;
		height: 45px;
		border: none;
		background-color: var(--third-color);
        box-shadow: none;
	}

	#btn_registro:hover {
		background-color: #78B043;
	}

	#to_login {
		color: rgba(0, 0, 0, 0.5);
	}

	#to_login:hover {
		color: #78B043;
	}



</style>


</body>
</html>







	

	