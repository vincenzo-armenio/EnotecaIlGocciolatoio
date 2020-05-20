<%@ page import="java.util.List" %>
<%@ page import="model.Prodotto" %>
<%@ page import="model.Categoria" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: dipal
  Date: 11/05/2020
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Categoria</title>
</head>
<body>
<%
    List<Prodotto> prodotti= (List<Prodotto>) request.getAttribute("prodotti");
%>

<table style="font-size: large">
    <tr>
        <td>Nome </td>
    </tr>

    <% for(Prodotto p:prodotti){ %>
    <tr>
        <td> <%=p.getNome()%></td>
    </tr>
    <% } %>
</table>



</body>
</html>
