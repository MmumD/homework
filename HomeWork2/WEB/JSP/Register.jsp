<%--
  Created by IntelliJ IDEA.
  User: mukha
  Date: 14.02.2024
  Time: 00:39
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
</body>
<body>
<main class="main">
    <div class="form">
        <div class="title">
            <h1>Register</h1>
        </div>
        <form action="Register" method="post">
            <div class="info">
                <input type="text" name="username" placeholder="Username" required>
                <input type="password" name="password" placeholder="Password" required>
                <input type="password" name="confirm_password" placeholder="Confirm Password" required>
            </div>
            <div class="button">
                <button type="submit" class="btn">Register</button>
                <%
                    int check = request.getAttribute("check") != null ? 1 : 0;
                    if(check == 1){
                %>
                    <p style="color: red; text-align: center; align-items: center">User exists</p>
                <%
                    }
                %>
            </div>

        </form>

        <div class="links">
            <a href="Login">Have an account?</a>
        </div>
    </div>
</main>
<script>
    window.onload = function() {
        const form = document.querySelector('form');
        form.onsubmit = function() {
            const password = document.querySelector('input[name="password"]').value;
            const confirmPassword = document.querySelector('input[name="confirm_password"]').value;

            if(password === confirmPassword) {
                return true;
            } else {
                alert('Passwords do not match. Please try again.');
                return false;
            }
        };
    };
</script>
</body>
</html>