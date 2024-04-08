<%@page import="car_rental_system_project.dto.Car"%>
<%@page import="java.util.List"%>
<%@page import="car_rental_system_project.dao.AdminCrud"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home Page</title>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

.container {
	width: 100%;
	height: 100vh;
	background:
		url("https://images.unsplash.com/photo-1449965408869-eaa3f722e40d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZHJpdmluZ3xlbnwwfHwwfHx8MA%3D%3D");
	background-repeat: no-repeat;
	background-size: cover;
	animation: changeImage 7s infinite;
}
@keyframes changeImage{
			0%{
			background: url("https://images.unsplash.com/photo-1449965408869-eaa3f722e40d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZHJpdmluZ3xlbnwwfHwwfHx8MA%3D%3D");
				width :100%;
				height: 100vh;
				background-repeat:no-repeat;
				background-size:cover;
			}
			25%{
				background: url("https://blog-cdn.el.olx.com.pk/wp-content/uploads/2022/04/29150834/Roadtrip.jpg");
				width :100%;
				height: 100vh;
				background-repeat:no-repeat;
				background-size:cover;
			}
			50%{
				background: url("https://img.freepik.com/free-photo/hat-sunglasses-car-board_23-2148756461.jpg");
				width :100%;
				height: 100vh;
				background-repeat:no-repeat;
				background-size:cover;
			}
			75%{
				background: url("https://www.hollywoodreporter.com/wp-content/uploads/2021/08/AdobeStock_92392668-maximus19-H-MAIN-2021.jpg?w=1200");
				width :100%;
				height: 100vh;
				background-repeat:no-repeat;
				background-size:cover;
			}
		}

.nav1 {
	width: 100%;
	height: 70px;
	background: black;
}

nav {
	width: 100%;
	height: 100px;
	color: white;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.logo {
	font-size: 2rem;
	letter-spacing: 2px;
	font-weight: bold;
}

.menu {
	display: flex;
	align-items: center;
}

.menu a {
	text-decoration: none;
	color: white;
	padding: 10px 20px;
	font-size: 20px;
	
	position: relative;
}

.menu a:before {
	content: '';
	position: absolute;
	bottom: 0;
	left: 0;
	width: 0;
	height: 2px;
	background-color: red;
	transition: width 0.3s ease;
}

.menu a:hover:before {
	width: 100%;
}

.blog .heading {
margin-top:20px;
	text-align: center;
	margin-bottom: 20px;
}

.blog h1 {
	font-size: 30px;
	color: #d90429;
}

.blogcontainer {
	display: flex;
	gap: 2rem;
	overflow-x: auto;
}

.blogcontainer img {
	height: 300px;
	width: 420px;
}

.blogcontainer .box {
	flex: 1 1 13rem;
	padding: 20px;
}

.blogcontainer .box:hover {
	background: #f6f6f6;
}

.blogcontainer .box-span {
	font-size: 0.8rem;
	color: #d90429;
}

.blogcontainer h3 {
	font-size: 1.2rem;
}

.blogcontainer .box p {
	font-size: 0.938rem;
	margin: 4px 0;
}

.blogcontainer .box .blog-btn {
	display: flex;
	align-items: center;
	column-gap: 4px;
	color: #020102;
}

.blogcontainer .box .blog-btn .bx {
	font-size: 20px;
}

.blogcontainer .box .blog-btn:hover {
	color: #d90429;
	column-gap: 0.7rem;
	transition: 0.4s;
}


.blogcontainer::-webkit-scrollbar {
	display: none;
}

.contain {
	width: 90%;
	margin: 0 auto;
	padding:20px;
	margin-botton:20px;
}

.contain h1 {
margin-top:20px;
	text-align: center;
	margin-bottom: 20px;
	color:#da042a;
}

.contain h2 {
	text-align: center;
	font-size: 25px;
	margin-bottom: 20px;
	
}

.contain p {
	color: black;
	text-align: center;
}

.contain .row {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
}

.contain .main-div {
	width: 300px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-bottom: 20px;
}

.contain .main-div:hover {
	border: 1px solid rgb(245, 159, 11);
}

.contain .main-content {
	padding: 10px;
}

.contain .main-body {
	text-align: center;
}

.contain .main-body img {
	width: 90%;
	height: 180px;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
}

.contain .btn {
	display: inline-block;
	width: 35%;
	padding: 8px 0;
	margin-top: 10px;
	margin-right: 10px;
	text-align: center;
	background-color: #da042a;
	color: white;
	text-decoration: none;
	border: 1px solid #0056b3;
	border-radius: 3px;
}

.contain .btn:hover {
	background-color: black;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="container">
		<nav class="nav1">
			<div class="logo">
				<i class="fa fa-car" style="font-size: 30px; color: red;"></i>CarRentalSystem
			</div>
			<div class="menu">



				<a href="userhome.jsp">Home</a> 
				<a href="#blog">Blogs</a>
				<a href="booking.jsp">Booking History</a> 
				<a href="#bookcar">BookCar</a>
				<a href="editprofile.jsp">Update Profile</a> <a href="Home.jsp">logout</a>



			</div>
		</nav>
	</div>
	<section class="blog" id="blog">
		<div class="heading">
			<h1>Blogs</h1>
		
		</div>

		<div class="slider">
			<div class="blogcontainer">
				<div class="box">
					<img src="images/car.jpg" alt=""> <span>April 1 2024</span>
					<h3>How to Get Perfect car at low price.</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Quis eveniet cupiditate ipsam. Fugit, nulla numquam? Asperiores
						nesciunt reprehenderit fugit quibusdam nostrum quo eaque a
						aperiam, ipsa, repellendus pariatur provident eius?</p>
					<a href="#" class="blog-btn">Read More</a>
				</div>
				<div class="box">
					<img src="images/car2.jpg" alt=""> <span>April 1 2024</span>
					<h3>How to Get Perfect car at low price.</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Quis eveniet cupiditate ipsam. Fugit, nulla numquam? Asperiores
						nesciunt reprehenderit fugit quibusdam nostrum quo eaque a
						aperiam, ipsa, repellendus pariatur provident eius?</p>
					<a href="#" class="blog-btn">Read More</a>
				</div>
				<div class="box">
					<img src="images/car3.jpg" alt=""> <span>April 1 2024</span>
					<h3>How to Get Perfect car at low price.</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Quis eveniet cupiditate ipsam. Fugit, nulla numquam? Asperiores
						nesciunt reprehenderit fugit quibusdam nostrum quo eaque a
						aperiam, ipsa, repellendus pariatur provident eius?</p>
					<a href="#" class="blog-btn">Read More</a>
				</div>
				<div class="box">
					<img src="images/carimage.jpg" alt=""> <span>April 1
						2024</span>
					<h3>How to Get Perfect car at low price.</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Quis eveniet cupiditate ipsam. Fugit, nulla numquam? Asperiores
						nesciunt reprehenderit fugit quibusdam nostrum quo eaque a
						aperiam, ipsa, repellendus pariatur provident eius?</p>
					<a href="#" class="blog-btn">Read More</a>
				</div>
				<div class="box">
					<img src="images/car.jpg" alt=""> <span>April 1 2024</span>
					<h3>How to Get Perfect car at low price.</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Quis eveniet cupiditate ipsam. Fugit, nulla numquam? Asperiores
						nesciunt reprehenderit fugit quibusdam nostrum quo eaque a
						aperiam, ipsa, repellendus pariatur provident eius?</p>
					<a href="#" class="blog-btn">Read More</a>
				</div>
			</div>
		</div>
	</section>




	<div class="contain" id="bookcar">
		<h1>Available Cars</h1>
		<h2>Book Your Car Now!</h2>
		<p>
			Select your journey form a wide variety of Cars with all available<br>fleefts
			with feature
		</p>
		<div class="row">
			<%
			AdminCrud crud = new AdminCrud();
			List<Car> list = crud.getAllCars();
			for (Car car : list) {
			%>

			<div class="main-div">
				<div class="main-content">
					<div class="main-body">
						<img src="images/<%=car.getPhoto()%>" alt="<%=car.getModel()%>">
						<h3>
							Brand:<%=car.getBrand()%></h3>
						<h3>
							Model:<%=car.getModel()%></h3>
						<h3>
							Capacity:<%=car.getCapacity()%></h3>
						<h3>
							Price:Rs.<%=car.getPrice()%>/hour
						</h3>
						<a class="btn" href="bookcar.jsp">Book Now</a>




					</div>
				</div>
			</div>

			<%
			}
			%>
		</div>
	</div>
	
	<script>
		// JavaScript for responsive slider
		const slider = document.querySelector('.slider');
		const blogcontainer = document.querySelector('.blogcontainer');

		function checkSlider() {
			if (blogcontainer.scrollWidth > blogcontainer.clientWidth) {
				slider.style.overflowX = 'scroll';
			} else {
				slider.style.overflowX = 'hidden';
			}
		}

		window.addEventListener('resize', checkSlider);
		checkSlider();
	</script>
</body>
</html>
>