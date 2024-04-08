<!DOCTYPE html>
<%@page import="CarRentalApp.dto.Car"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display Image</title>
</head>
<body>
      <div align="center">
         <form action="displaycar" method="post">
             <h1 style="color : red" align="center">Available Cars</h1>
             Enter image id : <input type="number" name="imageid">
             <button type="submit">Display</button>
         </form>
      </div>
      <hr>
</body>
</html>