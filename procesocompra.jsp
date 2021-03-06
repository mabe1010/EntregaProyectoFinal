<%-- 
    Document   : procesocompra
    Created on : Jul 28, 2021, 12:11:35 AM
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
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Buscar producto" aria-label="Search">
      <button class="btn btn btn-info my-2 my-sm-0" type="submit">Buscar</button>
    </form>
  </div>
</nav>
         <br>
         <br>
         <br>
         <br>
        <!--PROCESO DE PAGO  -->
        <section>  
<h2 class="info"> FORMULARIO DE PAGO </h2>
<p> Procederemos a realizar el pago de tu compra, por favor completa los siguientes datos: </p>
<form action="registropago" method="post" id="pagoform" class="needs-validation" novalidate>
  <h6 class="info"> Detalle de compra </h6>
                        
    <div id="carrito" class="form-group table-responsive">
        <table class="form-group table" id="lista-compra">
            <thead>
                <tr>
                    <th scope="col">Imagen</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Cantidad</th>
                    <th scope="col">Sub Total</th>
                 
                </tr>

            </thead>
            <tbody>

            </tbody>
                 <tr>
                    <th colspan="4" scope="col" class="text-right">SUB TOTAL :</th>
                    <th scope="col">
                         <p id="subtotal"></p>
                    </th>
           <!-- <th scope="col"></th> -->
                </tr>
                     <tr>
                        <th colspan="4" scope="col" class="text-right">IVA :</th>
                        <th scope="col">
                            <p id="igv"></p>
                        </th>
          <!-- <th scope="col"></th> -->
                     </tr>
                     <tr>
                        <th colspan="4" scope="col" class="text-right">TOTAL :</th>
                        <th scope="col">
                            <p id="total"></p>
                        </th>
       <!-- <th scope="col"></th> -->
                    </tr>

        </table>
    </div>
      
        <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationCustom01">Nombre</label>
      <input type="text" class="form-control" id="validationCustom01" name="nombrecliente"  placeholder="Indique su nombre" required>
      <div class="valid-feedback">
        Luce genial!
      </div>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationCustom02">Apellido</label>
      <input type="text" class="form-control" id="validationCustom02" name="apellidocliente"  placehoder="Indique su apellido" required>
      <div class="valid-feedback">
        Luce genial!
      </div>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationCustom03">Correo electronico</label>
      <input type="email" class="form-control" id="validationCustom03" name="correo" placeholder="correo@example.com" required>
      <div class="valid-feedback">
        Luce genial!
      </div>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationCustom04">Telefono contacto</label>
      <input type="number" class="form-control" id="validationCustom04" name="telefono"  placeholder="Indique su numero de telefono (11)" required>
      <div class="valid-feedback">
        Luce genial!
      </div>
    </div>
        </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationCustom05">Direccion de entrega</label>
      <input type="text" class="form-control" id="validationCustom05" name="direccion"  placeholder="Indique calle, altura, puerta y piso" required>
      <div class="valid-feedback">
        Luce genial!
      </div>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationCustom06">Ciudad</label>
      <input type="text" class="form-control" id="validationCustom06" value="Buenos Aires Capital Federal" disabled>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationCustom07">Barrio</label>
      <select class="custom-select" id="validationCustom07" name="barrio"  placeholder="Seleccione entre los disponibles para envio" required>
        <option selected disabled value="">Seleccione...</option>
        <option>Agronomia</option>
        <option>Almagro</option>
        <option>Barracas</option>
        <option>Belgrano</option>
        <option>Boedo</option>
        <option>Caballito</option>
        <option>Chacarita</option>
        <option>Villa Crespo</option>
        <option>Palermo</option>
        <option>Recoleta</option>
      </select>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationCustom08">Codigo postal</label>
      <input type="text" class="form-control" name="codigopostal"  id="validationCustom08" required>
      <div class="invalid-feedback">
        Indique un codigo postal valido.
      </div>
    </div>
  </div>

   <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationCustom09">Numero de tarjeta</label>
      <input type="text" class="form-control" name="tarjetapago"  id="validationCustom09" required>
      <div class="valid-feedback">
        Luce genial!
      </div>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationCustom10">Titular de tarjeta</label>
      <input type="text" class="form-control" name="titular"  id="validationCustom10" placeholder="Igual a lo indicado en la tarjeta" required>
      <div class="valid-feedback">
        Luce genial!
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationCustom11">Fecha vencimiento</label>
     <input type="text" class="form-control" id="validationCustom11" placeholder="mm/aa" required>
      <div class="valid-feedback">
        Luce genial!
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationCustom12">CVV</label>
      <input type="number" class="form-control" id="validationCustom12" required>
      <div class="valid-feedback">
        Luce genial!
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationCustom13">DNI</label>
      <input type="number" class="form-control"  name="dni" id="validationCustom13" required>
      <div class="valid-feedback">
        Luce genial!
      </div>
    </div>
   </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
      <label class="form-check-label" for="invalidCheck">
          Estoy de acuerdo con los <a href="#">Terminos y Condiciones</a>
      </label>
      <div class="invalid-feedback">
        Debes estar de acuerdo para finalizar la compra.
      </div>
    </div>
  </div>
  <button class="btn btn-primary" type="submit">Procesar pago</button>
</form>
<br>

<script>
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
        
 </section>       
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
        <script src="js\compra.js"></script>
    </body>
</html>