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
            background-image: url('https://www.example.com/background.jpg'); /* Replace with your background image URL */
            background-size: cover;
            background-position: center;
            color: #fff;
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
        }

        h1 {
            font-size: 3rem;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
            color: #ffffff;
        }

        /* Optional: Adding a semi-transparent background to the text to enhance visibility */
        .message {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 20px;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="message">
            <h1>You have logged in successfully</h1>
        </div>
    </div>
</body>
</html>
