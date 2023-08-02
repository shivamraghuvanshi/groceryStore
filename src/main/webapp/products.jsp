<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Add Product</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

  <!-- Font Awesome CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

  <!-- Custom CSS -->
<style>
    body {
      padding: 50px;
      background-color: #f9f9f9;
    }

    .form-container {
      max-width: 500px;
      margin: 0 auto;
      background-color: #ffffff;
      padding: 30px;
      border-radius: 5px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }

    .form-container h2 {
      text-align: center;
      margin-bottom: 30px;
      color: #333333;
    }

    .form-container .form-group label {
      font-weight: 600;
      color: #333333;
    }

    .form-container .btn-primary {
      width: 100%;
      background-color: #007bff;
      border-color: #007bff;
    }

    .form-container .btn-primary:hover {
      background-color: #0069d9;
      border-color: #0062cc;
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
    <div class="form-container">
      <h2>Add Groceries</h2>
      <form method="post" action="/addproductcontroller">
        <div class="form-group">
          <label for="product-name">Product Name</label>
          <input type="text" name="product-name" id="product-name" class="form-control" required>
        </div>
        <div class="form-group">
          <label for="product-price">Product Price</label>
          <input type="number" name="product-price" id="product-price" class="form-control" required>
        </div>
        <div class="form-group">
          <label for="product-quantity">Product Quantity</label>
          <input type="number" name="product-quantity" id="product-quantity" class="form-control" required>
        </div>
        <div class="form-group">
          <label for="product-image">Image link</label>
          <input type="text" name="product-image" id="product-image" class="form-control" required>
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-primary">Add Product</button>
        </div>
      </form>
    </div>
  </div>

	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
	var status=document.getElementById("status").value;

	</script>	
  <!-- Bootstrap JS -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
