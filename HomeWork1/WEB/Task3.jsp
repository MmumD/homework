<%--
  Created by IntelliJ IDEA.
  User: mukha
  Date: 27.01.2024
  Time: 04:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        main{
            background: teal;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
    </style>
    <title>Document</title>
</head>
<body>
<main>
    <div class="result">
        <%
            String name = (String) request.getAttribute("name");
            String surname = (String) request.getAttribute("surname");
        %>
        <h1><%=name%> <%=surname%></h1>
    </div>
</main>
</body>
</html>
