<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Welcome to our Grocery Store</title>

    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-image: url('https://wallpapers.com/images/featured/brhr0v0zqqxvtafp.jpg');
            background-repeat: no-repeat;
            background-size: cover;
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

        .masthead {
            padding-top: 10rem;
            padding-bottom: 6rem;
            background-color: rgba(0, 0, 0, 0.5);
            color: #fff;
        }

        .masthead-heading {
            font-size: 2.5rem;
            line-height: 2.5rem;
        }

        .masthead-avatar {
            width: 20rem;
            height: 20rem;
            border-radius: 50%;
            object-fit: cover;
        }

        .divider-custom {
            position: relative;
            margin: 3rem 0;
        }

        .divider-custom .divider-custom-line {
            width: 100%;
            max-width: 7rem;
            height: 0.25rem;
            background-color: #fff;
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            bottom: 0;
        }

        .divider-custom .divider-custom-icon {
            width: 2.5rem;
            height: 2.5rem;
            font-size: 1.25rem;
            line-height: 2.5rem;
            background-color: #fff;
            color: #1a1a1a;
            border-radius: 50%;
            position: absolute;
            top: -0.75rem;
            left: 50%;
            transform: translateX(-50%);
        }
    </style>
</head>
<body id="page-top">

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
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="help.jsp">Help</a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="login.jsp">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>


        <div class="container d-flex align-items-center flex-column bg-light">

            <img class="masthead-avatar mb-5" src="https://images.unsplash.com/photo-1578916171728-46686eac8d58?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGdyb2NlcnklMjBzdG9yZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80" alt="Background Image" />

            <h1 class="masthead-heading text-uppercase mb-0 text-dark">We Offer you the best possible deal</h1>

            <div class="divider-custom divider-light">
                <div class="divider-custom-line"></div>
                <div class="divider-custom-icon">
                    <i class="fas fa-star"></i>
                </div>
                <div class="divider-custom-line"></div>
            </div>
        </div>
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <script src="js/scripts.js"></script>

    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
