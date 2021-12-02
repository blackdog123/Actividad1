
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  
<!--barra menu-->

<nav class="navbar navbar-dark" id="barra_menu" >
  <div class="container">
    <a class="navbar-brand" id="nav_tittle" href="/" >
      <img src="https://logos-world.net/wp-content/uploads/2020/11/Shopify-Emblem.png" id="shop_img" alt="shop" width="90" class="d-inline-block align-text-top">
  </a>

  <ul class="nav justify-content-center">
    <li class="nav-item">
      <a class="nav-link" aria-current="page" href="/" id="links_navs"></i> <i class="fa fa-home"></i></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/carrito" id="links_navs"><i class="fa fa-shopping-cart"></i></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#!" id="links_navs"><i class="fa fa-user"></i></a>
    </li>
  </ul>

    <button class="navbar-toggler" id="menu_button" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="material-icons" id="icon_menu">dehaze</span>
    </button>
  </div>

</nav>

<div class="collapse" id="navbarToggleExternalContent" >
  <div class="p-4" id="content_menu" >
    <span class="text-muted">${nombre_usuario} </span>
  </div>
</div>



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

/*estilos menu */

body {
  background-color: var(--white-color);
 
}

/*estilos barra menu*/
#barra_menu {
    height: 80px;
    top: 0;
    right: 0;
    left: 0;
    z-index: 1030;
    animation-name: menu;
    animation-duration: 1s;
    animation-iteration-count: 1;
    animation-timing-function: ease-in-out;
    background-color: var(--first-color);
}

@keyframes menu {
    0% {
        opacity: 0;
        transform: translateY(-80px);
    }

    100% {
        opacity: 1;
        transform: translateY(0);
    }
   
}

#navbarToggleExternalContent {
    margin-top: 80px;
    position: absolute;
    top: 0;
    right: 0;
    left: 0;
    z-index: 1030;
}

#content_menu {
  background-color: #fff;
 
}

#menu_button {
    background-color: transparent;
    border: none;
    box-shadow: none;
}

#icon_menu {
    color: var(--white-color);
    font-size: 25px;
    background-color: rgba(255, 255, 255, 0.1);
    border: none;
    box-shadow: none;
    padding: 12px 12px;
    border-radius: 50%;
    transition: all 0.3s;

    animation-name: icon;
    animation-duration: 1s;
    animation-iteration-count: 1;
    animation-timing-function: ease-in-out;

  
}

#icon_menu:hover {
  background-color: rgba(255, 255, 255, 0.3);
}


#icon_menu:active {
    transform: scale(98%);
    transition: all 0s;
}


@keyframes icon {
  0% {
        opacity: 0;
        transform: translateX(150px) rotate(360deg);
        
    }

    100% {
        opacity: 1;
        transform: translateX(0);
    }

  }

#shop_img {
    animation-name: shop;
    animation-duration: 1s;
    animation-iteration-count: 1;
    animation-timing-function: ease-in-out;
}  

@keyframes shop {
  0% {
        opacity: 0;
        transform: translateX(-150px);
    }

    100% {
        opacity: 1;
        transform: translateX(0);
    }

  }
  #links_navs {
    margin: 10px;
    font-size: 18px;
    color: var(--white-color);
    border-radius: 10px;
    background-color: rgba(255, 255, 255, 0.1);
    transition: all 0.2s;
  }

  #links_navs:hover {
    background-color: rgba(255, 255, 255, 0.3);
  }


::-webkit-scrollbar {
  width: 8px;
}

/* Track */
::-webkit-scrollbar-track {
  background: #fff; 
  border-radius: 10px;
}
 
/* Handle */
::-webkit-scrollbar-thumb {
  background: var(--first-color);

}

</style>
