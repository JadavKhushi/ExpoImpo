<%-- 
    Document   : login
    Created on : Jan 26, 2024, 11:33:24 p.m.
    Author     : ashu
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--Bootstrap links-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        
    <title>Sign In</title>
    
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
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 10px;
            color: #000000;
            margin-bottom: 15px;
            box-sizing: border-box;
            border-radius: 10px;
        }

        input[type="submit"] {
            background-color: #F9A01B;
            cursor: pointer;
        }
              
    </style>
</head>

<body>
    
        <form action="LoginServlet" method="post">
            <h2><i>Hiral Overseas</i></h2>
            <h3> Sign In </h3>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="SignIn">
            <h6>Sign in for go forward!</h6>
            <a href="register.jsp">Do not have an account?</a>
        </form>
    
</body>
</html>
