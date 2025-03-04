<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Menu Management</title>
<link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<style>

	.body{
		width:90%;
		margin-left: auto;
        margin-right: auto;
	}
    a{
        text-decoration: none;
        text-align:center;
    }
    .savebtn{
    	background-color:28A745;
    	border-style:none;
    	color:white;
    	padding:10 40;
    }
    .savebtn.active,button:hover{
	  background: green;
	  transition: .5s;
	}
    input[type=text], select {
	  width: 100%;
	  padding: 12px 20px;
	  margin: 8px 0;
	  display: inline-block;
	  border: 1px solid #ccc;
	  border-radius: 4px;
	  box-sizing: border-box;
	}
	
	
	.card{
		width:50%;
		margin-left:auto;
		margin-right:auto;
		border-style:solid;
	}
	.card-body{
		width:70%;
		margin-left:auto;
		margin-right:auto;
		
	}
	.feildset{
		border:none;
	}

/* 	header css */
   .nav{
  padding: 0;
  margin: 0;
  text-decoration: none;
  list-style: none;
  box-sizing: border-box;
  
}
.navbody{
  font-family: montserrat;
}
nav{
  background: #0082e6;
  height: 80px;
  width: 100%;
}
.logo{
	background-image:url('logo.png');
}
label.logo{
  
  color: white;
  font-size: 35px;
  line-height: 80px;
  padding: 0 100px;
  font-weight: bold;
}
nav ul{
  float: right;
  margin-right: 20px;
}
nav ul li{
  display: inline-block;
  line-height: 50px;
  margin: 0 5px;
}
nav ul li a{
  color: white;
  font-size: 17px;
  padding: 7px 13px;
  border-radius: 3px;
  
}
a.active,a:hover{
  background: #1b9bff;
  transition: .5s;
}
.checkbtn{
  font-size: 30px;
  color: white;
  float: right;
  line-height: 80px;
  margin-right: 40px;
  margin-top:20px;
  cursor: pointer;
  display: none;
}
#check{
  display: none;

}
@media (max-width: 952px){
  label.logo{
    font-size: 30px;
    padding-left: 50px;
  }
  nav ul li a{
    font-size: 16px;
  }
}
@media (max-width: 858px){
  .checkbtn{
    display: block;
  }
  ul{
    position: fixed;
    width: 100%;
    height: 100vh;
    background: #2c3e50;
    top: 80px;
    left: -100%;
    text-align: center;
    transition: all .5s;
  }
  nav ul li{
    display: block;
    margin: 50px 0;
    line-height: 30px;
  }
  nav ul li a{
    font-size: 20px;
  }
  a:hover,a.active{
    background: none;
    color: #0082e6;
  }
  #check:checked ~ ul{
    left: 0;
  }
}

</style>
</head>
<body>

	
		
    <nav class="nav">
    <div class="navbody">
      <input type="checkbox" id="check">
      <label for="check" class="checkbtn">
        <i class="fas fa-bars"></i>
      </label>
      <a href="index.jsp" style="padding:20px; "><label class="logo">ASTU</label></a>
      
      <ul>
        <li><a href="Admin_index.jsp">Home</a></li>
        <li><a href="ManageUsers/user-list.jsp">User Management</a></li>
        <li><a href="order-list.jsp">Order Management</a></li>
        <li><a href="delivery-list.jsp">Delivery Management</a></li>
         <li><a class="active" href="<%=request.getContextPath()%>/list4">Menu Management</a></li>
      </ul>
      </div> 
    </nav>
    	
	<br>
	
	<div>
		<div class="card">
			<div class="card-body">
				<c:if test="${product != null}">
					<form action="update4" method="post">
				</c:if>
				<c:if test="${product == null}">
					<form action="insert4" method="post">
				</c:if>

				<caption>
					<h2 style="font-size:40px;">
						<c:if test="${product != null}">
            			<center>Edit Product</center>
            		</c:if>
						<c:if test="${product == null}">
            			<center>Add New Product</center>
            		</c:if>
					</h2>
				</caption>

				<c:if test="${product != null}">
				
					<input type="hidden" name="id" value="<c:out value='${product.id}' />" />
				</c:if>

				<fieldset>
					<label>Product Name</label> <input type="text"
						value="<c:out value='${product.name}' />" class="feildset"
						name="name" required="required">
				</fieldset>
				<br>
				<fieldset>
					<label>Category</label> <input type="text"
						value="<c:out value='${product.category}' />" class="feildset"
						name="category" required="required">
				</fieldset>
				<br>
				<fieldset>
					<label>Price</label> <input type="text"
						value="<c:out value='${product.price}' />" class="feildset"
						name="price" required="required">
				</fieldset>
				<br>
				<fieldset>
					<label>Image Link</label> <input type="text"
						value="<c:out value='${product.image}' />" class="feildset"
						name="image">
				</fieldset>
				
				
				<br>

				<center><button type="submit" class="savebtn">Save</button></center>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
