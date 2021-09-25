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
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Inicio <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Servicios
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="veterinaria.jsp">Veterinaria</a>
          <a class="dropdown-item" href="adopciones.jsp">Adopciones</a>
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
          <a class="dropdown-item" href="login.jsp">Iniciar sesion</a>
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
                    <a href="procesocompra.jsp" id="procesar-pedido" class="btn btn-danger btn-block">Procesar Compra</a>
                </div>
        </li>          
    </ul>    
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
        <!--imagen de portada -->
        <hr>
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
         <div class="carousel-inner">
             <div class="carousel-item active">
                 <img src="imagenes\1.jpg" class="d-block w-100" height="380" alt="ofertas pet shop">
             </div>
             <div class="carousel-item">
                 <img src="imagenes\2.jpg" class="d-block w-100" height="380" alt="vacuna mascotas">
             </div>
             <div class="carousel-item">
                 <img src="imagenes\3.jpg" class="d-block w-100" height="380" alt="accesorios">
             </div>
         </div>
         <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
             <span class="carousel-control-prev-icon" aria-hidden="true"></span>
             <span class="sr-only">Previous</span>
         </a>
         <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
             <span class="carousel-control-next-icon" aria-hidden="true"></span>
             <span class="sr-only">Next</span>
         </a>
        </div>
        <hr>
        <!-- Beneficio por ser usuario -->
        <div class="card text-center" >
             <div class="card-header text-white bg-info mb-3">
                 Se parte de Mi cuenta pet y accede a beneficios exclusivos: 
             </div>
            <div class="card-body">
                 <h5 class="card-title">Accede a 10% de descuento en tu pr�xima compra </h5>
                 <p class="card-text">Registrate y recibe todas las promociones de Mushu Pet.</p>
                 <a href="cuentapet.jsp" class="btn btn-info">Quiero registrarme</a>
            </div>
            <div class="card-footer text-white bg-info mb-3">
                 V�lido para compras online
            </div>
        </div>
        <!-- informacion  productos-->
        <br>
        <h2 class="info"> NUESTROS FAVORITOS </h2>
        <br>
        <div class="carousel">
            <div class="carousel__contenedor">
                <button aria-label="Anterior" class="carousel__anterior">
                    <i class="fas fa-chevron-left"></i>
                </button>
                
                <div class="carousel__lista">
                    <div class="carousel__elemento">
                        <img src="imagenes\promo1.jpg" alt="promo1">
                        <p class="precio">Purina Dogui  2.7kg </p>
                        <p class="precio"> <span class="desc">$ 1000</span>  $ 800 </p>
                    </div>
                    <div class="carousel__elemento">
                        <img src="imagenes\promo2.jpg" alt="promo2">
                        <p class="precio">Pet Class Alimento Humedo </p>
                        <p class="precio"> $ 200 </p>
                    </div>
                    <div class="carousel__elemento">
                        <img src="imagenes\promo3.jpg" alt="promo3">
                        <p class="precio">Royal Canin Maxi Adulto 20kg </p>
                        <p class="precio"> <span class="desc">$ 7690</span>  $ 6970 </p>
                    </div>
                    <div class="carousel__elemento">
                        <img src="imagenes\promo4.jpg" alt="promo4">
                        <p class="precio">Purina Cat Chow 15kg </p>
                        <p class="precio"> $ 2692 </p>
                    </div>
                    <div class="carousel__elemento">
                        <img src="imagenes\promo5.jpg" alt="promo5">
                        <p class="precio"> Meow Mix 3kg </p>
                        <p class="precio"> $ 1830 </p>
                    </div>
                    <div class="carousel__elemento">
                        <img src="imagenes\promo6.jpg" alt="promo6">
                        <p class="precio">Royal Canin Mini Puppy 7.5kg </p>
                        <p class="precio"> $ 6925 </p>
                    </div>
                    <div class="carousel__elemento">
                        <img src="imagenes\promo7.jpg" alt="promo7">
                        <p class="precio">Royal Canin Kitten Seco 1kg </p>
                        <p class="precio"> $ 600 </p>
                    </div>
                    <div class="carousel__elemento">
                        <img src="imagenes\promo8.jpg" alt="promo8">
                        <p class="precio">Bandeja sanitaria perros </p>
                        <p class="precio"> <span class="desc">$ 4320</span>  $ 3916 </p>
                    </div>
                    <div class="carousel__elemento">
                        <img src="imagenes\promo10.jpg" alt="promo10">
                        <p class="precio">Cuna ajustable </p>
                        <p class="precio"> <span class="desc">$ 2500</span>  $ 1100 </p>
                    </div>
                </div>
                
                <button aria-label="Siguiente" class="carousel__siguiente">
                    <i class="fas fa-chevron-right"></i>
                </button>
            </div>
            
            <div role="tablist" class="carousel__indicadores"></div>
        </div>

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
