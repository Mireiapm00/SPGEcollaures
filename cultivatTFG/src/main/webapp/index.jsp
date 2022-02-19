<%-- 
    Document   : index
    Created on : 10-ago-2021, 14:57:25
    Author     : mireia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SPG Ecollaures</title>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        
         <!-- Bootstrap CSS & FontAwesome Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

        <script src="./js/libCapas.js" type="text/javascript"></script>
        <script src="./js/carrito.js" type="text/javascript"></script>
        
        <link rel="icon" type="image/ico" href="./img/logos/logo-web2-icon.png" sizes="64x64">
        <link href="./estilos.css" rel="stylesheet" type="text/css">   
    </head>
    
    <%
        String from = (String)session.getAttribute("from");
        if(from == "registroProducto"){
    %>
            <body onload="cargaInicialCarrito(); Cargar('./userAccess_component/mod_productos.jsp', 'cuerpo')">    
    <%
        }
        else{
    %>
            <body onload="cargaInicialCarrito(); Cargar('home_component/home.html', 'cuerpo')">    
    <%
        }
    %>
        
        <nav class="navbar navbar-expand-xl sticky-top navbar-light">
            <div class="container-md">
                <a id="noborder" class="navbar-brand" href="#">
                    <img src="img/logos/logo-web2-nav-300x55.png" onclick="Cargar('home_component/home.html', 'cuerpo')" alt="Inici">
                    <!--<img src="img/logos/logo_prova.png" onclick="Cargar('home_component/home.html', 'cuerpo')" alt="Inici">-->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#Inici" onclick="Cargar('home_component/home.html', 'cuerpo')">Inici</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#Informació" onclick="Cargar('about_component/about.html', 'cuerpo')">Què és</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#Projectes" onclick="Cargar('projects_component/projects.jsp', 'cuerpo')">Projectes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#Mapa" onclick="Cargar('map_component/map.html', 'cuerpo')">Mapa</a>
                        </li>
                        <!--<li class="nav-item">
                            <a class="nav-link" href="#Tenda" onclick="Cargar('shop_component/shop.jsp', 'cuerpo')"><i class="fa fa-shopping-basket" aria-hidden="true"></i> Tenda</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="align-right" href="#AccesUsuari" onclick="Cargar('userAccess_component/userAccess.jsp', 'cuerpo')"><i class="fa fa-user" aria-hidden="true"></i> Identifica't</a>
                        </li>-->
                    </ul>
                </div>       
            </div>
        </nav>       
        <div class="cuerpo" id="cuerpo">
        </div>
    
        <div class="footer">
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    </body>
</html>
