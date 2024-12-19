<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <!-- Logo and Brand Name -->
        <a class="navbar-brand d-flex align-items-center" href="index.jsp">
            <!-- Circular Logo -->
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU" alt="Logo" class="rounded-circle" style="width: 40px; height: 40px; margin-right: 10px;">
            <h1 style="font-size: 1.5rem; margin: 0; white-space: nowrap;">Abc Order</h1>
        </a>
        
        <!-- Marquee -->
        <div class="d-none d-lg-block" style="margin-left: 15px; flex-grow: 1; overflow: hidden;">
            <marquee behavior="scroll" direction="left" style="font-size: 1rem; color: #555; white-space: nowrap; max-width: 400px;">
                Order us, save your time!
            </marquee>
        </div>
        
        <!-- Toggler for mobile view -->
        <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    
        <!-- Navigation Links -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Menu</a></li>
                <li class="nav-item"><a class="nav-link" href="cart.jsp">Order <span class="badge badge-danger">${cart_list.size()}</span> </a></li>
                <%
                if (auth != null) {
                %>
                <li class="nav-item"><a class="nav-link" href="orders.jsp">Order History</a></li>
                <li class="nav-item"><a class="nav-link" href="profilelogin.jsp">Profile</a></li>
                <li class="nav-item"><a class="nav-link" href="log-out">Logout</a></li>
                <%
                } else {
                %>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                <%
                }
                %>
            </ul>
        </div>
    </div>
</nav>
