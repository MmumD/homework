<%--
  Created by IntelliJ IDEA.
  User: mukha
  Date: 27.01.2024
  Time: 04:46
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
            flex-direction: column;
            gap: 30px;
            align-items: center;
            justify-content: center;
        }
        .result{
            display: flex;
            flex-direction: column;
            border-radius: 15px;
            border: 1px solid black;
            padding: 10px 20px;
            gap: 5px;
        }
        span{
            font-weight: 600;
        }
        p{
            font-size: 15px;
        }
    </style>
    <title>Document</title>
</head>
<body>
<main>
    <%
        String name = (String)request.getAttribute("name");
        String surname = (String)request.getAttribute("surname");
        int age = (int)request.getAttribute("age");
        String gender = (String) request.getAttribute("gender");

        String greating;
        if(age >= 18) greating = "Dear";
        else greating = "Dude";
        if(gender.equals("male")) greating = greating + " Mister";
        else greating = greating + " Miss";
    %>
    <div class="greating">
        <h1 onclick="">
            <span>Hello</span>
            <%=greating%> <%=name%> <%=surname%>
        </h1>
    </div>
    <div class="result">
        <div class="name">
            <h2><%=name%> <%=surname%></h2>
        </div>
        <div class="details">
            <p><span>Age:</span> <%=age%></p>
            <p><span>Gender:</span> <%=gender%></p>
        </div>
    </div>
</main>
</body>
</html>
