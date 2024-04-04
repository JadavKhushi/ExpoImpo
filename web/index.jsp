<%-- 
    Document   : index
    Created on : Jan 31, 2024, 9:27:59 a.m.
    Author     : ashu
--%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.net.URLDecoder" %>

<%
    Cookie[] cookies = request.getCookies();
    String username = null;

    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("UserName")) {
                username = URLDecoder.decode(cookie.getValue(), "UTF-8");
                break;
            }
        }
    }
%>

<!DOCTYPE html>
<html>
    <head> 
        <!--Bootstrap links-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-uVtWDL+dz5ag+t11aBjj7u3Aek1VSSmHTz2nFLKnxO0vfgVzv1kQQyXQ2b79+6T2" crossorigin="anonymous">
  
        <!--<link rel="stylesheet" type="text/css" href="styles.css">  Link to your custom styles -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        
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
        <style>
      
/* Dark mode styles */
body.dark-mode {
    background-color: #222222; /* Dark background color */
    color: #ffffff; /* Light color for text */
}

.banner.dark-mode {
    color: #ffffff; /* Light color for banner text */
}

.banner.dark-mode h1:hover,
.banner.dark-mode h2:hover,
.banner.dark-mode h3:hover {
    color: #151515; /* Dark color for banner text on hover */
    box-shadow: 0px 0 25px 0 rgba(0, 0, 0, 0.1);
    transform: translateY(-10px);
}

.banner.dark-mode p {
    color: #ffffff; /* Light color for banner text */
}
.icon-box.dark-mode h4{
    color: #151515;
}
.services.dark-mode icon-box:hover {
  border-color: #fff;
  box-shadow: 0px 0 25px 0 #F9A01B;
  transform: translateY(-10px);
}

.small-image {
    filter: invert(1); /* Invert image colors for dark mode */
}


/* banner style */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
        }

        .banner {
            position: relative;
            height: 700px; /* Adjust the height as needed */
            background-image: url('https://static.vecteezy.com/system/resources/previews/002/377/841/non_2x/vegetables-and-fruits-arrangement-with-black-space-free-photo.jpg'); /* Replace 'your-image.jpg' with your actual image file */
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
        .banner h1:hover{
            color: #151515;
              transition: all ease-in-out 0.3s;
              box-shadow: 0px 0 25px 0 rgba(0, 0, 0, 0.1);
            transform: translateY(-10px);

        }
        .banner h2:hover{
            color: #151515;
            box-shadow: 0px 0 25px 0 rgba(0, 0, 0, 0.1);
            transform: translateY(-10px);
        }
        .banner h3:hover{
            color: #151515;
            box-shadow: 0px 0 25px 0 rgba(0, 0, 0, 0.1);
            transform: translateY(-10px);
        }

        .banner p {
            font-size: 1.2em;
        }
        /*about us*/
        .about .content h3 {
            font-weight: 700;
            font-size: 28px;
            font-family: "Poppins", sans-serif;
        }
.about .content ul {
  list-style: none;
  padding: 0;
}

.about .content ul li {
  padding: 0 0 8px 26px;
  position: relative;
}

.about .content ul i {
  position: absolute;
  font-size: 20px;
  left: 0;
  top: -3px;
  color: #ffc451;
}

.about .content p:last-child {
  margin-bottom: 0;
}
 /* Add some basic styling to the footer */
        footer {
            background-color: #333;
            color: #fff;
            padding: 15 px;
            text-align: center;
            position: bottom;
            bottom: 5;
            height: 50px;
            width: 100%;
        }
        
section {
  padding: 60px 0;
  overflow: hidden;
}

.section-title {
    margin: 10;
  padding-bottom: 40px;
}

.section-title h2 {
  font-size: 14px;
  font-weight: 500;
  padding: 0;
  line-height: 1px;
  margin: 0 0 5px 0;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: #aaaaaa;
  font-family: "Poppins", sans-serif;
}

.section-title h2::after {
  content: "";
  width: 120px;
  height: 1px;
  display: inline-block;
  background: #F9A01B;
  margin: 4px 10px;
}

    .section-title p {
      margin: 0;
      margin: 0;
      font-size: 36px;
      font-weight: 700;
      text-transform: uppercase;
      font-family: "Poppins", sans-serif;
      color: #F9A01B;
    }
login-button{
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}
.login-button {
            padding: 10px 20px;
            margin-right: 10px;
            font-size: 16px;
            background-color: #F9A01B; /* orange */
            color: white;
            text-decoration: none; /* Remove default underline on anchor */
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .login-button:hover {
            background-color: #45a049; /* Darker green on hover */
        }
        .nav-item:hover{
            background-color: #F9A01B;
        }
        
        /*services*/
  .services .icon-box {
  text-align: center;
  border: 1px solid #ebebeb;
  padding: 80px 20px;
  transition: all ease-in-out 0.3s;
  background: #fff;
}
.services .icon-box .icon {
  margin: 0 auto;
  width: 64px;
  height: 64px;
  background: #ffc451;
  border-radius: 4px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 20px;
  transition: 0.3s;
}
.services .icon-box .icon i {
  color: #151515;
  font-size: 28px;
  transition: ease-in-out 0.3s;
}
.services .icon-box h4 {
  font-weight: 700;
  margin-bottom: 15px;
  font-size: 24px;
}
.services .icon-box h4 {
  color: #F9A01B;
  transition: ease-in-out 0.3s;
}
.services .icon-box h4 a:hover {
  color: #fff;    /*#ffc451*/
}
.services .icon-box p {
  line-height: 24px;
  font-size: 14px;
  margin-bottom: 0;
  color: #F9A01B;
}
.services .icon-box:hover {
  border-color: #F9A01B;
  box-shadow: 0px 0 25px 0 #F9A01B;
  transform: translateY(-10px);
}
.small-image {
  width: 100%; /* Set the width of the image to 100% of its container */
  max-width: 400px; /* Set a maximum width for the image */
  height: auto; /* Maintain the aspect ratio of the image */
}
.p .time{
  font-family: "Poppins", sans-serif;
  color: #F9A01B;
  font-size: 10px;
}
.time{
    color: #F9A01B;
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
    <a class="navbar-brand" href="#">Hiral Overseas</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#about">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#services">Services</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#contact">Contact Us</a>
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
    </div>
            <div>

            <%
        Date lastLoginTime =(Date) session.getAttribute("lastLoginTime");
        if(lastLoginTime != null){
        
           
        %>
        <p class="time">LOGIN TIME: <%= formatLastLoginTime(lastLoginTime)%></p>
        <%
        }
        %>
        
        <%! 
            public String formatLastLoginTime(Date lastLoginTime)
            {
                SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                return sdf.format(lastLoginTime);
            }
         %>
           </div>
 </div>
            <a class="login-button" href="LogoutServlet">Logout</a>
</nav>
       
        <!-- Banner div -->
         
            <div class="row justify-content-center">
            <div class="col-md-6">
                <div id="toggle-container" class="text-center mt-3 mb-3">
                    <button id="dark-mode-toggle" class="btn btn-dark">Dark Mode</button>
                    <button id="light-mode-toggle" class="btn btn-light">Light Mode</button>
                </div>  
            </div>
        </div>
        <div class="banner">
            <h3>Welcome <%= username %></h3>
                <% if (username != null) { %>
                <% } else { %>
            <p>Username not available from the cookie.</p>
                <% } %>
            <h1><b>Hiral Overseas</b></h1>
        <h2>Exporter of Fruit and Vegetables from India</h2>
    
    </div>
        <!-- End Banner div -->
       
       <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
            <img src="assets/container.jpg" class="img-fluid" alt="Source img">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-right" data-aos-delay="100">
            <h3>About Us</h3>
            <p class="fst-italic">
             Hiral Overseas is one of the Leading Fresh Vegetables and Fruits Exporters from India. We are the main Exporter of the Fresh Vegetables and Fresh Fruits. We significantly bargain in Vegetables like Fresh Chili, Fresh Lemon, Fresh Red Onion, Fresh Tomato, Fresh Potato, Fresh Mango, Fresh Banana, Fresh Grapes, Fresh Pomegranate and so on.

            Hiral Overseas is fresh fruits suppliers from India also Export (India), seizing the opportunity, began our business journey in the aquaculture business line as an exporter and wholesaler of fresh fruits and vegetables exporters from india. The quality approved assortment of vegetables that we offer has helped us set up a large customer base in different areas including food businesse. our company is offering Fresh Vegetables and Fresh Fruits in the market. Fresh Fruits exporters from india like Pomegranate, Grapes, Mangoes, Tomatoes, Onions, Green Chilies, Lemons and Green and organic fresh vegetables exporters from india.
            </p>
            <ul>
              <li><b> 100% Natural</b></li>
              <p>We supplies only the real thing to our customers and we are dedicated to offering fresh and healty fruits and vegetables to our customers.</p>
              <li><b> Organic Products</b></li>
                <p>All our products are fully certified organic, grown according to international standards, and packed in compostable and renewable packaging materials.</p>
              <li><b> Best Quality</b></li>
                <p>We have the highest quality standards which all our produce must meet in order to be fit for your table.</p>
            </ul>
            <p>
              We ensure that we deliver always best quality products.
            </p>
          </div>
        </div>  

      </div>
    </section><!-- End About Section -->

    <!-- Features -->
    <section id="features" class="features">
      <div class="container" data-aos="fade-up">
          <div class="section-title">
          <h2>Features</h2>
          <p>Check our Facilities</p>
        </div>
<center>
<video width="900" height="400" controls autoplay>
  <source src="assets/HIRAL OVERSEAS.mp4" type="video/mp4">
  
</video>
</center>
<br>
<br>
 <div class="row">
          <div class="image col-lg-6" style='background-image: url("https://images.thequint.com/thequint-fit%2F2019-07%2F62f58322-1a6a-4207-acbf-3fab5a5acd27%2FDifferent_Kinds_of_Fruits_QuintFit.jpg?rect=0%2C0%2C1260%2C709");' data-aos="fade-right"></div>
          <div class="col-lg-6" data-aos="fade-left" data-aos-delay="100">
            <div class="icon-box mt-5 mt-lg-0" data-aos="zoom-in" data-aos-delay="150">
              <i class="bx bx-receipt"></i>
              <h4>Well Packing Process</h4>
              <p>We deliver you perfect packed order.</p>
            </div>
            <div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
              <i class="bx bx-cube-alt"></i>
              <h4>High Quality</h4>
              <p>Best guarented products</p>
            </div>
            <div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
              <i class="bx bx-images"></i>
              <h4>Collection</h4>
              <p>Our collection of products is best forever.</p>
            </div>
            <div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
              <i class="bx bx-shield"></i>
              <h4>Certified</h4>
              <p>Our brand have all verification certificates like APEDA, GST,etc.</p>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Features Section -->
    
    <!-- services -->
    <section id="services" class="services">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Services</h2>
          <p>Check our Services</p>
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
<script src="https://code.iconify.design/iconify-icon/1.0.3/iconify-icon.min.js"></script>
              <div class="icon"><iconify-icon icon="mdi:shield-airplane"></iconify-icon></div>
              <h4>By Air</h4>
              <p><b>We export products by air. It is very fast and facilitate.</b></p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="zoom-in" data-aos-delay="300">
            <div class="icon-box">
<script src="https://code.iconify.design/iconify-icon/1.0.3/iconify-icon.min.js"></script>
              <div class="icon"><iconify-icon icon="majesticons:ship"></iconify-icon></div>
              <h4>By ship</h4>
              <p><b>All type of container are provided for shipping.</b></p>
            </div>
          </div>
     </div>
    </section><!-- End Services Section -->
    
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
  <div class="container" data-aos="fade-up">
    <div class="section-title">
      <h2>Contact</h2>
      <p>Contact Us</p>
    </div>
    <div class="row mt-5 clearfix">
      <div class="col-lg-4">
        <img src="https://cdni.iconscout.com/illustration/premium/thumb/virtual-assistant-5656806-4715347.png" class="small-image"> 
      </div>
      <div class="col-lg-8 mt-5 mt-lg-0">  
        <div class="info">
          <div class="address">
            <i class="bi bi-geo-alt"></i>
            <h4>Location:</h4>
            <p>150 Foot Ring Road, Ramapir Chok, Suvarna Complex, Shop No.8, Ground Floor, Gandhigram, Rajkot - 360007, Gujarat, India</p>
          </div>

          <div class="email">
            <i class="bi bi-envelope"></i>
            <h4>Email:</h4>
            <p><a href="mailto:hiral.overseas@gmail.com">hiral.overseas@gmail.com</a></p>
          </div>

          <div class="phone">
            <i class="bi bi-phone"></i>
            <h4>Call:</h4>
            <p><a href="tel://9898694554">+91 98926 99354</a></p>
          </div>

        </div>
      </div>
    </div>

  </div>
</section>

    <!-- End Contact Section -->
    
     <!-- Footer section -->
    <footer>
        <p>&copy; 2024 HIRAL OVERSEAS All rights reserved.</p>
    </footer>
     
     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
     
    </body>
    
    
</html>
