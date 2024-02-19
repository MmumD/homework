<%--
  Created by IntelliJ IDEA.
  User: mukha
  Date: 13.02.2024
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/homes.css">
    <title>Document</title>
</head>
<body>
<header class="header">
    <div class="container">
        <div class="header__wrapper">
            <div class="logo">
            </div>
            <nav class="nav">
                <ul >
                    <li><a href="#" id="selected">Home page</a></li>
                    <li><a href="${pageContext.request.contextPath}/products">Show Products</a></li>
                    <li><a href="${pageContext.request.contextPath}/profile">My Profile</a></li>
                    <form action="logout" method="post">
                        <button type="submit" class="btn">Log out</button>
                    </form>
                </ul>
            </nav>
        </div>
    </div>
</header>
<main class="main">
    <div class="container">
        <div class="main__wrapper">
            <h1> Done By Mukhammed Marat</h1>
            <p >Homework - 2</p>
        </div>
    </div>
</main>
<footer class="footer">
    <div class="container">
        <div class="footer__wrapper">
            <div class="footer-top">
                <div class="footer-social">
                    <a href="#">Facebook</a> |
                    <a href="#">Twitter</a> |
                    <a href="#">Instagram</a>
                </div>
                <div class="footer-info">
                    <p>Homework - 2</p>
                </div>
            </div>
            <div class="footer-bottom">
                <p>Copyright © 2024 Alabs. All rights reserved.</p>
            </div>
        </div>
    </div>
</footer>
</body>
</html>