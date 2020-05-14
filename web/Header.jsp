<%--
  Created by IntelliJ IDEA.
  User: vince
  Date: 10/05/2020
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>
<html>
<head>
    <title>Enoteca Il Gocciolatoio</title>
    <!-- link bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/HomePageStyle.css">

    <!-- link icone -->
    <script src="https://kit.fontawesome.com/cf835fc8f8.js" crossorigin="anonymous"></script>
</head>
<body>
<!-- utilizzando class = "container" si raggrupa il contenuto al centro dello schermo limitando la grandezza massima -->
<div class="container">
    <nav class="navbar navbar-light navbar-expand-lg " >
        <a class="navbar-brand" href="#">
            <img src="./img/logo.png" width="450" height="128" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <form class="form-inline my-2 my-lg-0 " action="#">
                <input class="form-control form-control-sm mr-sm-2" type="search" placeholder="Cosa stai cercando?" aria-label="Search" id="navBarSearchForm">
                <button class="btn btn-light btn-sm my-2 my-sm-0" type="submit">Cerca</button>
            </form>

            <ul class="navbar-nav ">
                <li class="nav-item ">
                    <a class="nav-link"  href="index.html"><i class="fas fa-user fa-lg" ></i> </a>

                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" ><i class="fas fa-shopping-cart  fa-lg"></i></a>

                </li>
            </ul>

        </div>
    </nav>


    <nav class="navbar navbar-expand-lg navbar-light ">

        <div id ="navbarCategorie">
            <ul class="navbar-nav">

                <!-- href indirizza alla servlet, aggiungendo come parametro category a cui è assegnata la categoria corrispondente -->
                <li class="nav-item">
                    <a class="nav-link" href="show-category?category=vini">VINI  <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"  href="show-category?category=spumanti">SPUMANTI</a>

                </li>
                <li class="nav-item">
                    <a class="nav-link" href="show-category?category=birre">BIRRE</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="show-category?category=champagne">CHAMPAGNE</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="show-category?category=superalcolici">SUPERALCOLICI</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="show-category?category=amari">AMARI</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="show-category?category=cibo">CIBO</a>
                </li>

            </ul>
        </div>
    </nav>
</div>
<!-- link jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- link bootstrap js -->
<script src="javascript/bootstrap.min.js"></script>

</body>
</html>
