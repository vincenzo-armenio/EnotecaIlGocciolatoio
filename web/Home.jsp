<%@ page import="model.Categoria" %>
<%@ page import="model.Prodotto" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: vince
  Date: 10/05/2020
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- include l'header -->
<%@ include file= "Header.jsp"%>
<html>
<head>
    <title>EnotecaIlGocciolatoio </title>
    <!-- link bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/HomePageStyle.css">

    <!-- link icone -->
    <script src="https://kit.fontawesome.com/cf835fc8f8.js" crossorigin="anonymous"></script>
</head>
<body>

<%
    ServletContext ctx=request.getServletContext();
    Prodotto p1,p2,p3,p4,p5,p6,p7,p8;
    p1= (Prodotto) ctx.getAttribute("p1");
    p2= (Prodotto) ctx.getAttribute("p2");
    p3= (Prodotto) ctx.getAttribute("p3");
    p4= (Prodotto) ctx.getAttribute("p4");
    p5= (Prodotto) ctx.getAttribute("p5");
    p6= (Prodotto) ctx.getAttribute("p6");
    p7= (Prodotto) ctx.getAttribute("p7");
    p8= (Prodotto) ctx.getAttribute("p8");
%>

<!-- slider -->
<div class="container">
    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/Slideshow1.png" class="d-block w-100" alt="">
                <div class="carousel-caption d-none d-md-block">
                    <h5>PRIMA SLIDE </h5>
                    <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="img/Slideshow2.png" class="d-block w-100" alt="">
                <div class="carousel-caption d-none d-md-block">
                    <h5>SECONDA SLIDE</h5>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="img/Slideshow3.png" class="d-block w-100" alt="">
                <div class="carousel-caption d-none d-md-block">
                    <h5>TERZA SLIDE</h5>
                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<!-- fine slider -->

<!--sezione spazio bianco prima del footer-->
<div class="jumbotron jumbotron-fluid " style="background:transparent !important">
</div>

<!-- prodotti random -->

<div class="container">
    <div class="card-deck">
        <div class="card">

            <a href="show-product?product=<%=p1.getNome()%>"><img class="card-img-top" src="<%=p1.getImmagine()%>" alt="Card image cap" height="460px" width="112px"></a>
            <div class="card-body">
                <h6 class="card-title"><%=p1.getNome()%></h6>
                <p><%=p1.getPrezzo()%></p>
            </div>
            <div class="card-footer">
                <small class="text-muted"> <a href="#" class="buttonAcquista">Acquista</a> <a href="#" class="preferiti" ><i class="far fa-heart fa-lg"></i></a></small>
            </div>
        </div>
        <div class="card">
            <a href="show-product?product=<%=p2.getNome()%>"><img class="card-img-top" src="<%=p2.getImmagine()%>" alt="Card image cap" height="460px" width="112px"></a>
            <div class="card-body">
                <h6 class="card-title"><%=p2.getNome()%></h6>
                <p><%=p2.getPrezzo()%>€</p>
            </div>
            <div class="card-footer">
                <small class="text-muted"> <a href="#" class="buttonAcquista">Acquista</a> <a href="#" class="preferiti" ><i class="far fa-heart fa-lg"></i></a></small>
            </div>
        </div>
        <div class="card">
            <a href="show-product?product=<%=p3.getNome()%>"><img class="card-img-top" src="<%=p3.getImmagine()%>" alt="Card image cap" height="460px" width="112px"></a>
            <div class="card-body">
                <h6 class="card-title"><%=p3.getNome()%></h6>
                <p><%=p3.getPrezzo()%>€</p>
            </div>
            <div class="card-footer">
                <small class="text-muted"> <a href="#" class="buttonAcquista">Acquista</a> <a href="#" class="preferiti" ><i class="far fa-heart fa-lg"></i></a></small>
            </div>
        </div>
        <div class="card">
            <a href="show-product?product=<%=p4.getNome()%>"><img class="card-img-top" src="<%=p4.getImmagine()%>" alt="Card image cap" height="460px" width="112px"></a>
            <div class="card-body">
                <h6 class="card-title"><%=p4.getNome()%></h6>
                <p><%=p4.getPrezzo()%>€</p>
            </div>
            <div class="card-footer">
                <small class="text-muted"> <a href="#" class="buttonAcquista">Acquista</a> <a href="#" class="preferiti" ><i class="far fa-heart fa-lg"></i></a></small>
            </div>
        </div>
    </div>

    <div class="card-deck">
        <div class="card">
            <a href="show-product?product=<%=p5.getNome()%>"><img class="card-img-top" src="<%=p5.getImmagine()%>" alt="Card image cap" height="460px" width="112px"></a>
            <div class="card-body">
                <h6 class="card-title"><%=p5.getNome()%></h6>
                <p><%=p5.getPrezzo()%>€</p>
            </div>
            <div class="card-footer">
                <small class="text-muted"> <a href="#" class="buttonAcquista">Acquista</a> <a href="#" class="preferiti" ><i class="far fa-heart fa-lg"></i></a></small>
            </div>
        </div>
        <div class="card">
            <a href="show-product?product=<%=p6.getNome()%>"><img class="card-img-top" src="<%=p6.getImmagine()%>" alt="Card image cap" height="460px" width="112px"></a>
            <div class="card-body">
                <h6 class="card-title"><%=p6.getNome()%></h6>
                <p><%=p6.getPrezzo()%>€</p>
            </div>
            <div class="card-footer">
                <small class="text-muted"> <a href="#" class="buttonAcquista">Acquista</a> <a href="#" class="preferiti" ><i class="far fa-heart fa-lg"></i></a></small>
            </div>
        </div>
        <div class="card">
            <a href="show-product?product=<%=p7.getNome()%>"><img class="card-img-top" src="<%=p7.getImmagine()%>" alt="Card image cap" height="460px" width="112px"></a>
            <div class="card-body">
                <h6 class="card-title"><%=p7.getNome()%></h6>
                <p><%=p7.getPrezzo()%>€</p>
            </div>
            <div class="card-footer">
                <small class="text-muted"> <a href="#" class="buttonAcquista">Acquista</a> <a href="#" class="preferiti" ><i class="far fa-heart fa-lg"></i></a></small>
            </div>
        </div>
        <div class="card">
            <a href="show-product?product=<%=p8.getNome()%>"><img class="card-img-top" src="<%=p8.getImmagine()%>" alt="Card image cap" height="460px" width="112px"></a>
            <div class="card-body">
                <h6 class="card-title"><%=p8.getNome()%></h6>
                <p><%=p8.getPrezzo()%>€</p>
            </div>
            <div class="card-footer">
                <small class="text-muted"> <a href="#" class="buttonAcquista">Acquista</a> <a href="#" class="preferiti" ><i class="far fa-heart fa-lg"></i></a></small>
            </div>
        </div>
    </div>
    <!-- fine prodotti random-->

    <!--sezione spazio bianco prima del footer-->
    <div class="jumbotron jumbotron-fluid " style="background:transparent !important">
    </div>

    <!-- include il footer -->
    <%@ include file= "Footer.jsp"%>
</div>



<!-- link jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- link bootstrap js -->
<script src="javascript/bootstrap.min.js"></script>
</body>
</html>
