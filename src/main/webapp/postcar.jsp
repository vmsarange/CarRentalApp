<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<title>Insert title here</title>
<style>
*{
	padding: 0;
	margin: 0;
}
.container {
	position: relative;
	height: 100vh;
	display: grid;
	justify-content:center;
	align-items: center;
}
.form {
	height: 600px;
	position: relative;
	background-color: hsla(0, 0%, 10%, 0.1);
	border: 2px solid white;
	margin-inline: 1.5rem;
	padding: 2.5rem 1.5rem;
	border-radius: 1rem;
	font-size:1.5rem;
	
	
}

.title {
	text-align: center;
	font-size: 2rem;
	font-weight: 500;
	margin-bottom: 2rem;
}
</style>
</head>
<body>
<div class="container">
<div class="main">
<h2 class="title">Add Car</h2>
<form class="form" action="postcar" method="post" enctype="multipart/form-data">

<label>Car Model:</label>
<input type="text" name="carmodel" required><br><br>
<label>Brand:</label>
<input type="text" name="brand"><br><br>
<label>Select Fuel:</label>
<select name="fuel">
<option disabled selected>select</option>
<option value="petrol">Petrol</option>
<option value="diesel">Diesel</option>
</select><br><br>
<label>Price Per Hour:</label>
<input type="number" name="price"><br><br>
<label>Seating Capacity:</label>
<input type="number" name="capacity"><br><br>
 From : <input type="datetime-local" value="from" name="from" placeholder="Select pick up date"><br><br>
 To : <input type="datetime-local" value="from" name="to" placeholder="Select drop date"><br><br>
 <select name="status">
    <option disabled selected>select status</option>
    <option value="Available">Available</option>
    <option value="Booked">Booked</option>
 </select>
<label>Upload Car Front Image:</label>
<input type="file"  name="image"><br><br>
<button type="submit">Submit</button>

</form>
</div>
</div>
   <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script type="text/javascript">
    	config = {
                   enableTime: true,
                   dateFormat: "Y-m-d H:i K",
                  }
   	  flatpickr("input[type=datetime-local]", config);
   </script>
</body>
</html>