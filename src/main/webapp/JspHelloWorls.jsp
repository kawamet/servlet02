<%--
  Created by IntelliJ IDEA.
  User: Karolina
  Date: 21/09/2019
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h2><% out.print("JSP says hello");%></h2>
<p>Dziej jest:
    <% out.println(java.time.LocalDate.now().toString());%>
</p>

<h3>2 + 2 wynik expression:  <%= 2 + 2%>
</h3>

<%! private long visitCount = 0; %>

<h2>Ilosc odwiedzin strony : <%= ++ visitCount %></h2>

</body>
</html>
