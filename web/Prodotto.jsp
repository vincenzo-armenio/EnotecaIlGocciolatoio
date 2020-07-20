<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.Prodotto" %><%--
  Created by IntelliJ IDEA.
  User: vince
  Date: 10/05/2020
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- link bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/ProdottoStyle.css">

    <title>Prodotto</title>
</head>
<body>

<%
    Prodotto p= (Prodotto) request.getAttribute("prodotto");
%>
<div class="container">
    <div class="row">
        <div class="col order-first">
            <img src=<%=p.getImmagine()%> alt="">
        </div>

        <div class="col order-last">
            <!-- inserire nome -->
            <h2 class="titolo-prodotto"><%=p.getNome()%></h2>

            <!-- inserire descrizione -->
            <p class="p-desc"><%=p.getDescrizione()%></p>

            <!-- inserire annata -->
            <div class="caratteristiche"> <span class="h-caratteristiche"> Annata</span>
                <span><%=p.getAnno()%></span>
            </div>

            <!-- inserire regione -->
            <div class="caratteristiche"> <span class="h-caratteristiche"> Regione</span>
                <span><%=p.getRegione()%></span>
            </div>

            <!-- inserire gradazione -->
            <div class="caratteristiche"> <span class="h-caratteristiche"> Gradazione</span>
                <span><%=p.getGradazione()%>%</span>
            </div>

            <!-- inserire formato -->
            <div class="caratteristiche"> <span class="h-caratteristiche"> Formato</span>
                <span>Bottiglia <%=p.getFormato()%> cl</span>
            </div>

            <!-- inserire disponibilità calcolata sui prodotti in magazzino -->
            <div class="caratteristiche"> <span class="h-caratteristiche"> Disponibilità: </span>
                <span><c:if test="${p.getQuantita_magazzino()<0}">
                        <c:out value = "Non disponibile momentaneamente"/>
                      </c:if>
                    <span><c:if test="${p.getQuantita_magazzino()>0}">
                        <c:out value = "Disponibile"/>
                      </c:if>
            </div>

            <!-- inserire tipo bianco/rosso -->
            <div class="caratteristiche"> <span class="h-caratteristiche"> Tipo</span>
                <span><%=p.getTipo()%></span>
            </div>

            <!-- inserire prezzo -->
            <p class="p-head-price">Prezzo</p>
            <p class="p-price"><%=p.getPrezzo()%> €</p>

            <!-- form quantità e bottone aggiungi al carrello -->
            <form class="buy-form">
                <div class="value-button" id="decrease" onclick="decreaseValue()" value="Decrease Value">-</div>
                <input type="number" id="number" value="0" />
                <div class="value-button" id="increase" onclick="increaseValue()" value="Increase Value">+</div>

                <button> Aggiungi al carrello</button>
            </form>
            <!-- partial -->
        </div>
    </div>
</div>
<!-- link jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- link bootstrap js -->
<script src="javascript/bootstrap.min.js"></script>
<script src="javascript/QntButton.js"></script>

</body>
</html>
