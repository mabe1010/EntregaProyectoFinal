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
        <a class="nav-link" href="index.html">Inicio</a>
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
        <a class="nav-link active" href="Sucursal.jsp">Sucursales <span class="sr-only">(current)</span></a>
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
        <!--informacion de sucursales -->
        <hr>
        <p>Te invitamos a visitar nuestras sucursales ubicadas en Belgrano y Palermo, 
        contamos con todas las marcas de alimento balanceado y una variedad de accesorios para tus mascotas</p>
        <hr>
        <br>
        <div class="iframe">
           <table style="width:100%">
  <tr>
      <th><h6 class="text">Sucursal Belgrano</h6></th>
    <th><h6 class="text">Sucursal Palermo</h6></th>
  </tr>
  <tr>
    <td><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3285.728824266134!2d-58.45111777737436!3d-34.56042076469699!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcb5cd83d90fbf%3A0x16fb722ca67a09c9!2s3%20de%20Febrero%202000%2C%20C1428AHD%20CABA!5e0!3m2!1ses!2sar!4v1626914654351!5m2!1ses!2sar" width="600" height="450" style="border:0;" allowfullscreen=""></iframe></td>
    <td><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1642.4796477750115!2d-58.42475154197017!3d-34.57989648675692!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcb584b0a80091%3A0xafb72462e9308f1e!2sDarregueyra%202500%2C%20C1425FLE%20CABA!5e0!3m2!1ses!2sar!4v1626914579313!5m2!1ses!2sar" width="600" height="450" style="border:0;" allowfullscreen=""></iframe></td>
  </tr>
</table>
            <br>
            <br>
            <h6>Ciudad Autonoma de Buenos Aires.</h6>
            <h6>Lunes a Domingo: 9a 18hs</h6>
            <h6>Veterinaria: solo con turno online. Solicita tu turno <a href="veterinaria.jsp">aqui</a></h6>
            <br>
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
