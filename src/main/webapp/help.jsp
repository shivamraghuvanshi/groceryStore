<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Help - Grocery Store</title>
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
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
       
        <h2 class="mt-4">Frequently Asked Questions</h2>
        
        <h3 class="mt-3">1. How can I place an order?</h3>
        <p>To place an order, follow these steps:</p>
        <ol>
            <li>Visit our website and browse the available products.</li>
            <li>Add the desired items to your shopping cart.</li>
            <li>Proceed to the checkout page.</li>
            <li>Enter your shipping and payment information.</li>
            <li>Review your order and click on the "Place Order" button.</li>
        </ol>
        
        <h3 class="mt-3">2. Can I modify or cancel my order?</h3>
        <p>Yes, you can modify or cancel your order before it has been processed for delivery. To do so, please contact our customer support team with your order details.</p>
        
        <h3 class="mt-3">3. What payment methods do you accept?</h3>
        <p>We accept various payment methods, including credit/debit cards and online payment systems such as PayPal. At the checkout page, you can select your preferred payment option.</p>
        
        <h3 class="mt-3">4. How long does it take to receive my order?</h3>
        <p>The delivery time may vary depending on your location and other factors. Generally, we strive to deliver orders within 1-3 business days. You can track your order using the provided tracking number.</p>
        
        <h2 class="mt-4">Contact Us</h2>
        
        <p>If you have any other questions or need further assistance, feel free to reach out to our customer support team:</p>
        <ul>
            <li>Phone: 123-456-7890</li>
            <li>Email: support@grocerystore.com</li>
            <li>Live Chat: Visit our website and click on the "Chat" icon in the bottom right corner.</li>
        </ul>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
