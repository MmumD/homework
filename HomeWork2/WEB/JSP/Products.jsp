<%@ page import="java.util.ArrayList" %>
<%@ page import="alabs.homework.entity.Product" %>
<%@ page import="alabs.homework.DBManager.ProductManager" %><%--
  Created by IntelliJ IDEA.
  User: mukha
  Date: 13.02.2024
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style/car.css">
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
                    <li><a href="${pageContext.request.contextPath}/home">Home page</a></li>
                    <li><a href="#" id="selected">Show Products</a></li>
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
            <div class="add-card">
                <form action="products" method="post">
                    <input type="hidden" name="_method" value="put" />
                    <label>
                        <input type="text" name="name" placeholder="Name">
                    </label>
                    <label>
                        <textarea name="description" placeholder="Description"></textarea>
                    </label>
                    <button type="submit" class="btn">Add</button>
                </form>
            </div>
            <%
                ArrayList<Product> products = ProductManager.getProducts();
                System.out.println("products: " + products.size());
                for(Product product : products){

            %>
            <div class="card">
                <div class="left">
                    <img src="../images/product.jpg" alt="" width="200px" style="border-radius: 5px;">
                </div>
                <div class="right">
                    <h2><%= product.getName() %> <span><%= product.getExpirationDate() %></span></h2>
                    <p><%= product.getDescription() %></p>
                    <button id="openModalBtn">Edit</button>
                    <div id="myModal" class="modal">
                        <div class="modal-content">
                            <span class="close">&times;</span>
                            <form action="products" method="post">
                                <input type="hidden" name="product" value="<%= product.getId() %>">
                                <label>
                                    <input type="text" name="name" placeholder="Name">
                                </label>
                                <label>
                                    <textarea name="description" placeholder="Description"></textarea>
                                </label>
                                <button type="submit" class="btn">Save</button>
                            </form>
                        </div>
                    </div>
                    <form action="products" method="post">
                        <input type="hidden" name="_method" value="delete">
                        <input type="hidden" name="product" value="<%= product.getId() %>">
                        <button type="submit">Remove</button>
                    </form>
                </div>
            </div>
            <%
                }
            %>
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
<script>
    const modal = document.getElementById("myModal");

    const btn = document.getElementById("openModalBtn");

    const span = document.getElementsByClassName("close")[0];


    btn.onclick = function() {
        modal.style.display = "block";
    }

    span.onclick = function() {
        modal.style.display = "none";
    }
    window.onclick = function(event) {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    }

</script>
</body>
</html>