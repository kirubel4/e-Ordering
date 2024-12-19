<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css" rel="stylesheet"/>

<style>
.gradient-custom-3 {
    background: rgba(0, 0, 0, 0.4);
}

.card {
    background: rgba(255, 255, 255, 0.9) !important;
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255, 255, 255, 0.2);
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2) !important;
}

.card:hover {
    transform: translateY(-5px);
    transition: all 0.3s ease;
}

.form-control {
    background: rgba(255, 255, 255, 0.9) !important;
    border: 1px solid rgba(0, 0, 0, 0.1) !important;
}

.form-control:focus {
    background: rgba(255, 255, 255, 1) !important;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1) !important;
}

.btn-dark {
    background: linear-gradient(135deg, #007bff, #00bcd4) !important;
    border: none !important;
    transition: all 0.3s ease !important;
}

.btn-dark:hover {
    background: linear-gradient(135deg, #0056b3, #008ba3) !important;
    transform: scale(1.05);
    box-shadow: 0 5px 15px rgba(0,123,255,0.4) !important;
}

.text-body {
    color: #333 !important;
}

.card-body h2 {
    background: linear-gradient(45deg, #1a1a1a, #333333);
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;
    font-weight: bold;
    letter-spacing: 1px;
}

.form-check-label {
    color: #555;
}

.footer-text {
    background: rgba(255, 255, 255, 0.9);
    padding: 20px;
    border-radius: 10px;
    margin-top: 20px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

.form-outline {
    position: relative;
    margin-bottom: 25px !important;
}

.form-label {
    color: #555 !important;
    font-weight: 500;
}

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

.card {
    animation: fadeIn 0.8s ease-out;
}

.custom-background {
    background-image: url('https://cdn.pixabay.com/photo/2024/05/06/17/06/french-fries-8743802_1280.jpg');
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    min-height: 100vh;
}
</style>
</head>
<body>

<section class="vh-100 bg-image custom-background">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3 overflow-auto">
    <div class="container h-100 p-4">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 25px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Create an Account</h2>

              <form action="insert" method="post">
                <div class="form-outline">
                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="name" required/>
                  <label class="form-label" for="form3Example1cg">Your Name</label>
                </div>

                <div class="form-outline">
                  <input type="email" id="form3Example3cg" class="form-control form-control-lg" name="email" required/>
                  <label class="form-label" for="form3Example3cg">Your Email</label>
                </div>

                <div class="form-outline">
                  <input type="text" id="form3Example3cg" class="form-control form-control-lg" name="phone" required/>
                  <label class="form-label" for="form3Example3cg">Your Phone Number</label>
                </div>

                <div class="form-outline">
                  <input type="text" id="form3Example3cg" class="form-control form-control-lg" name="address" required/>
                  <label class="form-label" for="form3Example3cg">Delivery Address</label>
                </div>

                <div class="form-outline">
                  <input type="text" id="form3Example3cg" class="form-control form-control-lg" name="uid" required/>
                  <label class="form-label" for="form3Example3cg">Username</label>
                </div>

                <div class="form-outline">
                  <input type="password" id="form3Example4cg" class="form-control form-control-lg" name="psw" required/>
                  <label class="form-label" for="form3Example4cg">Password</label>
                </div>

                <div class="form-outline">
                  <input type="text" id="form3Example4cdg" class="form-control form-control-lg" name="role" required/>
                  <label class="form-label" for="form3Example4cdg">Role: Customer/Delivery Person</label>
                </div>

                <div class="form-check d-flex justify-content-center mb-5">
                  <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg"/>
                  <label class="form-check-label" for="form2Example3g">
                    I agree to all statements in <a href="#!" class="text-body"><u>Terms of service</u></a>
                  </label>
                </div>

                <div class="d-flex justify-content-center">
                  <input type="submit" name="submit" value="Create An Account" class="btn btn-dark btn-lg btn-block">
                </div>

                <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="login.jsp" class="fw-bold text-body"><u>Login here</u></a></p>
              </form>
            </div>
          </div>
        </div>
        <div class="footer-text text-center mt-4">
          <h4>Save your time!</h4>
          <h5>Abc Order</h5>
        </div>
      </div>
    </div>
  </div>
</section>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
</body>
</html>