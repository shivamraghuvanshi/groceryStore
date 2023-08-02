<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Login Form</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- Font Icon -->
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
<style>
    body {
      background-color: #f5f5f5;
    }

    .card {
      border: none;
      border-radius: 10px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }

    .card-title {
      color: #333;
      font-size: 24px;
      margin-bottom: 30px;
    }

    .form-control {
      border-radius: 20px;
    }

    .btn-primary {
      background-color: #c7225e;
      border-color:#c7225e;
    }

    .btn-primary:hover,
    .btn-primary:focus {
      background-color: #c7225e;
      border-color: #c7225e;
    }

    a {
      color: #428bca;
    }

    a:hover {
      color: #2a6496;
    }
  </style>
</head>
<body>
	<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">

	<div class="container d-flex align-items-center justify-content-center vh-100">
		<div class="card">
			<div class="card-body text-center">
				<h2 class="card-title">Sign in</h2>
				<form method="post" action="login" class="register-form" id="login-form">
					<div class="form-group">
						<label for="username">Your Name</label>
						<input type="text" name="username" id="username" class="form-control" placeholder="Your Name" />
					</div>
					<div class="form-group">
						<label for="password">Password</label>
						<input type="password" name="password" id="password" class="form-control" placeholder="Password" />
					</div>
					<div class="form-group">
						<input type="submit" name="signin" id="signin" class="btn btn-primary btn-block" value="Log in" />
					</div>
					<div class="form-group">
						<p>Don't have an account? <a href="registration.jsp">Create an Account</a></p>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script type="text/javascript">
	var status=document.getElementById("status").value;
	if(status=="failed"){
		console.log("HELLO")
		Swal.fire("Sorry"," Wrong Username Or Password","error");
	}
	</script>
</body>
</html>
