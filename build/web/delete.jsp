<%-- 
    Document   : delete
    Created on : 24-Jan-2024, 10:17:23 am
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>

<%
    
    String id=request.getParameter("id");    
  
        
        
    Connection con ;
    PreparedStatement pst ; 
    ResultSet rs ;

    Class.forName("com.mysql.cj.jdbc.Driver") ;
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql" , "root" , "");

    pst = con.prepareStatement("Delete from orders where id =?" );
    pst.setString(1,id);
    pst.executeUpdate();
    
%>
<script>
    alert("record Deleted...");
    </script>
   
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Order Form</title>
   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
  <body>
      <a href="viewOrders.jsp"> back go to page </a>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>
