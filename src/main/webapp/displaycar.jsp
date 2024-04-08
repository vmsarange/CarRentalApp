<!DOCTYPE html>
<%@page import="CarRentalApp.dto.Car"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display car</title>
    <style type="text/css">
      td{
         
         width : 100px;
      }
    </style>
</head>
<body>
       <%  
          String id = (String) session.getAttribute("id");
          Car car = (Car)session.getAttribute("car");
        %>
        
      <div align="center">
      <table border="5px" style="width : 600px">
              <tr style="height : 50px" >
               <th>Image id</th>
               <th>Brand</th>
               <th>Model</th>
               <th>Price</th>
               <th>Fuel</th>
               <th>Capacity</th>
               <th>Available From</th> 
                <th>Available To</th>
                 <th>Available From Time</th>
                  <th>Available To Time</th>
               <th>Image</th> 
              </tr>
              <tr style="height : 50px">
              <td><%= id %></td>
              <td><%= car.getBrand() %></td>
              <td><%= car.getModel()%></td>
              <td><%= car.getPrice() %></td>
              <td><%= car.getFuel() %></td>
              <td><%= car.getCapacity() %></td>
              <td><%= car.getAvailableFromDate() %></td>
              <td><%= car.getAvailableToDate()%></td>
              <td><%= car.getFromTime() %></td>
               <td><%= car.getToTime() %></td>
              <td><img src="postcars/<%= car.getPhoto()%>" style="width : 50px; height:50px"></td>
              </tr>
  </table>
   </div>
 </body>
</html>
   
     