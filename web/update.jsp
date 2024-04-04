<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>

<%
    if(request.getParameter("submit") != null)
    {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String contactNo = request.getParameter("contactNo");
        String address = request.getParameter("address");
        String shippingType = request.getParameter("shippingType");
        String productName = request.getParameter("productName");
        String quantity = request.getParameter("quantity");

        Connection con;
        PreparedStatement pst;
        ResultSet rs;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "");

            pst = con.prepareStatement("update orders set name=?, contactNo=?, address=?, shippingType=?, productName=?, quantity=? where id=?");
            pst.setString(1, name);
            pst.setString(2, contactNo);
            pst.setString(3, address);
            pst.setString(4, shippingType);
            pst.setString(5, productName);
            pst.setString(6, quantity);
            pst.setString(7, id);
            pst.executeUpdate();
            con.close();
        } catch (Exception e) {
            out.println(e);
        }
%>
<script>
    alert("record updated...");
</script>
<%
    }
    // Fetch user data from the database
    String id = request.getParameter("id");
    String name = "";
    String contactNo = "";
    String address = "";
    String shippingType = "";
    String productName = "";
    String quantity = "";

    Connection con;
    PreparedStatement pst;
    ResultSet rs;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "");
        pst = con.prepareStatement("Select * from orders where id=?");
        pst.setString(1, id);
        rs = pst.executeQuery();
        if (rs.next()) {
            name = rs.getString("name");
            contactNo = rs.getString("contactNo");
            address = rs.getString("address");
            shippingType = rs.getString("shippingType");
            productName = rs.getString("productName");
            quantity = rs.getString("quantity");
        }
        con.close();
    } catch (Exception e) {
        out.println(e);
    }
%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Update Order Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        body {
            margin-right: 50px;
            padding: 10;
            font-family: Arial, sans-serif;
            color: #fff;
            background: url('https://media.istockphoto.com/id/936693602/photo/abstract-blur-organic-fresh-fruits-and-vegetable-on-grocery-shelves-in-supermarket-store.jpg?s=612x612&w=0&k=20&c=NLGX262SYf50s4V3JLp7j7Sx_fEvomwvHtIcfqmpLwc=') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            width: 200vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        form {
            background-color: rgba(00, 00, 00, 0.8);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.7);
            width: 400px;
            box-sizing: border-box;
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

        .form-select{
            cursor: pointer;
        }
        .form-select option {
            color: blue;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Update Order Details</h1>
    <h3><a href="viewOrders.jsp"> Go back to Orders </a></h3>
    <form method="post">
        <input type="hidden" name="id" value="<%= id %>">
        <div class="mb-3">
            <label for="name" class="form-label">Enter your name</label>
            <input type="text" class="form-control" id="name" name="name" value="<%= name %>" required>
        </div>

        <div class="mb-3">
            <label for="contactNo" class="form-label">contactNo</label>
            <input type="text" class="form-control" id="contactNo" name="contactNo" value="<%= contactNo %>" required>
        </div>

        <div class="mb-3">
            <label for="address" class="form-label">Country /Address</label>
            <input type="text" class="form-control" id="address" name="address" value="<%= address %>" required>
        </div>

        <div class="mb-3">
            <label for="shippingType" class="form-label">Shipping Type</label>
            <input type="text" class="form-control" id="shippingType" name="shippingType" value="<%= shippingType %>" required>
        </div>

        <div class="mb-3">
            <label for="productName" class="form-label">Product Name</label>
            <select class="form-select" id="productName" name="productName" required>
                <optgroup label="Fruits">
                    <option value="GreenGrapes" <%= productName.equals("GreenGrapes") ? "selected" : "" %>>Green Grapes</option>
                    <option value="BlackGrapes" <%= productName.equals("BlackGrapes") ? "selected" : "" %>>Black Grapes</option>
                    <option value="Banana" <%= productName.equals("Banana") ? "selected" : "" %>>Banana</option>
                    <option value="Pomegranate" <%= productName.equals("Pomegranate") ? "selected" : "" %>>Pomegranate</option>
                </optgroup>
                
                <optgroup label="Vegetables">
                    <option value="Potato" <%= productName.equals("Potato") ? "selected" : "" %>>Potato</option>
                    <option value="Tomato" <%= productName.equals("Tomato") ? "selected" : "" %>>Tomato</option>
                    <option value="RedOnion" <%= productName.equals("RedOnion") ? "selected" : "" %>>Red Onion</option>
                    <option value="WhiteOnion" <%= productName.equals("WhiteOnion") ? "selected" : "" %>>White Onion</option>
                    <option value="RedChilly" <%= productName.equals("RedChilly") ? "selected" : "" %>>Red Chilly</option>
                    <option value="GreenChilly" <%= productName.equals("GreenChilly") ? "selected" : "" %>>Green Chilly</option>
                </optgroup>
</select>
        </div>
      
        <div class="mb-3">
          <label for="quantity" class="form-label">Quantity</label>
          <input type="text" class="form-control" id="quantity" name="quantity" placeholder="ex.50kg" value="<%= quantity %>" required>
        </div>

        <div class="container">
          <button  value="submit" name="submit" class="btn btn-outline-success">Submit</button>
          <button type="reset" class="btn btn-outline-danger">Reset</button>
          
        </div>
      </form>
    </div>
  </body>
</html>

