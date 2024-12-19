<%@page import="com.cart.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    User auth = (User) request.getSession().getAttribute("auth");
    if (auth != null) {
        response.sendRedirect("index.jsp");
    }
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if (cart_list != null) {
        request.setAttribute("cart_list", cart_list);
    }
    %>
<!DOCTYPE html>
<html>
<head>
<%@include file="/includes/head.jsp"%>
<title>Login | ASTU</title>
<link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU">
<style>
    body {
        background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
                    url('https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?w=1000') no-repeat center center fixed;
        background-size: cover;
        min-height: 100vh;
    }

    .container {
        padding-top: 50px;
    }

    .card {
        background: rgba(255, 255, 255, 0.9);
        backdrop-filter: blur(10px);
        border: none;
        border-radius: 15px;
        box-shadow: 0 15px 25px rgba(0,0,0,0.2);
        transition: transform 0.3s ease;
    }

    .card:hover {
        transform: translateY(-5px);
    }

    .card-header {
        background: linear-gradient(135deg, #007bff, #00bcd4);
        color: white;
        border-radius: 15px 15px 0 0 !important;
        padding: 20px;
        font-size: 1.5em;
        font-weight: 600;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    .form-control {
        border-radius: 10px;
        padding: 12px;
        border: 1px solid #ddd;
        transition: all 0.3s ease;
    }

    .form-control:focus {
        box-shadow: 0 0 15px rgba(0,123,255,0.3);
        border-color: #007bff;
    }

    .btn-primary {
        background: linear-gradient(135deg, #007bff, #00bcd4);
        border: none;
        border-radius: 10px;
        padding: 12px;
        font-weight: 600;
        text-transform: uppercase;
        letter-spacing: 1px;
        transition: all 0.3s ease;
    }

    .btn-primary:hover {
        transform: translateY(-2px);
        box-shadow: 0 5px 15px rgba(0,123,255,0.4);
        background: linear-gradient(135deg, #0056b3, #008ba3);
    }

    .form-group {
        margin-bottom: 25px;
    }

    label {
        font-weight: 500;
        margin-bottom: 8px;
        color: #333;
    }

    .text-muted {
        color: #666 !important;
        text-decoration: none;
        transition: color 0.3s ease;
    }

    .text-muted:hover {
        color: #007bff !important;
    }

    .sign-txt {
        margin: 15px 0;
        font-size: 0.95em;
    }

    .sign-txt a {
        color: #007bff;
        text-decoration: none;
        font-weight: 600;
        transition: all 0.3s ease;
    }

    .sign-txt a:hover {
        color: #0056b3;
        text-decoration: underline;
    }

    /* Social Login Buttons */
    .social-login {
        margin-top: 20px;
        padding-top: 20px;
        border-top: 1px solid #ddd;
    }

    .social-btn {
        width: 100%;
        padding: 12px;
        margin: 8px 0;
        border-radius: 10px;
        border: none;
        color: white;
        font-weight: 500;
        transition: all 0.3s ease;
    }

    .google-btn {
        background-color: #db4437;
    }

    .facebook-btn {
        background-color: #4267B2;
    }

    .social-btn:hover {
        opacity: 0.9;
        transform: translateY(-2px);
    }

    /* Loading animation for button */
    .btn-primary.loading {
        position: relative;
        pointer-events: none;
    }

    .btn-primary.loading:after {
        content: '';
        position: absolute;
        width: 20px;
        height: 20px;
        top: 50%;
        left: 50%;
        margin: -10px 0 0 -10px;
        border: 3px solid rgba(255,255,255,0.3);
        border-top-color: white;
        border-radius: 50%;
        animation: spin 1s linear infinite;
    }

    @keyframes spin {
        to {
            transform: rotate(360deg);
        }
    }
</style>
</head>
<body>
    <%@include file="/includes/navbar.jsp"%>

    <div class="container">
        <div class="card w-50 mx-auto my-5">
            <div class="card-header text-center">User Login</div>
            <div class="card-body">
                <form action="user-login" method="post" id="loginForm">
                    <div class="form-group">
                        <label><i class="fas fa-envelope"></i> Email address</label> 
                        <input type="email" name="login-email" class="form-control" placeholder="Enter email" required>
                    </div>
                    <div class="form-group">
                        <label><i class="fas fa-lock"></i> Password</label> 
                        <input type="password" name="login-password" class="form-control" placeholder="Password" required>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary w-100">Login</button>
                    </div>
                    <br>
                    <a class="small text-muted" href="#!"><center>Forgot password?</center></a>
                    <br>
                    <div class="sign-txt" style="text-align:center;">Not yet member? <a href="customerinsert.jsp">Signup now</a></div>
                    <div class="sign-txt" style="text-align:center;">Admin Click Here <a href="Adminlogin.jsp">Admin Login</a></div>

                    <!-- Social Login Section -->
                    <div class="social-login">
                        <button type="button" class="social-btn google-btn">
                            <i class="fab fa-google"></i> Continue with Google
                        </button>
                        <button type="button" class="social-btn facebook-btn">
                            <i class="fab fa-facebook-f"></i> Continue with Facebook
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <%@include file="/includes/footer.jsp"%>

    <script>
        // Add loading animation to button on form submit
        document.getElementById('loginForm').addEventListener('submit', function(e) {
            const button = this.querySelector('button[type="submit"]');
            button.classList.add('loading');
        });

        // Optional: Add floating animation to card
        const card = document.querySelector('.card');
        document.addEventListener('mousemove', function(e) {
            let xAxis = (window.innerWidth / 2 - e.pageX) / 25;
            let yAxis = (window.innerHeight / 2 - e.pageY) / 25;
            card.style.transform = `rotateY(${xAxis}deg) rotateX(${yAxis}deg)`;
        });
    </script>
</body>
</html>