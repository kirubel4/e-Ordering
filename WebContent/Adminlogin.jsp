<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
  body {
    background: linear-gradient(to right, #6a11cb, #2575fc);
    font-family: 'Roboto', sans-serif;
  }
  .card {
    border-radius: 1rem;
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s;
  }
  .card:hover {
    transform: translateY(-10px);
  }
  img {
    transition: transform 0.3s;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
  }
  img:hover {
    transform: scale(1.05);
  }
  .btn-dark {
    background-color: #343a40;
    border: none;
    transition: background-color 0.3s, transform 0.3s;
  }
  .btn-dark:hover {
    background-color: #495057;
    transform: scale(1.05);
  }
  .form-label {
    font-weight: 500;
  }
  .logo {
    width: 80px; /* Increased size */
    height: 80px; /* Increased size */
    border-radius: 50%; /* Circular logo */
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
    transition: transform 0.3s;
  }
  .logo:hover {
    transform: scale(1.1); /* Slightly enlarge on hover */
  }
  .image-container {
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
    transition: transform 0.3s;
  }
  .image-container:hover {
    transform: scale(1.05); /* Slightly enlarge on hover */
  }
</style>
</head>
<body>
	
<section class="vh-75">
  <div class="container py-5 h-75">
    <div class="row d-flex justify-content-center align-items-center h-75">
      <div class="col col-xl-10">
        <div class="card">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <div class="image-container">
                <img src="C:/Users/hana/Downloads/YumRide--Online-Food-Ordering-System-main/YumRide--Online-Food-Ordering-System-main/fine/WebContent/images/admin_branding.jpg"
                  alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
              </div>
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

                <form action="<%=request.getContextPath()%>/Adminlogin" method="post">

                  <div class="d-flex align-items-center mb-3 pb-1">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU" class="logo">
                    <span class="h1 fw-bold mb-0">abc order</span>
                  </div>

                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Admin Login</h5>

                  <div class="form-outline mb-4">
                    <input type="text" id="form2Example17" class="form-control form-control-lg" name="username" />
                    <label class="form-label" for="form2Example17">Username</label>
                  </div>

                  <div class="form-outline mb-4">
                    <input type="password" id="form2Example27" class="form-control form-control-lg" name="password" />
                    <label class="form-label" for="form2Example27">Password</label>
                  </div>

                  <div class="pt-1 mb-4">
                    <input class="btn btn-dark btn-lg btn-block" type="submit" value="Submit" />
                  </div>

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
<script src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
</body>
</html>