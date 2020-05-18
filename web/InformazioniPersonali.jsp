<%--
  Created by IntelliJ IDEA.
  User: vince
  Date: 10/05/2020
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!--link bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- link css -->
    <link rel="stylesheet" href="css/InformazioniPersonali.css">
    <!-- link icone -->
    <script src="https://kit.fontawesome.com/cf835fc8f8.js" crossorigin="anonymous"></script>
    <title>Il mio Account</title>
</head>
<body>

<!-- include l'header -->
<%@ include file= "HeaderLogo.jsp"%>

<!--sezione spazio bianco prima delle info -->
<div class="jumbotron jumbotron-fluid " style="background:transparent !important">
</div>

<div class="container">

    <div class="title">Il mio Account</div>

    <div class="row">
        <div class="col order-first">
            <img class="fotoUtente" src="img/avatars/astronaut.png" alt="FotoUtente">
            <h3 class="NomeFoto">Username</h3>
        </div>

        <div class="col order-second">

            <ul class="Informazioni">
                <li><h5 class="info-items">Username:</h5> armeniovin</li>
                <li><h5 class="info-items">Ruolo:</h5> Cliente</li>
                <li><h5 class="info-items">Email:</h5> armeniovin@gmail.com</li>
            </ul>


        </div>

        <div class="col order-last">
            <button><i class="fas fa-pencil-alt"></i> modifica</button>
            <button><i class="fas fa-list fa-lg" ></i> visualizza i tuoi ordini</button>
        </div>
    </div>




</div>

</div>


</body>
</html>
