 <!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
	<title>Book Car</title>
	<style type="text/css">
		.container{

			margin-top: 10%;
			padding: 20px;
			background: no-repeat;
			background-color: whitesmoke;
			margin-right: 20%;
			margin-left: 20%;
			text-decoration-color: darkred;
		}
        .form{

        	background: whitesmoke;
        }
	</style>
</head>
<body>
   <div class="container" align="center">
   	 <form action="bookcar" class="form" method="post">
   	     CarId : <input type="number" name="carid" placeholder="enter car id">
    	 From : <input type="datetime-local"  name="from" placeholder="Select pick up date"><br><br>
    	  To : <input type="datetime-local"  name="to" placeholder="Select drop date"><br><br>
    	 <!-- To : <input type="date" value="from" name="To"><br><br>
    	 Pick up time : <input type="time" name="pick" min="9:00" max="10:00"><br><br>
    	 Drop time : <input type="time" name="drop" min="9:00" max="10:00"><br><br> -->
    	 <button type="submit">Book Car</button>
    </form>
   </div>
   <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script type="text/javascript">
    	config = {
                   enableTime: true,
                   dateFormat: "Y-m-d H:i",
                   altInput : true,
                   altFormat : "F j , Y (h: S K)"
                  }
   	  flatpickr("input[type=datetime-local]", config);
   </script>
</body>
</html>