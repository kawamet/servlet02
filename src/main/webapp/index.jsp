<%@page contentType="text/html; chartset=UTF-8" %>
<html>
<head>
    <title>Sda Servlets - zajecia drigie</title>

</head>
<body>
<h1>Servlets 02</h1>
<h3>Servlet 1: Configuaration</h3>
<a href="/servlet02_war/hi">Default</a>
<form action="/servlet02_war/hi" method="get">
    Imie:
    <input type="text" name="who"><br>
    <input type="submit" value="Wyslij">

</form>
<hr>
<h2>Servlet 2: Redirects</h2>
<a href="/servlet02_war/clientRedirect">Po stronie klienta</a><br>
<a href="/servlet02_war/serverRedirect">Po stronie servera</a><br>
<hr>
<h2>Servlet 3: Filter</h2>
<a href="/servlet02_war/filter">Domyslanie bez parametrow</a><br>
Z parametrem<br>
<form action="/servlet02_war/filter" method="get">
    Uzytkownik
    <input type="text" name="user"><br>
    <input type="submit" value="Wyslij">
</form>
<hr>
<h2>Servlet 4: JSP</h2>
<a href="/servlet02_war/jsp">Przekierowanie z servletu</a><br>
<a href="/servlet02_war/JspHelloWorls.jsp">Strona JSP</a>

</body>
</html>
