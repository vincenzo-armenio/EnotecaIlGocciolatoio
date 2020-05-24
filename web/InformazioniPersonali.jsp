<%@ page import="model.Utente" %><%--
  Created by IntelliJ IDEA.
  User: dipal
  Date: 11/05/2020
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profilo</title>
</head>
<body>
<%
    Utente user= (Utente) request.getSession().getAttribute("utente");
%>
    Nome utente: <%=user.getUsername() %>

<form action="logout" method="GET">
    <button>Esci</button>
</form>


</body>
</html>
