<%@ page import="model.Prodotto" %><%--
  Created by IntelliJ IDEA.
  User: dipal
  Date: 11/05/2020
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Prodotto</title>
</head>
<body>
<%
    Prodotto p= (Prodotto) request.getAttribute("prodotto");
%>

<table style="font-size: large">
    <tr>
        <td>Nome </td>
    </tr>

    <tr>
        <td> <%=p.getNome()%></td>
    </tr>

</table>

</body>
</html>
