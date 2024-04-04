<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>
<%
    if(request.getParameter("submit") != null)
    {
        String name=request.getParameter("name");
        String contactNo=request.getParameter("contactNo");
        String address =request.getParameter("address");
        String shippingType =request.getParameter("shippingType");
        String productName =request.getParameter("productName");
        String quantity =request.getParameter("quantity");
        
    Connection con ;
    PreparedStatement pst ; 
    ResultSet rs ;

    Class.forName("com.mysql.cj.jdbc.Driver") ;
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql" , "root" , "");
    
    pst = con.prepareStatement("insert into orders(name,contactNo,address,shippingType,productName,quantity) values (?,?,?,?,?,?)");
    pst.setString(1,name);
    pst.setString(2,contactNo);
    pst.setString(3,address);
    pst.setString(4,shippingType);
    pst.setString(5,productName);
    pst.setString(6,quantity);  
    int rowsAffected = pst.executeUpdate();
    
%>
<script>
    alert("record addedd...");
    </script>
    <%
        }
    %>
  
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Order Form</title>
   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        body {
            margin: 20; 
            padding: 10;
            font-family: Arial, sans-serif;
            color: #fff;
            background: url('https://media.istockphoto.com/id/936693602/photo/abstract-blur-organic-fresh-fruits-and-vegetable-on-grocery-shelves-in-supermarket-store.jpg?s=612x612&w=0&k=20&c=NLGX262SYf50s4V3JLp7j7Sx_fEvomwvHtIcfqmpLwc=');
            background-size: cover;
            height: 100vh;
            display: flex;
            align-items: center;
        }

        .container {
            margin-top: 20px;
        }

        form, table {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 20px;
            color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.7);
            box-sizing: border-box;
        }

        form {
            width: 450px;
            margin-right: 50px;
        }

        table {
            width: calc(100% - 500px);
            margin-right: 80px;    
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border-radius: 10px;
        }

        input[type="submit"] {
            background-color: #F9A01B;
            color: #fff;
            cursor: pointer;
        }

        /*navbar*/
        body .navbar {
            background-color: #F9A01B;
            top: 0%;
            color: #000000;
            position: fixed;
            width: 100%;
            display: flex;
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
            margin-right: 8px;
            text-decoration: none;
        }
        .login-button:hover {
            background-color: #45a049;
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
    </div>
  </div>
</nav>
    <!-- End navbar -->
    <div class="container mt-5">
        <br/>
        <br/>
        <br/>
      <form>
                  <h3>Order details</h3>

        <div class="mb-3">
          <label for="name" class="form-label">Enter your name</label>
          <input type="text" class="form-control" id="name" name="name" required>
        </div>

        <div class="mb-3">
          <label for="contactNo" class="form-label">Contact Number</label>
          <input type="text" class="form-control" id="contactNo" name="contactNo" required>
        </div>
          
        <div class="mb-3">
          <label for="address" class="form-label">Country / Address</label>
          <input type="text" class="form-control" id="address" name="address" required>
        </div>
          
        <div class="mb-3">
          <label for="shippingType" class="form-label">Shipping Type </label>
            <select class="form-select" id="shippingType" name="shippingType" required>
                <optgroup label="Services">
                <option value="By Ship">By Ship</option>
                <option value="By Air">By Air</option>
              </optgroup>
            </select>
        </div>
          
        <div class="mb-3">
          <label for="productName" class="form-label">Product Name</label>
            <select class="form-select" id="productName" name="productName" required>
                <optgroup label="Fruits">
                    <option value="GreenGrapes">Green Grapes</option>
                    <option value="BlackGrapes">Black Grapes</option>
                    <option value="Banana">Banana</option>
                    <option value="Pomegranate">Pomegranate</option>
                </optgroup>
                <optgroup label="Vegetables">
                    <option value="Potato">Potato</option>
                    <option value="Tomato">Tomato</option>
                    <option value="RedOnion">Red Onion</option>
                    <option value="WhiteOnion">White Onion</option>
                    <option value="RedChilly">Red Chilly</option>
                    <option value="GreenChilly">Green Chilly</option>
                </optgroup>
            </select>
        </div>
                  
        <div class="mb-3">
          <label for="quantity" class="form-label">Quantity in kg.</label>
          <input type="text" class="form-control" id="quantity" name="quantity" required>
        </div>

        <div class="container">
          <button  value="submit" name="submit" class="btn btn-outline-success">Submit</button>
          <button type="submit" name="delete" class="btn btn-outline-danger">reset</button>
        </div>
      </form>
    </div>
      <br>
      <br>
      
    <div class="container">  
    <table class="table table-dark table-hover">
        
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">contactNo</th>
      <th scope="col">Address</th>
      <th scope="col">Shipping</th>
      <th scope="col">Product</th>
      <th scope="col">Quantity</th>
    </tr>
  </thead>
  <tbody>
   <% 
    Connection con ;
    PreparedStatement pst ; 
    ResultSet rs ;

    Class.forName("com.mysql.cj.jdbc.Driver") ;
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql" , "root" , "");

    String query = "Select * from orders";
    Statement st = con.createStatement();
    rs = st.executeQuery(query);
    while(rs.next()){
      String id = rs.getString("id");
    %>
          
    <tr>
        
      <th scope="row"><%=rs.getString("id")%></th>
      <td><%=rs.getString("name")%></td>
      <td><%=rs.getString("contactNo")%></td>
      <td><%=rs.getString("address")%></td>
      <td><%=rs.getString("shippingType")%></td>
      <td><%=rs.getString("productName")%></td>
      <td><%=rs.getString("quantity")%></td>

      <td><a href="update.jsp?id=<%=id%>">Edit</a></td>
      <td><button type="submit" name="delete" class="btn btn-outline-danger"><a href="delete.jsp?id=<%=id%>">delete</a></button></td>
    </tr>
    <%
        }
    %>
   
  </tbody>
</table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>
 