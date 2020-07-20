<%--
  Created by IntelliJ IDEA.
  User: vince
  Date: 17/07/2020
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- link bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>

<!-- include l'header -->
<%@ include file= "HeaderLogo.jsp"%>

<!--sezione spazio bianco prima delle info -->
<div class="jumbotron jumbotron-fluid " style="background:transparent !important">
</div>

<form class="container center_div">
    <div class="row">
        <div class="col order-first">
            <div class="form-group">

                <label class=control-label" for="NomeProdotto">NOME PRODOTTO</label>
                <div >
                    <input type="text" class="form-control" id="NomeProdotto" placeholder="Inserisci nome prodotto">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label" for="Descrizione">DESCRIZIONE</label>
                <div>
                    <textarea  class="form-control" id="Descrizione"> </textarea>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label" for="Annata">ANNATA</label>
                <div >
                    <input type="text" class="form-control" id="Annata" placeholder="Inserisci Annata">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label" for="Regione">REGIONE </label>
                <div >
                    <input type="text" class="form-control" id="Regione" placeholder="Inserisci Regione">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label" for="Gradazione">GRADAZIONE </label>
                <div >
                    <input type="text" class="form-control" id="Gradazione" placeholder="Inserisci Gradazione">
                </div>
            </div>

        </div>

        <div class="col order-last">

            <div class="form-group">
                <label class="control-label" for="Formato">FORMATO </label>
                <div>
                    <input type="text" class="form-control" id="Formato" placeholder="Inserisci Formato">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label" for="Disponibilità">DISPONIBILITÀ </label>
                <div >
                    <input type="text" class="form-control" id="Disponibilità" placeholder="Inserisci Disponibilità">
                </div>
            </div>


            <div class="form-group">
                <label class="control-label" for="Tipo">TIPO </label>
                <div >
                    <input type="text" class="form-control" id="Tipo" placeholder="Bianco Rosso Rosato">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label" for="Prezzo">PREZZO </label>
                <div >
                    <input type="text" class="form-control" id="Prezzo" placeholder="Inserisci prezzo">
                </div>
            </div>

            <form>
                <div class="form-group">
                    <label for="Immagine">Scegli un'immagine</label>
                    <input type="file" class="form-control-file" id="Immagine">
                </div>
            </form>

            <!-- Bottone di conferma -->
            <div class="form-group">
                <div >
                    <button id="aggiungi" class="btn btn-secondary">AGGIUNGI PRODOTTO</button>
                </div>
            </div>


        </div>
    </div>
</form>

<!-- link jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- link bootstrap js -->
<script src="javascript/bootstrap.min.js"></script>
</body>


</html>