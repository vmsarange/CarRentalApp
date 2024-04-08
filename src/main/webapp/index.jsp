<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
@charset "UTF-8";
*{
			padding: 0;
			margin: 0;
			box-sizing: border-box;
		}
		.container{
			width :100%;
			height: 100vh;
			background: url("https://images.unsplash.com/photo-1449965408869-eaa3f722e40d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZHJpdmluZ3xlbnwwfHwwfHx8MA%3D%3D");
			background-repeat:no-repeat;
			background-size:cover;
			animation:changeImage 7s infinite;
			font-family: 'times new roman';	
			
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
		.nav1{
		width:100%;
		height:80px;
		background:black;
		
		}
		nav{
			width: 100%;
			height: 100px;
			color: white;
			display: flex;
			justify-content: space-around;
			justify-items: center;
			align-items: center;
			margin-inline: 0px;
			
			
		}
		.logo{
			font-size: 2rem;
			letter-spacing: 2px;
			font-weight: bolder;
			
		}
		.menu{
			margin-left: 300px;
		}
		.menu a{
			text-decoration: none;
			color: white;
			padding: 10px 20px;
			font-size: 20px;
			font-weight: bolder;
			position: relative;
			
		}
		.menu a:before{
			content: '';
			position: absolute;
			top: 0;
			left: 0;
			width: 0;
			height: 100%;
			border-bottom: 2px solid rgb(178,33,33);
			transition: 0.4s linear;
		}
		.menu a:hover::before{
			width: 90%;
		}
		.menu button{
			text-decoration: none;
			color: white;
			padding: 4px 8px;
			font-size: 20px;
			background: indianred;
			border-radius: 8px;
			transition: 0.2s;
		}
		.menu button:hover{
				background: transparent;
				border:1px solid indianred ;
		}
		.h-txt{
			color:white;
			padding-left:320px;
			margin: 140px;
			letter-spacing: 0px;
		}
		
		.h-txt h1{
		font-size:4em;
		}
		span{
		 padding-left:60px;
		}
		.h-txt h3{
			color:white;
			padding-left:110px;
		}
		.h-txt a{
			text-decoration: none;
			background: indianred;
			padding: 10px 20px;
			margin-inline:110px;
			color: white;
			letter-spacing: 3px;
			transition: 0.4s;
		}
		.h-txt a:hover{
			background: black;
			border: 2px solid indianred;
		}
		.head2{
			width: 100%;
		height: 100vh;
		background:whitesmoke;
		background-size: cover;
		text-align:center;
		padding:10px;
		}
	.s2{
	font-size: 1em;
	font-family: verdana ;
	margin-bottom: 0px ;
	margin-right: 80px;
	margin-left: 80px;
	text-align: center;
	padding: 30px;
	letter-spacing: 1px;
	color:black ;

}
.h1{
	font-size: 2em;
	
}
.s2-grid{
	margin: 20px;
	display: grid;
	grid-template-columns: repeat(3,1fr);
	grid-gap: 40px;
}
.item1{
	height:420px;
	width:320px;
	background:#1e2736;
	color:white;
}
.item2{
	height:420px;
	width:320px;
	background:#1e2736;
	color:white
}
.item3{
	height:420px;
	width:320px;
	background:#1e2736;
	color:white;
}
.logo2{
	padding:20px;
	background:transparent;
	border-radius:100%;
	margin:20px;
	margin-inline:100px 120px;
	border: white;
	border-style: solid;
}
.grid-content{
	margin:30px;
}

</style>

</head>
<body>
	<section>
	<div class="container">
		<nav class="nav1">
			<div class="logo">
			<i class="fa fa-car"style="font-size:30px;color: red;"></i>CarRentalSystem
		</div>
		<div class="menu">
			<a href="Home.jsp">Home</a>
			<a href="service.jsp">Services</a>
			<a href="blog.html">Blogs</a>
			<a href="AboutPage.html">About Us</a>
			<a href="contactus.js">Contact</a>
			<a href="bookcar.jsp">Book Car</a>
			<button><a href="register.jsp">Register</a></button>
			<button><a href="login.jsp">Login</a></button>
			</div>
		</nav>
		<div class=h-txt>
		<h3>Your Perfect ride awaits...</h3>
			<h1 >UNLOCK THE <br><span>JOURNEY</span></h1><br>
			<a href="#">Book Your Ride</a>
		</div>
	</div>

	</section>
	<header class="head2">
		<div>
			<h1 class="head2-h1">Why Choose Us?</h1>
		<section class="s2">
		
		<div class="s2-grid">
			<div class="item1">
				<div class=logo2><i class="fa fa-calendar fa-3x "></i></div>
				<h3 class="grid-content">We Are Experienced</h3>
				It is online taxi booking service which provides economical, reliable, timely and safe car rental services at very affordable cost. We have been 
				 serving in cities like in Pune, Delhi, nashik, Ahmadabad, etc., from past 12 years.
			</div>
			<div class="item2">
				<div class=logo2><i class="fa fa-handshake-o fa-3x"></i></div>
				<h3 class="grid-content">Trusted and Reliable</h3>
				We offer the economical, easiest, fastest, trusted and a reliable service of booking a taxi, cab or a car rental of your choice and preferences in Pune city.
				
			</div>
			<div class="item3">
				<div class=logo2><i class="fa fa-inr fa-3x "></i></div>
				<h3 class="grid-content">Transparent Pricing</h3>
				We are always ready to serve you the best taxi service at very low cost. It is the most	supreme means of travelling for those who don’t own a car. Our car hire service is a 
				complete package for visitors as we make their transportation hassle-free.
			</div>
		</div>
		</section>
		</div>
		</header>
		
		<%@include file="footer.html" %>
	
</body>
</html>