<%--
  Created by IntelliJ IDEA.
  User: vince
  Date: 10/05/2020
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
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
    <meta charset="UTF-8">
    <title>Registration Login Form</title>
  
  <!-- Link css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/LoginRegistration.css">

</head>
  
<body>
  
  <!-- include l'header -->
<%@ include file= "HeaderLogo.jsp"%>

<!--sezione spazio bianco prima del form -->
<div class="jumbotron jumbotron-fluid " style="background:transparent !important">
</div>
  
<!-- partial:index.partial.html -->
<h2> Accedi o Crea un Account </h2>
<div class="container" id="container">
    <div class="form-container sign-up-container">
        <form action="#">
            <h1>Crea Account</h1>
            <input type="text" placeholder="Name" />
            <input type="email" placeholder="Email" />
            <input type="password" placeholder="Password" />
            <button>Registrati </button>
        </form>
    </div>
    <div class="form-container sign-in-container">
        <form action="#">
            <h1>Accedi</h1>

            <input type="email" placeholder="Email" />
            <input type="password" placeholder="Password" />
            <a href="#">Hai dimenticato la password?</a>
            <button>Accedi</button>
        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>Bentornato!</h1>
                <p>Per scoprire i nostri prodotti, effettua il login con le tue informazioni personali.</p>
                <button class="ghost" id="signIn">Accedi</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>Ciao!</h1>
                <p>Inserisci i tuoi dati personali e scopri i nostri prodotti!</p>
                <button class="ghost" id="signUp">Iscriviti</button>
            </div>
        </div>
    </div>
</div>

<!-- js -->
<script src="javascript/LoginRegistration.js"></script>

</body>
</html>
