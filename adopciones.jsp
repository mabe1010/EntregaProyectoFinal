<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    <head>
        <title>Mushu Pet - PetShop, Veterinaria y Adopciones</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="En Mushu Pet puedes hacer tu pedido de forma online, lo llevamos a tu casa o puedes retirarlo en una de nuestras sucursales. Tambien tenemos turnos medicos para consulta veterinaria de tu perro y/o gato. Promociones Bancarias. Atencion Personalizada. Los mejores productos de mercado los encontraras aqui">
        <meta name="kaywords" content="Mascotas, Veterinaria, ropa para mascotas, perros, gatos, veterinatia, turno veterinaria, alimento para perros y gatos">
        <meta name="author" content="Maria Begonia Vasquez">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
        <link rel="shortcut icon" href="imagenes\favicon.png">
        
        <!-- Links para CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Public+Sans&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/glider-js@1.7.3/glider.min.css">
        <link rel="stylesheet" href="css\indexcss.css">
        <link rel="stylesheet" href="css\adopcioncss.css">
        <link rel="stylesheet" href="css\sweetalert2.min.css">
</head>
    <body id="body">
         <!-- menu encabezado-->
         <nav class="navbar navbar-light fixed-top navbar-expand-lg"  style="background-color: #FFC300;">
  <a class="navbar-brand" href="#"> <img src="imagenes\logomp.png" width="120" height="60" alt=""></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">Inicio </a>
      </li>
      <li class="nav-item active dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Servicios
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="veterinaria.jsp">Veterinaria</a>
          <a class="dropdown-item" href="adopciones.jsp">Adopciones <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Alimentos y Accesorios
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="productoperro.jsp">Para perros</a>
          <a class="dropdown-item" href="productogato.jsp">Para gatos</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Sucursal.jsp">Sucursales</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Mi cuenta Pet
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="cuentapet.jsp">Registrarme</a>
          <a class="dropdown-item" href="login.jsp">Iniciar Sesion</a>
      </li> 
        <li class="nav-item dropdown">
            <i class="fas fa-cart-arrow-down fa-2x" style="color: dodgerblue" class="nav-link dropdown-toggle img-fluid" height="70px"
            width="70px" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></i>
                <div id="carrito" class="dropdown-menu" aria-labelledby="navbarCollapse">
                    <table id="lista-carrito" class="table">
                        <thead>
                            <tr>
                                <th>Producto</th>
                                    <th>Nombre</th>
                                    <th>Precio</th>
                                    <th></th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                    <a href="#" id="vaciar-carrito" class="btn btn-primary btn-block">Vaciar Carrito</a>
                    <a href="#" id="procesar-pedido" class="btn btn-danger btn-block">Procesar Compra</a>
                </div>
        </li> 
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Buscar producto" aria-label="Search">
      <button class="btn btn btn-info my-2 my-sm-0" type="submit">Buscar</button>
    </form>
  </div>
</nav>
         <br>
         <br>
         <br>
        <!--Galeria de rescate -->
        <br>
        <div class="text">
             <h2>Adopcion responsable de mascotas</h2>
             <h4>Tiende una mano a una patita</h4>
             <i class="fas fa-paw"></i>
        </div>
        <p>Adoptar es un gran paso. Por eso en Mushu Pet queremos ayudarte para que ?sta sea una de las mejores experiencias
            en tu vida y la de tu pr?ximo amigo de cuatro patas.</p>
        <p>Ante todo, debes tener en cuenta la gran responsabilidad que representa tener un compa?ero cuatro patas dentro de tu vida</p>
        <p>Los patitas los puedes conocer todos los sabados en Parque Centenario, donde junto con el Refugio "Firulai Adopta" nos encontramos con todos los patitas dando mucho amor desde las 14 a 16hrs</p>
        <p>Requisitos para adoptar:</p>
        <ul>
            <li>Ser mayor de 21 a?os (llevar DNI)</li>
            <li>Acudir la persona que va adoptar</li>
            <li>El grupo familiar o de residencia debe estar en conocimiento y acuerdo</li>
            <li>Llevar un servicio a nombre del adoptante</li>
        </ul>
        <p>Una vez que nos indiques tu pr?ximo amigo de cuatros patas a adoptar, evaluaremos si tu perfil coincide con el de la mascota y te detallamos los requisitos.</p>
        <h4 class="text"> Te presentamos algunos de nuestros patitas</h4>
            <br>
       <div class="carousel">
            <div class="carousel__contenedor">
                <button aria-label="Anterior" class="carousel__anterior">
                    <i class="fas fa-chevron-left"></i>
                </button>
                
                <div class="carousel__lista">
                    <div class="carousel__elemento">
                        <img src="imagenes\adopt1.jpg" alt="adopcion mascotas">
                        <p class="precio">LALI 1 a?o</p>
                    </div>
                    <div class="carousel__elemento">
                        <img src="imagenes\adopt2.jpg" alt="adopcion mascotas">
                        <p class="precio">STICH 6 meses</p>
                    </div>
                    <div class="carousel__elemento">
                        <img src="imagenes\adopt3.jpg" alt="adopcion mascotas">
                        <p class="precio">STELA 4 meses</p>
                    </div>
                    <div class="carousel__elemento">
                        <img src="imagenes\adopt5.jpg" alt="adopcion mascotas">
                        <p class="precio">MANCHIS 5 meses</p>
                    </div>
                    <div class="carousel__elemento">
                        <img src="imagenes\adopt6.jpg" alt="adopcion mascotas">
                        <p class="precio">PAMPI 2 a?os</p>
                    </div>
                    <div class="carousel__elemento">
                        <img src="imagenes\adopt7.jpg" alt="adopcion mascotas">
                        <p class="precio">MANTI 3 meses</p>
                    </div>
                    <div class="carousel__elemento">
                        <img src="imagenes\adopt4.jpg" alt="adopcion mascotas">
                        <p class="precio">BARBIE 1 a?o</p>
                    </div>
                    <div class="carousel__elemento">
                        <img src="imagenes\adopt8.jpg" alt="adopcion mascotas">
                        <p class="precio">SALEM 3 a?os</p>
                    </div>
                    <div class="carousel__elemento">
                        <img src="imagenes\adopt9.jpg" alt="adopcion mascotas">
                        <p class="precio">PANCHITA 2 a?os</p>
                    </div>
                </div>
                
                <button aria-label="Siguiente" class="carousel__siguiente">
                    <i class="fas fa-chevron-right"></i>
                </button>
            </div>
            
            <div role="tablist" class="carousel__indicadores"></div>
        </div>
            <br>
            <h6>Para mayor informaci?n pueden escribir a adoptar@mushupet.com.ar </h6>
            <br>

        <!-- pie de pagina -->
  <footer>
  <img src="imagenes\logomp.png" width="120" height="60" alt="mushupet">
 
  <p>Consultas: Lunes a Domingo de 9 a 18hs. Feriados de 9 a 16hs.</p> 
  <a href="#">ventaonline@mushupet.com.ar</a>
  <div class="cace">
      <img src="imagenes\cace.svg" alt="comercio argentina" height="80" width="80">
  </div>
</footer>
        <!-- scripts -->
        <script src="https://cdn.jsdelivr.net/npm/glider-js@1.7.3/glider.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/63bcaf273c.js" crossorigin="anonymous"></script>
        <script src="js\home.js"></script>
        <script src="js\sweetalert2.min.js"></script>
        <script src="js\carrito.js"></script>
        <script src="js\pedido.js"></script>
    </body>
</html>
