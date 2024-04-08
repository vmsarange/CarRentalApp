<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Home</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}
.nav1 {
	width: 100%;
	height: 70px;
	background: black;
	position:fixed;
}

nav {
	width: 100%;
	height: 100px;
	color: white;
	display: flex;
	justify-content: space-around;
	justify-items: center;
	align-items: center;
	margin-inline: 0px;
}

.logo {
	font-size: 2rem;
	letter-spacing: 2px;
	font-weight: bolder;
}

.menu {
	margin-left: 300px;
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
	top: 0;
	left: 0;
	width: 0;
	height: 100%;
	border-bottom: 2px solid rgb(178, 33, 33);
	transition: 0.4s linear;
}

.menu a:hover::before {
	width: 90%;
}
.container{
			width :100%;
			height: 100vh;
			background: url("https://images.unsplash.com/photo-1449965408869-eaa3f722e40d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZHJpdmluZ3xlbnwwfHwwfHx8MA%3D%3D");
			background-repeat:no-repeat;
			background-size:cover;
			animation:changeImage 7s infinite;
				font-family: 'Times New Roman', Times, serif;
			
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
</style>
</head>
<body>
<nav class="nav1">
			<div class="logo">
			<i class="fa fa-car"style="font-size:30px;color: red;"></i>CarRentalSystem
		</div>
		<div class="menu">
		   <a href="adminHome.jsp">Home</a>
			<a href="postcar.jsp">PostCar</a>
			<a href="viewcar.jsp">Manage Car</a>
             <a href="editprofile.jsp">Update Profile</a>
              
               <a href="Home.jsp">Logout</a>
			</div>
</nav>
<div class="container">


</div>
</body>
</html>


