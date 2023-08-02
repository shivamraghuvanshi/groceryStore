<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- Font Icon -->
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="css/style.css">
<style>
    body {
      background-color: #f8f9fa;
    }

    .card {
      margin-top: 100px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.12);
    }

    .card-title {
      font-size: 28px;
      color: #333;
      font-weight: bold;
      margin-bottom: 30px;
    }

    .form-control {
      height: 50px;
      font-size: 16px;
      color: #555;
      border: 1px solid #ccc;
      border-radius: 0;
      padding-left: 20px;
      background-color: #fff;
    }

    .form-control:focus {
      box-shadow: none;
      border-color: #fd367e;
    }

    .form-group label {
      font-size: 20px;
      color: #333;
      margin-right: 10px;
    }

    .form-submit {
      width: 100%;
      height: 50px;
      font-size: 18px;
      font-weight: bold;
      color: #fff;
      background-color: #fd367e;
      border: none;
      border-radius: 25px;
      text-transform: uppercase;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .form-submit:hover {
      background-color: #c7225e;
    }

    .text-center {
      text-align: center;
    }

    .text-center a {
      color: #fd367e;
    }

    .text-center a:hover {
      color: #c7225e;
    }
  </style>
</head>
<body>
	<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-lg-6 col-md-8">
				<div class="card">
					<div class="card-body">
						<h2 class="card-title text-center">Sign up</h2>
						<form method="post" action="/register" class="register-form" id="register-form">
							<div class="form-group">
								<label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
								<input type="text" name="name" id="name" placeholder="  Your Name" class="form-control" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label>
								<input type="email" name="email" id="email" placeholder="  Your Email" class="form-control" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label>
								<input type="password" name="pass" id="pass" placeholder="  Password" class="form-control" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass" placeholder="  Repeat your password" class="form-control" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact" placeholder="  Contact no" class="form-control" />
							</div>
							<div class="form-group form-button text-center">
								<input type="submit" name="signup" id="signup" class="form-submit btn btn-primary" value="Register" />
							</div>
						</form>
						<p class="text-center">Already have an account? <a href="login.jsp">Sign in</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script type="text/javascript">
	var status=document.getElementById("status").value;
	if(status=="success"){
		console.log("HELLO")	
		Swal.fire("Congrats","Account Created Successfully","success");
	}
	</script>
</body>
</html>
