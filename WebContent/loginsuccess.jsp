<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.Adminlogin.DAO.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>ASTU</title>
    <link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('images/Injera_with_eight_kinds_of_stew.jpg');
            background-size: cover;
            background-position: center;
            color: #ffffff;
            margin: 0;
            padding: 0;
            height: 100vh;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
            text-align: center;
            margin-top: -10px;
        }

        h1 {
            font-size: 3rem;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
            color: #ffffff;
        }
        .message {
            backdrop-filter: blur(3px);
            padding: 20px;
            border-radius: 10px;
        }
        h1 {
            color: #14b491;
        }
        p{
            color: rgb(222, 231, 223);
            font-size: x-large;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="message">
            <h1>Welcome Back!</h1>
            <p>You have successfully logged in.</p>
            
        </div>
    </div>
</body>
</html>
