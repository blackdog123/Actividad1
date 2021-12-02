<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop Nttdata</title>
</head>
<body>

  <div>
        <div class="container">
            <img src="https://logos-world.net/wp-content/uploads/2020/11/Shopify-Emblem.png" id="login_img" class="rounded mx-auto d-block" alt="...">

            <form action="/login" method="post" id="login_form"> 
              
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" name="username" id="floatingInput" placeholder="Email">
                    <label for="floatingInput username" id="float_labels">Nombre de Usuario</label>
                  </div>

                  <div class="form-floating mb-3">
                    <input type="password" name="password" class="form-control" id="floatingInput" placeholder="Contraseña">
                    <label for="floatingInput password" id="float_labels">Contraseña</label>
                  </div>
        
                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                <button type="submit" id="btn_login" class="btn btn-primary">Iniciar Sesión</button>
              </form>

              <div class="box_links">
                <div class="btn-group">
                  <p id="links_tittles">No tienes una cuenta ?</p>
                  <a href="/registro" id="links">Registrarme</a>
                </div>
          
                <div class="btn-group">
                  <p id="links_tittles">Olvidate tu contraseña ?</p>
                  <a href="#" id="links">Recuperar Contraseña</a>
                </div>
              </div>
              
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

  body {
    background-color: var(--white-color) ;
    }

  #login_img {
    margin-top: 50px;
    margin-bottom: 50px;
    width: 300px;
    height: 200px;

    animation-name: shoping;
    animation-duration: 2s;
    animation-iteration-count: infinite;
    animation-timing-function: ease-in-out;

   }
   
  @keyframes shoping {
    0% {
      transform: translateX(10px);
    }

    50% {
      transform: translateX(-10px);
    }

    100% {
      transform: translateX(10px);
    }
   } 

  #login_form {
    max-width: 500px;
    margin: auto;
    padding: 12px;
    margin-bottom: 150px;
  }

  #float_labels {
    color: rgba(0, 0, 0, 0.6);
  }

  #floatingInput {
      border: none;
      box-shadow: none;
      border-radius: 0%;
      background: rgba(255, 255, 255, 0.3);
      border-bottom: 2px solid rgba(0, 0, 0, 0.1);
      transition: all 0.2s;
      color: var(--first-color);

    }

  #floatingInput:hover {
      background-color: #fff;
      border-color: var(--third-color);
  }

  #floatingInput:focus {
    background-color: #fff;
    border-color: var(--third-color);
    box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.1);
  }

  #btn_login {
    width: 100%;
    padding: 12px;
    border-radius: 30px;
    border: none;
    box-shadow: none;
    background-color: var(--first-color);
    transition: all 0.3s;
  }

  #btn_login:hover {
    background-color: var(--third-color);
  }

  .box_links {
    max-width: 500px;
    margin: auto;
    padding: 12px;
     
  }


  #links {
    color: rgba(0, 0, 0, 0.5);
    margin-left: 5px;
    transition: all 0.2s;
    text-decoration: none;
  }

  #links:hover {
    color: var(--third-color);
  } 

  #links_tittles {
    color: var(--first-color);
  }


 

  </style>
    
</body>
</html>