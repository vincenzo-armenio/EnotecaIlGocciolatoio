<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Prodotto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: dipal
  Date: 17/07/2020
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ricerca</title>
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
