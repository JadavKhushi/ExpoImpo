<%-- 
    Document   : Fruits
    Created on : Jan 31, 2024, 10:53:27 a.m.
    Author     : ashu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Indian Fruits</title>
        
        <!--Bootsrap Links-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
            document.addEventListener("DOMContentLoaded", function() {
            const darkModeToggle = document.getElementById("dark-mode-toggle");
            const lightModeToggle = document.getElementById("light-mode-toggle");
            const body = document.body;

            darkModeToggle.addEventListener("click", function() {
               body.classList.add("bg-dark", "text-light");
                darkModeToggle.classList.add("btn-light");
                darkModeToggle.classList.remove("btn-dark");
                lightModeToggle.classList.add("btn-dark");
                lightModeToggle.classList.remove("btn-light");
            });

        lightModeToggle.addEventListener("click", function() {
            body.classList.remove("bg-dark", "text-light");
            darkModeToggle.classList.remove("btn-light");
            darkModeToggle.classList.add("btn-dark");
            lightModeToggle.classList.remove("btn-dark");
            lightModeToggle.classList.add("btn-light");
        });
    });
        </script>
        <!-- Line style -->
        <style>
        .line-between-paragraphs::before {
            content: "";
            display: block;
            height: 2px; /* Adjust the height of the line as needed */
            background-color: #F9A01B; /* Line color */
            margin: 20px 0; /* Adjust the margin to control the space above and below the line */
        }
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
        }
        .banner {
            position: relative;
            height: 250px; /* Adjust the height as needed */
            background-image: url('https://www.shutterstock.com/image-photo/vegetables-on-black-background-water-260nw-594318407.jpg'); /* Replace 'your-image.jpg' with your actual image file */
            background-size: cover;
            color: #F9A01B;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .banner h1 {
            font-size: 2.5em;
            margin-bottom: 10px;
        }
        .banner p {
            font-size: 1.2em;
        }
        
        /*navbar*/
        
.navbar {
            background-color: #F9A01B;
            color: #000000;
            padding: 10px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand {
            color: #000000;
            font-weight: bold;
        }
        .navbar-brand:hover{
            color: #F0C14B;
        }

        .navbar-nav .nav-link {
            color: #000000;
            margin-right: 15px;
        }

        .navbar-nav .nav-link:hover {
            color: #F0C14B;
        }

        /* Login Button Styles */
        .login-button {
            color: #fff;
            background-color: #F9A01B;
            border: none;
            padding: 8px 15px;
            border-radius: 5px;
            margin-left: 10px;
            text-decoration: none;
        }

        .login-button:hover {
            background-color: #45a049;
        }
        .card{
            transition: all ease-in-out 0.3s;
        }
        .card .dark-mode{
            color: #aaaaaa;
            background-color: #ffc451;
        }
        .card:hover{
            border-color: #F9A01B;
            box-shadow: 0px 0 25px 0 #F9A01B;
            transform: translateY(-10px);
        }
        
        .btn-warning:hover{
            background-color: #45a049;
        }
        /* Dark mode styles */
        body.dark-mode {
            background-color: #222222;
            color: #ffffff;
        }
    </style>
    
    </head>
    
    <body>
        
        <!--navbar-->
        <nav class="navbar navbar-expand-lg bg-body-tertiary">  
  <div class="container-fluid">
      <a class="navbar-brand" href="#">
      <img src="assets/logo.jpg" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
    </a>
      
    <a class="navbar-brand" href="index.jsp">Hiral Overseas</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Product details
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="Fruits.jsp">Fresh Fruits</a></li>
            <li><a class="dropdown-item" href="Vegetables.jsp">Fresh Vegetables</a></li>
          </ul>
        </li>
      </ul>
      <button id="dark-mode-toggle" class="btn btn-dark">Dark Mode</button>
      <button id="light-mode-toggle" class="btn btn-light">Light Mode</button> 
    </div>
  </div>
</nav>
        
        <!-- Banner div -->
        <div class="banner">
        <h1>INDIAN FRUITS</h1>
    </div>
        <!-- End Banner div -->
        
        <!-- Cards -->
        <br>
        <div class="container">
    <div class="row">
        <div class="col-md-6">
            <!-- Potato -->
            <div class="card" style="width:30rem;">
                <img src="assets/grapes.jpg" class="card-img-top" alt="Potato">
                <div class="card-body">
                    <h5 class="card-title">Green grapes</h5>
                    <p class="card-text"><b>Size : </b> 30 mm to 50 mm && 50 mm to 60 mm
                        <br> <b>Packing : </b> 1 kg, 2 kg, 5 kg, 10 kg, 20 kg, Mesh Bag
                    <br> <h4>About Onion</h4>Hiral Overseas well known exporter of Onion to Sri Lanka, Malaysia and United Arab Emirates and is the largest exporter of Onion in the World.
                    </p>
                    <a href="viewOrders.jsp" class="btn btn-warning">Order Product</a>
                </div>
            </div>
        </div>
        <!-- End grapes -->
        
        <!-- Black grapes -->
        <div class="col-md-6">
            <div class="card" style="width: 30rem;">
                <img src="assets/grapes1.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Black Grapes</h5>
                    <p class="card-text"><b>Size : </b> 30 mm to 50 mm && 50 mm to 60 mm
                        <br> <b>Packing : </b> 1 kg, 2 kg, 5 kg, 10 kg, 20 kg, Mesh Bag
                    <br> <h4>About Onion</h4>Hiral Overseas well known exporter of Onion to Sri Lanka, Malaysia and United Arab Emirates and is the largest exporter of Onion in the World.
                    </p>
                    <a href="viewOrders.jsp" class="btn btn-warning">Order Product</a>
                </div>
            </div>
        </div>
        <!-- End Black grapes -->
    </div>
            
            <div class="line-between-paragraphs"></div>
            
            <div class="row">
                <!-- banana -->
            <div class="col-md-6">
            <div class="card" style="width:30rem;">
                <img src="assets/banana1.jpg" class="card-img-top" alt="Red Onion">
                <div class="card-body">
                    <h5 class="card-title">Banana</h5>
                    <p class="card-text"><b>Size : </b> 30 mm to 50 mm && 50 mm to 60 mm
                        <br> <b>Packing : </b> 1 kg, 2 kg, 5 kg, 10 kg, 20 kg, Mesh Bag
                    <br> <h4>About Banana</h4>Hiral Overseas well known exporter of Onion to Sri Lanka, Malaysia and United Arab Emirates and is the largest exporter of Onion in the World.
                    </p>
                    <a href="viewOrders.jsp" class="btn btn-warning">Order Product</a>
                </div>
            </div>
        </div>
                <!-- End Banana -->

        <!-- pomogranate -->
        <div class="col-md-6">
            <div class="card" style="width: 30rem;">
                <img src="assets/01-05.jpg" class="card-img-top" alt="White Onion">
                <div class="card-body">
                    <h5 class="card-title">Pomogranate</h5>
                    <p class="card-text"><b>Size : </b> 30 mm to 50 mm && 50 mm to 60 mm
                        <br> <b>Packing : </b> 1 kg, 2 kg, 5 kg, 10 kg, 20 kg, Mesh Bag
                    <br> <h4>About Pomogranate</h4>Hiral Overseas well known exporter of Onion to Sri Lanka, Malaysia and United Arab Emirates and is the largest exporter of Onion in the World.
                    </p>
                    <a href="viewOrders.jsp" class="btn btn-warning">Order Product</a>
                </div>
            </div>
        </div>
    </div>
            
    </div>
            
</div>
        <!--  End Cards -->
    </div>
    </body>
</html>
