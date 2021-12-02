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
    <title>Shop Nttdata</title>
</head>
<body>

    <!--Navbar-->
    <%@ include file="../templates/nav.jsp" %>

    <div class="container" id="box_table">

        <table  class="table table-striped" id="table">
            <thead id="thead">
              <tr>
                <th scope="col">Producto</th>
                <th scope="col">Descripción</th>
                <th scope="col">Precio</th>
                <th scope="col-2"></th>
              </tr>
            </thead>
            <tbody >
                <c:forEach items="${listaProductosCarrito}" var="carrito" >
                  <tr>
                    <td>${carrito.getNombre()}</td>
                    <td>${carrito.getDescripcion()}</td>
                    <td >${carrito.getPrecio()} <span>
   
                    </td>              
                    <!--td>
                    <a href="/carrito/${carrito.getId()}/editar" class="btn btn-primary" role="button" data-bs-toggle="button">Editar</a>
                    
                    </td-->

                    <div class="container">
                        <label for="">Total: * por hacer</label>
                    </div>

                    <td>
                        <form action="/carrito/eliminar" method="get" class="input-group mb-3">
                            <input type="hidden" name="id" value="${carrito.getId()}">
                            <input class="btn btn-danger" type="submit" value="Eliminar" id="btn_eliminar">
                        </form>
                    </td>
                  </tr>
              </c:forEach>
            </tbody>
            
          </table>

         


    </div>




    <style>
        #box_table {
            margin-top: 50px;
        }

        #table {
           box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.1);
            background-color: #fff;     
        }

        #thead {
            color: var(--white-color);
            background-color: var(--second-color);
        }

        #btn_eliminar {
            border-radius: 30px;  
            box-shadow: none;
            transition: all 0.2s; 
        }

        #btn_eliminar:hover {
            transform: scale(105%);
        }
        
    </style>
    

</body>
</html>



