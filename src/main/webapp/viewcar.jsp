<!DOCTYPE html>
<
<%@page import="CarRentalApp.dto.Car"%>
<%@page import="CarRentalApp.dao.AdminCrud"%>
<%@page import="CarRentalApp.dao.UserCrud"%>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.Connection" %>

<html>
<head>
<meta charset="UTF-8">
<title>View Cars</title>
<style>
body {
    font-family: 'Times New Roman', Times, serif;
    margin: 0;
    padding: 0;
}

h3 {
    text-align: center;
    font-size: 30px;
    color: red;
    margin-top: 20px;
}

.table-container {
    margin: 20px auto;
    width: 80%;
}

.table {
    width: 100%;
    border-collapse: collapse;
}

.table th, .table td {
    padding: 10px;
    border: 1px solid #ddd;
    text-align: left;
}

.table th {
    background-color: #f2f2f2;
    color: #333;
    font-size: 20px;
}

.table tbody tr:hover {
    background-color: #f5f5f5;
}

.table img {
    max-width: 70px;
    max-height: 50px;
}

.btn {
    display: inline-block;
    padding: 5px 10px;
    background-color: indianred;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
}

.btn:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>

<h3>All Cars Details</h3>

<div class="table-container">
    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Image</th>
                <th>Brand</th>
                <th>Model</th>
                <th>Price</th>
                <th>Fuel</th>
                <th>Capacity</th>
                <th>FromDate</th>
                <th>ToDate</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <%
            
            int carid = (int) session.getAttribute("carid");
            
            UserCrud crud = new UserCrud();
            Connection conn = crud.getConnection();
            List<Car> list = crud.getAllCars();
            for (Car car : list) {
                String imagePath = "images/" + car.getPhoto(); 
            %>
            <tr>
                <td><%= carid %></td>
                <td><img src="<%= imagePath %>" alt="Car Image"></td>
                <td><%= car.getBrand() %></td>
                <td><%= car.getModel() %></td>
                <td><%= car.getPrice() %></td>
                <td><%= car.getFuel() %></td>
                <td><%= car.getCapacity() %></td>
                <td><%=car.getAvailableFromDate() %></td>
                <td><%=car.getAvailableToDate() %></td>
                <td>
                    <a href="editcar.jsp?id=<%= carid %>" class="btn">Edit</a>
                    <a href="delete?id=<%= carid %>" class="btn">Delete</a>
                </td>
            </tr>
            <%
            }
            %>
        </tbody>
    </table>
</div>
</body>
</html>
