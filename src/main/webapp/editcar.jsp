<%@page import="CarRentalApp.dto.Car"%>
<%@page import="CarRentalApp.dao.AdminCrud"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Car</title>
<style>
body {
    background-color: #f0f0f0;
}

.car {
    background-color: #fff;
    width: 400px;
    margin: 20px auto;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.car h3 {
    text-align: center;
}

.car form {
    display: flex;
    flex-direction: column;
}

.car label {
    margin-bottom: 8px;
}

.car input[type="number"],
.car input[type="file"],
.car input[type="text"],
.car select,
.car button {
    width: 100%;
    padding: 8px;
    margin-bottom: 16px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
    outline: none;
}

.car input[type="file"] {
    border: none;
}

.car button {
    background-color: #007bff;
    width: 100px;
    color: #fff;
    border: none;
    cursor: pointer;
    border-radius: 4px;
    margin:0 auto;
   
}

.car button:hover {
    background-color: #0056b3;
}


</style>
</head>
<body>
<div class="car">
<h3>Edit your Car Details</h3>
<% 

int id=Integer.parseInt(request.getParameter("id"));
System.out.println(id);
AdminCrud crud=new AdminCrud();
Car car=crud.getCarById(id);

%>
<form action="editcar" method="post">
<input type="hidden" name="id" value="<%=car.getCid()%>">

<label>Model</label>
<input type="text" name="model" value="<%=car.getModel()%>">

<label>Brand</label>
<input type="text" name="brand" value="<%=car.getBrand()%>">

<label for="fuel">Select Fuel:
		<select name="fuel" id="fuel">
			<option value="" disabled selected>Select</option>
			<option value="Petrol" <%="Petrol".equals(car.getFuel())?"selected": ""%>>Petrol</option>
			<option value="Diesel" <%="Diesel".equals(car.getFuel())?"selected": ""%>>Diesel</option>
			<option value="CNG"    <%="Diesel".equals(car.getFuel())?"selected": ""%>>CNG</option>
		</select>
</label>
<label>Capacity</label>
<input type="number" name="capacity" value="<%=car.getCapacity()%>">

<label>Price</label>
<input type="number" name="price" value="<%=car.getPrice()%>">

<label>From Date</label>
<input type="date" name="fromdate" value="<%=car.getFromdate() %>">

<label>To Date</label>
<input type="date" name="todate" value="<%=car.getTodate() %>">

<button>Update</button>

</form>
</div>

</body>
</html>