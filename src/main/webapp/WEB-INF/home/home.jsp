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
 
	<div class="container" id="box_carrusel">


    <!--Carrusel Productos-->

    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" id="btn_indicators" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" id="btn_indicators" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" id="btn_indicators" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="https://minisitios.ripley.cl/minisitios/home/2021/evento/black-friday/slider/webp/sl-bf-navidad-computacion-20211126-desk.webp" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="https://minisitios.ripley.cl/minisitios/home/2021/evento/black-friday/slider/webp/sl-bf-navidad-lb-20211126-desk.webp" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="https://minisitios.ripley.cl/minisitios/home/2021/evento/black-friday/slider/webp/sl-bf-navidad-belleza-20211125b-desk.webp" class="d-block w-100" alt="...">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" id="btn_carrusel_prev" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" id="btn_carrusel_next" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
	</div>

  <p>hola ${nombre_usuario}</p>

  <div class="container" id="box_modal">

  <!-- Button trigger modal -->
  <button type="button" class="btn btn-primary" id="btn_search" data-bs-toggle="modal" data-bs-target="#exampleModal">
    <i class="fa fa-search" ></i>
  </button>

  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Buscar Producto</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">




          <div class="modal-footer">
            <button type="button" class="btn btn-primary">Buscar</button>
          </div>
        </div>
     
      </div>
    </div>
  </div>

  </div>

  <div class="container" id="box_cards">
  
   
    <div class="row row-cols-1 row-cols-md-3 g-4"> 
      <c:forEach items="${listaProductosHome}" var="producto">
      <div class="col"> 
        <div class="card">
          
          <form:form method="post" action="/carrito/agregarProductoCarrito" modelAttribute="producto">


            <input value="${producto.getNombre()}" name="nombre" type="hidden"/>
            <input value="${producto.getDescripcion()}" name="descripcion" type="hidden" />
            <input value="${producto.getPrecio()}" name="precio" type="hidden"/>

            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/480px-No_image_available.svg.png" id="image_producto" class="card-img-top" alt="img_producto">
            <div class="card-body">
              <h5 class="card-title">${producto.getMarca()}</h5>     
              <p class="card-text">${producto.getDescripcion()}</p>
              <p class="card-text" id="precio">$${producto.getPrecio()}</p>
              
            </div> 
  
            <div class="container">
  
              <button type="submit" class="btn btn-primary" id="btn_addToCard">Agregar al carrito</button>
    
            </div>

          </form:form>
      
     

        </div>    
      </div>
    </c:forEach>
    </div>

  </div>
</body>




<style>
  #box_carrusel {
    margin-bottom: 50px;
  }

  #btn_carrusel_prev {
    width: 55px;
    height: 55px;
    left: 3%;
    margin: auto;
    border-radius: 50%;
    border: 3px solid rgba(255, 255, 255, 0.5);
    background-color: rgba(0, 0, 0, 0.5);
  }

  #btn_carrusel_next {
    width: 55px;
    height: 55px;
    right: 3%;
    margin: auto;
    border-radius: 50%;
    border: 3px solid rgba(255, 255, 255, 0.5);
    background-color: rgba(0, 0, 0, 0.5);

  }

  #btn_indicators {
    border-radius: 50%;
    width: 12px;
    height: 12px;
    margin: 10px;
    border: 1px solid #fff;
    background-color: var(--first-color);
  }

  #box_cards {
    margin-bottom: 50px;
  }

  .card {
    background-color: transparent;
    padding: 8px;
    border-radius: 10px;
    background-color: #fff;
    transition: all 0.2s;
  }

  .card:hover {
    transform: scale(102%);
    box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.1);
  }


  #image_producto {
    margin: auto;
    display: block;
    width: 200px;
    height: 200px;
    margin-top: 8px;
    margin-bottom: 8px;
  }

  #precio {
    color: red;
  }

  #btn_addToCard {
    margin: auto;
    display: block;
    width: 60%;
    padding: 12px;
    margin-bottom: 10px;
    border-radius: 30px;
    background-color: var(--first-color);
    border: none;
    box-shadow: none;
    transition: all 0.2s;
  }

  #btn_addToCard:hover {
    background-color: var(--third-color);
  }
  

  #btn_search {
    position: fixed;
    width: 50px;
    height: 50px;
    background-color: var(--first-color);
    border: none;
    box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.2);
    bottom: 20px;
    right: 70px;
    z-index: 99;
    border-radius: 50%;
    transition: all 0.2s;
    color: var(--white-color);
  }

  #btn_search:hover {
    background-color: var(--third-color);
    transform: scale(105%);
  }


</style>

</html>