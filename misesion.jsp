<%-- 
    Document   : misesion
    Created on : Jul 24, 2021, 11:34:32 PM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.logging.Level" %>
<%@ page import="java.util.logging.Logger" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.annotation.WebServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="Clases.persistencia" %>




   <%
    //obtengo valor de la variable de sesion    
    String correo;
    HttpSession sess = request.getSession(false);
    correo=sess.getAttribute("correo").toString(); 
    %>
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
        <!--imagen de portada -->
       <script type="text/javascript">
            function eliminar(x) 
            {                               
                   var opcion = confirm("Eliminar Fila?");
                            if (opcion === true) 
                            {  
                             location.href="#";
                            }                
            }       
        
         function modificar(x) 
            {                               
                   var opcion = confirm("Modificar Fila?");
                            if (opcion === true) 
                            {  
                             
                            }                
            }
        </script> 
    </head>
    
    <body>

                    <%           
                     persistencia base = new persistencia();
                     ResultSet rs = base.consultaSQL("SELECT * FROM registropagomushupet where correo like '" +correo+ "'"); 
                        
                     while(rs.next())
                     {
                    %>
        <br>
        <br>
        <h6 class="info">Aquí encontraras toda tu información personal de tu cuenta Pet</h6>
        <div class="col-md-12  text-center"> 
        <table class="table" id="MisPedidos" >
            <thead class="bg-info">
            <tr>               
                <th scope="col">Nombre</th>
                <th scope="col">Apellido</th>
                <th scope="col">Correo</th>
                <th scope="col">DNI</th>
                <th scope="col">Telefono</th>
               
            </tr>
            </thead>
                    <tr>
                    <td><% out.println(rs.getString("nombrecliente")); %></td>
                    <td><% out.println(rs.getString("apellidocliente")); %></td>
                    <td><% out.println(rs.getString("correo")); %></td>
                    <td><% out.println(rs.getString("dni")); %></td>
                    <td><% out.println(rs.getString("telefono")); %></td>
                    
                             
                    <td><a id="eliminar" name="eliminar" href="#" onclick="eliminar(<% out.println(rs.getInt("id")); %>);"   ><i class="far fa-arrow-alt-circle-down"></i>  </a></td>
                    <td><a id="modificar" name="modificar" href="#" onclick="modificar(<% out.println(rs.getInt("id")); %>);"   ><i class="fas fa-angle-double-up"></i>  </a></td>
                    
                    </tr>    
        </table>  
                    <!-- Datos de entrega -->
                    <h6 class="info"> Datos de Direccion</h6>
                    <table class="table">
                     <thead class="bg-info">
            <tr>               
                <th scope="col">Direccion</th>
                <th scope="col">Barrio</th>
                <th scope="col">Codigo Postal</th>
               
            </tr>
            </thead>
    <tr>
                    <td><% out.println(rs.getString("direccion")); %></td>
                    <td><% out.println(rs.getString("barrio")); %></td>
                    <td><% out.println(rs.getString("codpostal")); %></td>
                    
                             
                    <td><a id="eliminar" name="eliminar" href="#" onclick="eliminar(<% out.println(rs.getInt("id")); %>);"   ><i class="far fa-arrow-alt-circle-down"></i>  </a></td>
                    <td><a id="modificar" name="modificar" href="#" onclick="modificar(<% out.println(rs.getInt("id")); %>);"   ><i class="fas fa-angle-double-up"></i>  </a></td>
                    
                    </tr>                    
                    </table>
        <!-- ultimas compras -->
           <h6 class="info"> Compras realizadas</h6>
                    <table class="table">
                     <thead class="bg-info">
            <tr>               
                <th scope="col">Producto</th>
                <th scope="col">Cantidad</th>
                <th scope="col">Total</th>
               
            </tr>
            </thead>
    <tr>
                    <td><% out.println(rs.getString("producto")); %></td>
                    <td><% out.println(rs.getString("cantidad")); %></td>
                    <td><% out.println(rs.getString("total")); %></td>
                    
                             
                    <td><a id="eliminar" name="eliminar" href="#" onclick="eliminar(<% out.println(rs.getInt("id")); %>);"   ><i class="far fa-arrow-alt-circle-down"></i>  </a></td>
                    <td><a id="modificar" name="modificar" href="#" onclick="modificar(<% out.println(rs.getInt("id")); %>);"   ><i class="fas fa-angle-double-up"></i>  </a></td>
                    
                    </tr>                    
                    </table>
                    
                    
                 <%
                    }
                    %>     
                 <%
                    if (rs.first()==false)
                   {
                 %>  
                 <br>
                 <br>
             <h6 class="info"><% out.println("Aquí encontraras toda tu información de compras que realices en Mushu Pet"); %></h6>
                  <%
                    }
                    %>      
        <div class="col-2">
        <button class="btn btn-warning" name="salir" onClick="location.href='index.jsp'" type="button">Cerrar sesion</button>
		</div>
        </div> 
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
  