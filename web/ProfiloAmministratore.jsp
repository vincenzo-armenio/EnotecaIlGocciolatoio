<%@ page import="model.Utente" %>
<%--
  Created by IntelliJ IDEA.
  User: vince
  Date: 10/05/2020
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!--link bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- link css -->
    <link rel="stylesheet" href="css/AreaAmministratore.css">
    <!-- link icone -->
    <script src="https://kit.fontawesome.com/cf835fc8f8.js" crossorigin="anonymous"></script>

</head>
<body>
<!-- include l'header -->
<%@ include file= "HeaderLogo.jsp"%>

<!--sezione spazio bianco prima delle info -->
<div class="jumbotron jumbotron-fluid " style="background:transparent !important">
</div>

<div class="container">

    <div class="title">Area Amministratore</div>

    <%
        Utente u= (Utente) session.getAttribute("utente");

    %>

    <div class="row">

        <div class="col order-first">

            <ul class="Informazioni">
                <li><h5 class="info-items">Username:</h5> <%=u.getUsername()%></li>
                <li><h5 class="info-items">Ruolo:</h5> <%=u.getRuolo()%></li>
                <li><h5 class="info-items">Email:</h5> <%=u.getEmail()%></li>

            </ul>


        </div>

        <div class="col order-2">

            <form method="get" action="AggiungiProdotto.jsp">
                <button><i class="fas fa-plus fa-lg"></i> Aggiungi Prodotto</button>
            </form>

            <button><i class="fas fa-pencil-alt"></i> modifica info</button>

        </div>

        <div class="col order-last">
            <!-- bottone che reindirizza alla lista dei prodotti del sito per eventuali modifiche o cancellazioni -->
            <button><i class="far fa-list-alt fa-lg"></i> Lista Prodotti</button>
            <!-- bottone che reindirizza alla lista degli utenti presenti nel sito -->
            <button><i class="far fa-list-alt fa-lg"></i> Lista Utenti</button>
            <!-- bottone che reindirizza alla lista degli ordini del sito per eventuali modifiche o cancellazioni -->
            <button><i class="far fa-list-alt fa-lg"></i> Lista Ordini</button>

        </div>


    </div>




</div>

</div>


</body>
</html>