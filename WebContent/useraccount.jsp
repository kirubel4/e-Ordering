<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
	<title>My Profile | ASTU</title>
	<link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU">
	
	<style type="text/css">
		body {
			font-family: Arial, Helvetica, sans-serif;
			background-color: #f4f7fc; 
			color: #333;
			margin: 0;
			padding: 0;
		}

		.body {
			width: 90%;
			margin-left: auto;
			margin-right: auto;
		}

		#table {
			font-family: Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 60%;
			margin: 20px auto;
			background-color: #fff;
			box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		}

		#table td, #table th {
			border: 1px solid #ddd;
			padding: 12px;
		}

		#table tr:nth-child(even) {
			background-color: #f9f9f9;
		}

		#table tr:hover {
			background-color: #f1f1f1;
		}

		#table th {
			text-align: center;
			background-color: #4CAF50; 
			color: white;
			font-size: 18px;
		}

		#table td {
			text-align: left;
		}

		input[type="button"] {
			background-color: #4CAF50;
			color: white;
			padding: 12px 20px; 
			margin: 5px;
			border: none; 
			border-radius: 6px;
			cursor: pointer; 
			box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
			font-size: 16px;
			transition: background-color 0.3s ease, transform 0.3s ease;
		}
		input[type="button"]:hover {
			background-color: #45a049; 
			transform: translateY(-2px); 
		}

		input[type="button"]:active {
			background-color: #388e3c;
			transform: translateY(2px); 
		}

		h1 {
			text-align: center;
			color: #333;
			font-size: 28px;
			margin-top: 40px;
			text-transform: uppercase;
			font-weight: bold;
		}

		.useraccount-btn {
			text-align: center;
		}
	</style>
</head>
<body>
	<h1>My Account</h1>
	<table id="table">
		<c:forEach var="cus" items="${cusDetails}">
			<c:set var="id" value="${cus.id}"/>
			<c:set var="name" value="${cus.name}"/>
			<c:set var="email" value="${cus.email}"/>
			<c:set var="phone" value="${cus.phone}"/>
			<c:set var="address" value="${cus.address}"/>
			<c:set var="username" value="${cus.username}"/>
			<c:set var="password" value="${cus.password}"/>
			<c:set var="role" value="${cus.role}"/>
		
			<tr>
				<td>My ID</td>
				<td>${cus.id}</td>
			</tr>
			<tr>
				<td>Name</td>
				<td>${cus.name}</td>
			</tr>
			<tr>
				<td>Email</td>
				<td>${cus.email}</td>
			</tr>
			<tr>
				<td>Phone Number</td>
				<td>${cus.phone}</td>
			</tr>
			<tr>
				<td>Delivery Address</td>
				<td>${cus.address}</td>
			</tr>
			<tr>
				<td>My User Name</td>
				<td>${cus.username}</td>
			</tr>
			<tr>
				<td>Role</td>
				<td>${cus.role}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	
	<c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
		<c:param name="role" value="${role}"/>
	</c:url>
	<div class="useraccount-btn">
		<a href="${cusupdate}">
			<input type="button" name="update" value="Update My Data">
		</a>
	</div>
	
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
		<c:param name="role" value="${role}"/>
	</c:url>
	<div class="useraccount-btn">
		<a href="${cusdelete}">
			<input type="button" name="delete" value="Delete My Account">
		</a>
	</div>
</body>
</html>
			</a>
		</div>
	</body>
	</html>
	