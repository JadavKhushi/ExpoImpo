<%-- 
    Document   : register
    Created on : Jan 27, 2024, 12:01:16 a.m.
    Author     : ashu
--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        
    <style>
        body {
            margin: 5;
            padding: 10;
            font-family: Arial, sans-serif;
            background: url('https://img.freepik.com/premium-photo/table-full-fruits-with-blurred-background_188544-12286.jpg') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            width: 200vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        form {
            
            background-color: rgba(00, 00, 00, 0.8);
            color: #fff;
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
            cursor: pointer;
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
        
    </style>
</head>
<body>
    
    <form action="RegistrationServlet" method="post">
        <center><h2><i>Hiral Overseas</i></h2></center>
            <h3> Sign Up </h3>
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>

        <label for="email">Email </label>
        <input type="email" id="email" name="email" placeholder="abc@example.com" required>

        <label for="name">Full Name</label>
        <input type="text" id="name" name="name" required>

        <input type="submit" value="Sign Up">
            <a href="login.jsp">You have an account?</a>
    </form>
</body>
</html>


<!-- Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
