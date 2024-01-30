<%--
  Created by IntelliJ IDEA.
  User: mukha
  Date: 27.01.2024
  Time: 05:03
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
    span{
      font-style: italic;
    }
  </style>
  <title>Document</title>
</head>
<body>
<main>
  <%
    String fullname = (String) request.getAttribute("fullname");
    String grade = (String) request.getAttribute("grade");
  %>
  <div class="result">
    <h1><%=fullname%></h1>
    <h2><span>Grade: </span> <%=grade%></h2>
  </div>
</main>
</body>
</html>