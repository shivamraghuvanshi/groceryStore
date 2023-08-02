<%@ page import="com.example.java.jpaconn.Grocery" %>
<%@ page import="java.util.List" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="com.example.java.jpaconn.prodRepo" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>

<%
ApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(application);
    prodRepo proddetail = context.getBean(prodRepo.class);
    List<Grocery> general = proddetail.findAll();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>BUY Groceries</title>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/index-styles.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
        }

        .list-group-item {
            display: flex;
            align-items: center;
            padding: 10px 20px;
            margin-bottom: 10px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s ease-in-out;
        }

        .list-group-item:hover {
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
        }

        .list-group-item img {
            width: 150px;
            height: 150px;
            object-fit: contain;
            border: 1px solid #ccc;
            padding: 5px;
        }

        .list-group-item-content {
            margin-left: 20px;
        }

        .list-group-item-title {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .list-group-item-quantity {
            font-size: 16px;
            margin-bottom: 5px;
        }

        .list-group-item-price {
            font-size: 18px;
            font-weight: bold;
            color: green;
            margin-bottom: 10px;
        }

        .btn-buy {
            background-color: #007bff;
            color: #fff;
            border: none;
        }

        .btn-buy:hover {
            background-color: #0056b3;
        }

        .navbar {
            background-color: rgba(0, 0, 0, 0.7);
        }

        .navbar-brand {
            color: #fff;
        }

        .nav-link {
            color: #fff;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Grocery Store</a>
        <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
            type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
            aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="products.jsp">Add items</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="productsdisplay.jsp">Products</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="help.jsp">HELP</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="login.jsp">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <h1 class="text-center my-5">Grocery Stock</h1>

    <div class="list-group">
        <%
        for (Grocery p : general) {
        %>
        <div class="list-group-item">
            <img src="<%= p.getProd_img() %>" alt="Grocery">
            <div class="list-group-item-content">
                <h2 class="list-group-item-title"><%= p.getProdname() %></h2>
                <p class="list-group-item-quantity"><%= p.getProd_quant() +" kg"%></p>
                <h4 class="list-group-item-price"><%= "Rs. " +p.getProd_price() %></h4>
                <form method="post" action="addtocart">
                    <input type="hidden" name="name" value="<%= p.getId() %>">
                </form>
                <form method="post" action="deletetocart">
                    <input type="hidden" name="name" value="<%= p.getId() %>">
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </div>
        </div>
        <% } %>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.17/dist/sweetalert2.min.js"></script>
</body>
</html>
