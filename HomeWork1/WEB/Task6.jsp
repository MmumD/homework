<%@ page import="home.work.task6.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="home.work.task6.DBManager" %><%--
  Created by IntelliJ IDEA.
  User: mukha
  Date: 27.01.2024
  Time: 05:24
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
        .main{
            background: teal;
            height: 100vh;
        }
        .container{
            padding: 10px 10%;
        }
        .main__wrapper{
            display: flex;
            flex-direction: column;
            gap: 50px;
        }
        .forms{
            display: flex;
            justify-content: space-between;
            gap: 2px;
            width: 450px;
        }
        label{
            font-size: 18px;
            font-weight: bold;
        }
        input{
            padding: 5px 15px;
            border-radius: 5px;
            border: 1px solid black;
            width: 350px;
        }
        button{
            width: 450px;
            font-size: 20px;
            padding: 10px 15px;
            border: 1px solid black;
            border-radius: 30px;
            background: #dddddd;
        }
        form{
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        .card{
            padding: 5px 15px;
            border-radius: 10px;
            border: 1px solid #fafafa;
            width: 300px;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        .buttons{
            display: flex;
            justify-content: space-between;
        }
        .btn{
            width: 120px;
            font-size: 18px;
            padding: 5px 10px;
            border-radius: 10px;
            background: teal;
            border: 1px solid beige;
        }
        .info{
            display: flex;
            flex-direction: column;
            gap: 5px;
        }
        .list{
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
        }
    </style>
    <title>Document</title>
</head>
<body>
<main class="main">
    <div class="container">
        <div class="main__wrapper">
            <div class="add">
                <form action="/addStudent" method="post">
                    <div class="forms">
                        <label for="name">Name</label>
                        <input type="text" name="name" id="name">
                    </div>
                    <div class="forms">
                        <label for="surname">Surname</label>
                        <input type="text" name="surname" id="surname">
                    </div>
                    <div class="forms">
                        <label for="age">Age</label>
                        <input type="number" name="age" id="age">
                    </div>
                    <div class="forms">
                        <label for="unic">University</label>
                        <input type="text" name="unic" id="unic">
                    </div>
                    <button>Add new User</button>
                </form>
            </div>
            <div class="list">
                <%
                    DBManager manager = (DBManager) request.getAttribute("manager");
                    for (int i = 0; i < manager.getStudentList().size(); i++) {
                        Student student = manager.getStudentList().get(i);
                %>
                <div class="card">
                    <div class="info">
                        <div class="user">
                            <h3><%=student.getName()%> <%=student.getSurname()%></h3>
                        </div>
                        <div class="details">
                            <p><span>Age </span><%=student.getAge()%></p>
                            <P><span>University </span><%=student.getUniversity()%></P>
                        </div>
                    </div>
                    <form action="/removeStudent" method="post">
                        <input type="hidden" name="studentId" value="<%=student.getId()%>">
                        <div class="buttons">
                            <button class="btn" type="submit" name="action" value="remove">Remove</button>
                        </div>
                    </form>
                </div>
                <% } %>

            </div>
        </div>
    </div>
</main>
</body>
</html>
