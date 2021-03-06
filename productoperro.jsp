<%-- 
    Document   : productoperro
    Created on : Jul 25, 2021, 3:38:21 PM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">Inicio</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Servicios
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="veterinaria.jsp">Veterinaria</a>
          <a class="dropdown-item" href="adopciones.jsp">Adopciones</a>
      </li>
      <li class="nav-item active dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Alimentos y Accesorios
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="productoperro.jsp">Para perros<span class="sr-only">(current)</span></a>
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
                <div id="carrito" style="width:400px; height:300px; overflow: scroll;" class="dropdown-menu" aria-labelledby="navbarCollapse">
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
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Buscar producto" aria-label="Search">
      <button class="btn btn btn-info my-2 my-sm-0" type="submit">Buscar</button>
    </form>
  </div>
</nav>
         <br>
        <!--Productos -->
     <main>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 my-4 mx-auto text-center">
            <h2 class="info">Lista de Accesorios y Productos para Perros</h2>
            Los mejores productos del mercado en Mushu Pet Shop. <br>
            ??Env??o gratis en CABA!
        </div>
        <div class="container" id="lista-productos">
            <div class="card-deck mb-3 text-center">

                <div class="card mb-4 shadow-sm" >
                    <div class="card-header bg-warning">
                        <h6 class="my-0 font-weight-bold"> Alimento Old Prince Novel Cordero Adulto 15KG</h6>
                    </div>
                    <div class="card-body">
                        <img src="imagenes\productoperro_1.jpg" class="card-img-top" alt="Alimento Old Prince Novel Cordero Adulto 15K">
                        <br>
                        <br>
                        <h6 class="card-title pricing-card-title precio">$ <span class="">3510</span></h6>

                        <ul class="list-unstyled mt-3 mb-4">
                            <li></li>
                            <li>Marca: Old Prince</li>
                            <li>Tamano Mascota: Mediano, Grande</li>
                            <li>Edad: Adulto</li
                            <li>Cantidad: 15KG</li>
                        </ul>
                        <a href="" class="btn btn-block btn-primary agregar-carrito" data-id="1">Comprar</a>
                    </div>
                </div>

                <div class="card mb-4 shadow-sm">
                    <div class="card-header bg-warning">
                        <h6 class="my-0 font-weight-bold"> Alimento Old Prince Receta Original Perro Adulto 20KG</h6>
                    </div>
                    <div class="card-body">
                        <img src="imagenes\productoperro_2.jpg" class="card-img-top">
                        <h6 class="card-title pricing-card-title precio">$ <span class="">3990</span></h6>

                        <ul class="list-unstyled mt-3 mb-4">
                            <li></li>
                            <li>Marca: Old Prince Premium</li>
                            <li>Tamano Mascota: Mediano, Grande</li>
                            <li>Edad: Adulto</li
                            <li>Cantidad: 20KG</li>
                        </ul>
                        <a href="" class="btn btn-block btn-primary agregar-carrito" data-id="2">Comprar</a>
                    </div>
                </div>

                <div class="card mb-4 shadow-sm">
                    <div class="card-header bg-warning">
                        <h6 class="my-0 font-weight-bold"> Maintenance Criadores Adulto Sabor Carne y Pollo 22KG</h6>
                    </div>
                    <div class="card-body">
                        <img src="imagenes\productoperro_3.jpg" class="card-img-top">
                        <br>
                        <br>
                        <h6 class="card-title pricing-card-title precio">$ <span class="">2596</span></h6>

                        <ul class="list-unstyled mt-3 mb-4">
                            <li></li>
                            <li>Marca: Maintenance Criadores</li>
                            <li>Tamano Mascota: Mediano</li>
                            <li>Edad: Adulto</li
                            <li>Cantidad: 22KG</li>
                        </ul>
                        <a href="" class="btn btn-block btn-primary agregar-carrito" data-id="3">Comprar</a>
                    </div>
                </div>

            </div>

            <div class="card-deck mb-3 text-center">
                
                <div class="card mb-4 shadow-sm">
                    <div class="card-header bg-warning">
                        <h6 class="my-0 font-weight-bold"> Natural Meat Perro Adulto Sabor Carne y Frutas 15KG</h6>
                    </div>
                    <div class="card-body">
                        <img src="imagenes\productoperro_4.jpg" class="card-img-top">
                        <h6 class="card-title pricing-card-title precio">$ <span class="">2300</span></h6>

                        <ul class="list-unstyled mt-3 mb-4">
                            <li></li>
                            <li>Marca: Natural Meat</li>
                            <li>Tamano Mascota: Grande</li>
                            <li>Edad: Adulto</li
                            <li>Cantidad: 15KG</li>
                        </ul>
                        <a href="" class="btn btn-block btn-primary agregar-carrito" data-id="4">Comprar</a>
                    </div>
                </div>

                <div class="card mb-4 shadow-sm">
                    <div class="card-header bg-warning">
                        <h6 class="my-0 font-weight-bold"> Juguete: Pelota para perros Medianos y Grandes en forma de baseball</h6>
                    </div>
                    <div class="card-body">
                        <img src="imagenes\productoperro_5.jpg" class="card-img-top">
                        <h6 class="card-title pricing-card-title precio">$ <span class="">650</span></h6>

                        <ul class="list-unstyled mt-3 mb-4">
                            <li></li>
                            <li>Marca: Lazy Dog</li>
                            <li>Tamano Mascota: Mediano, Grande</li>
                            <li>Edad: Cachorro, Adulto</li
                            <li>Tipo Producto: Pelota</li>
                        </ul>
                        <a href="" class="btn btn-block btn-primary agregar-carrito" data-id="5">Comprar</a>
                    </div>
                </div>

                <div class="card mb-4 shadow-sm">
                    <div class="card-header bg-warning">
                        <h6 class="my-0 font-weight-bold"> Pelota para rellenar con alimento, Control ansiedad con sonido</h6>
                    </div>
                    <div class="card-body">
                        <img src="imagenes\productoperro_6.jpg" class="card-img-top">
                        <br>
                        <br>
                        <h6 class="card-title pricing-card-title precio">$ <span class="">510</span></h6>

                        <ul class="list-unstyled mt-3 mb-4">
                            <li></li>
                            <li>Marca: Lazy Dog</li>
                            <li>Tamano Mascota: Chico, Mediano, Grande</li>
                            <li>Edad: Cachorro, Adulto </li
                            <li>Tipo Producto: Pelota ansiedad</li>
                        </ul>
                        <a href="" class="btn btn-block btn-primary agregar-carrito" data-id="6">Comprar</a>
                    </div>
                </div>

            </div>

            <div class="card-deck mb-3 text-center">
                
                <div class="card mb-4 shadow-sm">
                    <div class="card-header bg-warning">
                        <h6 class="my-0 font-weight-bold"> Comedero para Perro de Acero Inoxidable con antivuelco </h6>
                    </div>
                    <div class="card-body">
                        <img src="imagenes\productoperro_7.jpg" class="card-img-top">
                        <br>
                        <br>
                        <h6 class="card-title pricing-card-title precio">$ <span class="">420</span></h6>

                        <ul class="list-unstyled mt-3 mb-4">
                            <li></li>
                            <li>Marca: Acerix</li>
                            <li>Tamano Mascota: Mediano,Grande </li>
                            <li>Edad: Cachorro, Adulto</li
                            <li>Tipo Producto: Comedero</li>
                        </ul>
                        <a href="" class="btn btn-block btn-primary agregar-carrito" data-id="7">Comprar</a>
                    </div>
                </div>

                <div class="card mb-4 shadow-sm">
                    <div class="card-header bg-warning">
                        <h6 class="my-0 font-weight-bold">Comedero para Perro con Pie de Acero Inoxidable </h6>
                    </div>
                    <div class="card-body">
                        <img src="imagenes\productoperro_8.jpg" class="card-img-top">
                        <h6 class="card-title pricing-card-title precio">$ <span class="">3100</span></h6>

                        <ul class="list-unstyled mt-3 mb-4">
                            <li></li>
                            <li>Marca: Lazy Dog</li>
                            <li>Tamano: Grande</li>
                            <li>Edad: Adulto</li
                            <li>Tipo Producto: Comedero</li>
                        </ul>
                        <a href="" class="btn btn-block btn-primary agregar-carrito" data-id="8">Comprar</a>
                    </div>
                </div>

                <div class="card mb-4 shadow-sm">
                    <div class="card-header bg-warning">
                        <h6 class="my-0 font-weight-bold">Cama Star Wars R2-D2 Igloo, antideslizante y termico</h6>
                    </div>
                    <div class="card-body">
                        <img src="imagenes\productoperro_9.jpg" class="card-img-top">
                        <h6 class="card-title pricing-card-title precio">$ <span class="">7000</span></h6>

                        <ul class="list-unstyled mt-3 mb-4">
                            <li></li>
                            <li>Marca: Star Wars</li>
                            <li>Tamano Mascota: Chico, Adulto</li>
                            <li>Edad: Cachorro, Adulto</li
                            <li>Tipo Producto: Cucha</li>
                        </ul>
                        <a href="" class="btn btn-block btn-primary agregar-carrito" data-id="9">Comprar</a>
                    </div>
                </div>

            </div>


        </div>
    </main>
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