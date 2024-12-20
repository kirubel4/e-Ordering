<%@page import="com.cart.connection.DbCon"%>
<%@page import="com.cart.dao.ProductDao"%>
<%@page import="com.cart.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
}
ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();
List<Product> burger_products = pd.getAllBurgers();
List<Product> desert_products = pd.getAllDeserts();
List<Product> beverage_products = pd.getAllBeverages();
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
    request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/includes/head.jsp"%>
    <title>Abc Order</title>
    <link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU">
    <style>
        html {
            scroll-behavior: smooth;
        }
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .nav-link {
            color: #343a40;
            transition: all 0.3s ease;
            font-weight: 500;
            padding: 15px 25px;
            margin: 0 5px;
            border-radius: 25px;
        }
        .nav-link:hover {
            background-color: #ffc107;
            color: #000;
            transform: translateY(-2px);
        }
        .nav-link.active {
            background-color: #ffc107;
            color: #000;
        }
        .marquee {
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
        }
        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
            margin-bottom: 20px;
            height: 100%;
            display: flex;
            flex-direction: column;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        }
        .card-img-top {
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
            height: 200px;
            object-fit: cover;
        }
        .card-body {
            padding: 1.25rem;
            flex: 1;
            display: flex;
            flex-direction: column;
        }
        .card-title {
            font-weight: 600;
            color: #343a40;
            margin-bottom: 10px;
        }
        .price {
            color: #28a745;
            font-weight: 600;
            margin-bottom: 5px;
        }
        .category {
            color: #6c757d;
            margin-bottom: 15px;
        }
        .btn-container {
            margin-top: auto;
            display: flex;
            gap: 10px;
            justify-content: space-between;
        }
        .btn {
            border-radius: 25px;
            padding: 8px 15px;
            font-weight: 500;
            text-transform: uppercase;
            font-size: 0.8rem;
            letter-spacing: 0.5px;
            transition: all 0.3s ease;
            white-space: nowrap;
            flex: 1;
        }
        .btn-dark {
            background-color: #343a40;
            border: none;
        }
        .btn-dark:hover {
            background-color: #000;
            transform: translateY(-2px);
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }
        .card-header {
            background-color: #ffc107;
            color: #000;
            font-weight: 600;
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        .container {
            padding: 40px 20px;
        }
        #section0, #section1, #section2, #section3 {
            padding-top: 80px;
            margin-top: -80px;
        }
        .nav.justify-content-center {
            position: sticky;
            top: 0;
            z-index: 1000;
            background-color: rgba(255,255,255,0.95);
            padding: 10px 0;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .search-container {
            margin: 10px 0;
            text-align: center;
        }
        .search-input {
            padding: 10px;
            border-radius: 25px;
            border: 1px solid #ced4da;
            width: 300px;
            transition: border-color 0.3s;
        }
        .search-input:focus {
            border-color: #ffc107;
            outline: none;
        }
    </style>
</head>

<body>
    <%@include file="/includes/navbar.jsp"%>
    
    <div class="marquee">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU" alt="ASTU Logo" style="height: 150px; margin-right: 10px;">
        <marquee behavior="scroll" direction="left">Not only food we provide, we also save your time and money! call us +251-953-775-288</marquee>
    </div>

    <div class="search-container">
        <input type="text" class="search-input" id="search" placeholder="Search for products..." onkeyup="searchProducts()">
    </div>

    <ul class="nav justify-content-center">
        <li class="nav-item">
            <a class="nav-link" href="#section0"><h4>All</h4></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#section1"><h4>Burgers</h4></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#section2"><h4>Desserts</h4></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#section3"><h4>Beverages</h4></a>
        </li>
    </ul>

    <div class="container" id="section0">
        <div class="card-header my-3 text-center">All Categories</div>
        <div class="row" id="product-list">
            <% if (!products.isEmpty()) {
                for (Product p : products) { %>
                <div class="col-md-3 my-3 product-item">
                    <div class="card w-100">
                        <img class="card-img-top" src="<%=p.getImage() %>" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title"><%=p.getName() %></h5>
                            <h6 class="price">Price: Br <%=p.getPrice() %></h6>
                            <h6 class="category">Category: <%=p.getCategory() %></h6>
                            <div class="mt-3 d-flex justify-content-between">
                                <a class="btn btn-dark" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a>
                                <a class="btn btn-primary" href="order-now?quantity=1&id=<%=p.getId()%>">Buy Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            <% }
            } else {
                out.println("There are no products");
            } %>
        </div>
    </div>

    <!-- Additional sections for Burgers, Desserts, and Beverages -->

    <br>
    <br>

    <%@include file="/includes/footer.jsp"%>

    <script>
        function searchProducts() {
            const input = document.getElementById('search').value.toLowerCase();
            const items = document.querySelectorAll('.product-item');
            items.forEach(item => {
                const title = item.querySelector('.card-title').innerText.toLowerCase();
                if (title.includes(input)) {
                    item.style.display = '';
                } else {
                    item.style.display = 'none';
                }
            });
        }
    </script>
</body>
</html>