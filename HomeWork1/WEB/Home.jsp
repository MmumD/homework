<%@ page import="home.work.task2.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: mukha
  Date: 16.01.2024
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;

        }
        html{
            scroll-behavior: smooth;
        }
        .main{
            background: teal;
        }
        .container{
            padding: 10px 10%;
        }
        .main__wrapper{
            display: flex;
            flex-direction: column;
            gap: 50px;
        }
        .header{
            padding: 15px 0;
            background: teal;
        }
        .list{
            display: flex;
            justify-content: space-between;
        }
        li{
            list-style: none;
        }
        a{
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
            color: white;
        }
        .title p{
            color: white;
            text-decoration: underline;
            font-size: 30px;
            padding: 5px 0;
        }
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        button{
            padding: 5px 10px;
            border: 1px solid #dddddd;
            font-size: 16px;
            font-weight: 600;
            border-radius: 15px;
            width: 300px;
        }
        label{
            font-weight: bold;
        }
        form{
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        .forms{
            display: flex;
            flex-direction: column;
            gap: 5px;
        }
        form input{
            width: 300px;
            padding: 5px 10px;
            border-radius: 15px;
            border: 1px solid black;
        }
        .gender{
            display: flex;
            width: 300px;
        }
    </style>
</head>
<body>
<header class="header">
    <div class="container">
        <div class="header__wrapper">
            <nav>
                <ul class="list">
                    <li><a href="#task1">Задание №1</a></li>
                    <li><a href="#task2">Задание №2</a></li>
                    <li><a href="#task3">Задание №3</a></li>
                    <li><a href="#task4">Задание №4</a></li>
                    <li><a href="#task5">Задание №5</a></li>
                    <li><a href="#task6">Задание №6</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>
<main class="main">
    <div class="container">
        <div class="main__wrapper">
            <div class="task">
                <div class="title" id="task1">
                    <p>Задание №1</p>
                </div>
                <div class="solution">
                    <%
                        for (int i = 0; i < 10; i++){
                    %>
                        <h1>ALABS TEAM</h1>
                    <%
                        }
                    %>
                </div>
            </div>
            <div class="task">
                <div class="title" id="task2">
                    <p>Задание №2</p>
                </div>
                <div class="solution">
                    <table>
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Surname</th>
                            <th>Age</th>
                            <th>Gender</th>
                        </tr>
                        </thead>
                        <tbody>
                            <%
                                List<User> list = (List<User>) request.getAttribute("users");
                                for (int i = 0; i < list.size(); i++) {
                            %>
                                <tr>
                                    <td><%=i+1%></td>
                                    <td><%=list.get(i).getName()%></td>
                                    <td><%=list.get(i).getSurname()%></td>
                                    <td><%=list.get(i).getAge()%></td>
                                    <td><%=list.get(i).getGender()%></td>
                                </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="task">
                <div class="title" id="task3">
                    <p>Задание №3</p>
                </div>
                <div class="solution">
                    <form action="/task3">
                        <div class="forms">
                            <label for="name">Name</label>
                            <input type="text" name="name" id="name">
                            <label for="surname">Surname</label>
                            <input type="text" name="surname" id="surname">
                        </div>
                        <button>Submit</button>
                    </form>
                </div>
            </div>
            <div class="task">
                <div class="title" id="task4">
                    <p>Задание №4</p>
                </div>
                <div class="solution">
                    <form action="/task4">
                        <div class="forms">
                            <label for="uname">Name</label>
                            <input type="text" name="uname" id="uname">
                            <label for="usur">Surname</label>
                            <input type="text" name="usur" id="usur">
                            <label for="gender">Gender</label>
                            <div class="gender" id="gender">
                                <input type="radio" name="gender" id="male" value="male">
                                <label for="male">Male</label>
                                <input type="radio" name="gender" id="female" value="female">
                                <label for="female">Female</label>
                            </div>
                            <label for="age">Age</label>
                            <input type="number" name="age" id="age">
                        </div>
                        <button>Submit</button>
                    </form>
                </div>
            </div>
            <div class="task">
                <div class="title" id="task5">
                    <p>Задание №5</p>
                </div>
                <div class="solution">
                    <form action="/task5">
                        <div class="forms">
                            <label for="sname">Name</label>
                            <input type="text" name="sname" id="sname">
                            <label for="ssur">Surname</label>
                            <input type="text" name="ssur" id="ssur">
                            <label for="grade">Grade</label>
                            <input type="number" name="grade" id="grade">
                        </div>
                        <button>Submit</button>
                    </form>
                </div>
            </div>
            <div class="task">
                <div class="title" id="task6">
                    <p>Задание №6</p>
                </div>
                <div class="solution">
                    <form action="/task6">
                        <button type="submit">Click me</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>
</body>
</html>