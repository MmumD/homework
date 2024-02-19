<%--
  Created by IntelliJ IDEA.
  User: mukha
  Date: 13.02.2024
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/login.css">
    <title>Document</title>
</head>
<body>
<main class="main">
    <div class="form">
        <div class="title">
            <h1>Login</h1>
        </div>
        <form action="Login" method="post">
            <div class="info">
                <input required type="text" name="username" placeholder="Username">
                <input required type="password" name="password" placeholder="Password">
            </div>
            <div class="button">
                <button class="btn" type="submit">Enter</button>
            </div>

        </form>
        <div class="links">
            <a href="#">FORGOT PASSWORD?</a>
            <a href="Register">CREATE NEW ACCOUNT</a>
        </div>
    </div>
</main>
</body>
</html>
