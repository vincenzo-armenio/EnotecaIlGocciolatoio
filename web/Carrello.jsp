<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c"
          uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="Header.jsp">
    <jsp:param name="pageTitle" value="Carrello"/>
</jsp:include>

<html>
<head>
    <title>Carrello </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <link rel="stylesheet" href="css/CarrelloStyle.css">
</head>
<body>
<main class="page">
    <section class="shopping-cart dark">
        <div class="container">
            <div class="block-heading">
                <h2>Il Tuo Carrello </h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quam urna, dignissim nec auctor in, mattis vitae leo.</p>
            </div>
            <div class="content">
                <div class="row">
                    <div class="col-md-12 col-lg-8">
                        <div class="items">
                            <div class="product">
                                <div class="row">
                                    <c:forEach items="${carrello.prodotti}" var="prod">
                                        <div class="col-md-3">
                                            <a href="#"><img class="img-fluid mx-auto d-block image" src="${prod.prodotto.immagine}"></a>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="info">
                                                <div class="row">
                                                    <div class="col-md-5 product-name">
                                                        <div class="product-name">
                                                            <a href="show-product?prodId=${prod.prodotto.id}">${prod.prodotto.nome}</a>
                                                            <div class="product-info">
                                                                <div>Annata: <span class="value">${prod.prodotto.anno}</span></div>
                                                                <div>Regione: <span class="value">${prod.prodotto.regione}</span></div>
                                                                <div>Gradazione: <span class="value">${prod.prodotto.gradazione}%</span></div>
                                                                <div>Formato: <span class="value">Bottiglia ${prod.prodotto.formato} cl</span></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 quantity">
                                                        <label for="quantity">Quantità:</label>

                                                        <input id="quantity" type="number" value ="1" class="form-control quantity-input">
                                                    </div>
                                                    <div class="col-md-3 price">
                                                        <span>€${prod.prodotto.prezzo}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                    <c:if test="${empty carrello.prodotti}">
                                        <div col="1">Nessun prodotto nel carrello</div>
                                    </c:if>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-12 col-lg-4">
                        <div class="summary">
                            <c:if test="${not empty carrello.prodotti}">
                                <h3>Riepilogo</h3>
                                <div class="summary-item"><span class="text">Totale parziale</span><span class="price">€${carrello.prezzoTotCent}</span></div>
                                <div class="summary-item"><span class="text">Sconto</span><span class="price">€0</span></div>
                                <div class="summary-item"><span class="text">Spese di spedizione</span><span class="price">€7.90</span></div>
                                <div class="summary-item"><span class="text">Totale</span><span class="price">€${carrello.prezzoTotCent}+7.90</span></div>
                                <button type="button" class="button">Procedi all'acquisto</button>
                            </c:if>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
</body>
<script src="javascript/bootstrap.min.js"></script>
<%@ include file= "Footer.jsp"%>
</body>
</html>