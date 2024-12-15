<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">

<!-- Font Awesome -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
  rel="stylesheet"
/>
<!-- Google Fonts -->
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css"
  rel="stylesheet"
/>
<title>Admin Login | ASTU</title>
<link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU">
<style>
    /* Full-page background */ 
    body {
    background: url("images/Traditional_Ethiopian_food_is_eaten_with_the_hands.png") no-repeat center center fixed;
    background-size: cover;
    }

    /* Card shadow and border radius */
    .card {
        border-radius: 1rem;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    /* Card header image adjustments */
    .card img {
        object-fit: cover;
        height: 100%;
        max-height: 100%;
    }

    /* Button hover effect */
    .btn-dark:hover {
        background-color: #444;
    }

    /* 3D Logo Styling */
    .logo-3d {
      height: 60px;
      margin-right: 15px;
      border-radius: 10px; /* Adds slight rounding to the corners */
      box-shadow: 4px 4px 10px rgba(0, 0, 0, 0.2), -4px -4px 10px rgba(255, 255, 255, 0.5); /* Adds 3D shadow effect */
      transition: transform 0.3s, box-shadow 0.3s; /* Smooth animation for hover effect */
    }

    /* Hover Effect for 3D Logo */
    .logo-3d:hover {
      transform: translateY(-5px) scale(1.1); /* Moves the logo up slightly and scales it */
      box-shadow: 6px 6px 15px rgba(0, 0, 0, 0.3), -6px -6px 15px rgba(255, 255, 255, 0.5); /* Enhances the shadow on hover */
    }
    
    /* Responsive adjustments */
    @media (max-width: 768px) {
        .card img {
            display: none; /* Hide image on smaller screens */
        }
    }
</style>
</head>
<body>
<section class="vh-100 d-flex align-items-center justify-content-center">
  <div class="container py-5">
    <div class="row d-flex justify-content-center align-items-center">
      <div class="col-md-10">
        <div class="card">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img 
                src="WebContent/images/admin_branding.jpg" 
                alt="login form" 
                class="img-fluid full-image" 
                style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7">
              <div class="card-body p-5 text-black">
                <form action="<%=request.getContextPath()%>/Adminlogin" method="post">

                  <!-- Logo and Title -->
                  <div class="d-flex align-items-center mb-3 pb-1">
                    <img 
                      src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU" 
                      alt="Logo" 
                      class="logo-3d" />
                    <span class="h1 fw-bold mb-0">abc e-order</span>
                  </div>

                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Admin Login</h5>

                  <!-- Username Input -->
                  <div class="form-outline mb-4">
                    <input type="text" id="form2Example17" class="form-control form-control-lg" name="username" placeholder="Enter your username" />
                    <label class="form-label" for="form2Example17">Username</label>
                  </div>

                  <!-- Password Input -->
                  <div class="form-outline mb-4">
                    <input type="password" id="form2Example27" class="form-control form-control-lg" name="password" placeholder="Enter your password" />
                    <label class="form-label" for="form2Example27">Password</label>
                  </div>

                  <!-- Submit Button -->
                  <div class="pt-1 mb-4">
                    <input class="btn btn-dark btn-lg btn-block" type="submit" value="Submit" />
                  </div>

                  <!-- Forgot Password Link -->
                  <a class="small text-muted" href="#!">Forgot password?</a>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- MDB -->
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"
></script>
</body>
</html>
