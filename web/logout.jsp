<%-- 
    Document   : logout
    Created on : Mar 14, 2024, 10:56:41 a.m.
    Author     : ashu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SignOut</title>
        <style>
            body {
            margin: 5;
            padding: 10;
            font-family: Arial, sans-serif;
            background: url('https://img.freepik.com/premium-photo/realistic-blur-background-store-department-store-supermarket-grocery-store-ai-generated-image_532963-7113.jpg') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            width: 200vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        form {
            color: #fff;
            background-color: rgba(00, 00, 00, 0.8);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.7);
            width: 300px;
            box-sizing: border-box;
            transition: all ease-in-out 0.3s;
        }
        form:hover{
            border-color: #fff;
            box-shadow: 0px 0 25px 0 rgba(0, 0, 0, 0.8);
            transform: translateY(-10px);
        }
        .link{
            color: azure;
        }
        .link:hover{
            color: blue;
        }
        </style>
        
    </head>
    
    <body>
        <form>       
            <h1>You are Signed Out!</h1>
            <a class="link" href="login.jsp">For sign in again</a>
        </form>
    </body>
</html>
