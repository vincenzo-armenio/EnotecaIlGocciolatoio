<%@ page import="java.util.List" %>
<%@ page import="model.Prodotto" %>
<%@ page import="model.Categoria" %>
<%@ page import="java.util.ArrayList" %>

<%--
  Created by IntelliJ IDEA.
  User: vince
  Date: 10/05/2020
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- link bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- link css -->
    <link rel="stylesheet" href="css/Categoria.css">

    <!-- link icone -->
    <script src="https://kit.fontawesome.com/cf835fc8f8.js" crossorigin="anonymous"></script>
</head>
<body>

<!-- include l'header -->
<%@ include file= "HeaderLogo.jsp"%>

<%
    List<Prodotto> prodotti= (List<Prodotto>) request.getAttribute("prodotti");
    String cat= (String) request.getAttribute("category");
%>

<!--sezione spazio bianco prima della categoria -->
<div class="jumbotron jumbotron-fluid " style="background:transparent !important">
</div>


<div class="container">

    <div class="title"><%=cat%></div>




    <div class="row">

        <% for(Prodotto p:prodotti){ %>
        <div class="col">


            <div class="card">

                <a href="show-product?product=<%=p.getNome()%>"><img class="card-img-top" src="<%=p.getImmagine()%>" alt="Card image cap" height="460px" width="112px"></a>
                <div class="card-body">
                    <h6 class="card-title"><%=p.getNome()%></h6>
                    <p><%=p.getPrezzo()%> €</p>
                </div>
                <div class="card-footer">
                    <small class="text-muted"> <a href="carrello?prodId=<%=p.getId()%>&addNum=1" class="buttonAcquista">Acquista</a> <a href="#" class="preferiti" ><i class="far fa-heart fa-lg"></i></a></small>
                </div>

                <div class="col">

                </div>
                <div class="col">

                </div>
                <div class="col">

                </div>

            </div>

        </div>

        <% } %>
    </div>

</div>

</body>
</html>
