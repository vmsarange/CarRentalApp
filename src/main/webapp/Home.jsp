<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,400;0,500;0,600;0,800;1,900&display=swap"
	rel="stylesheet">

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>


:root {
	--primary-color: #da042a;
	--primary-color-dark: #c00427;
	--secondary-color: #15151f;
	--secondary-color-dark: #0a0b0f;
	--text-light: #6b7280;
	--extra-light: #f8f7fd;
	--white: #ffffff;
	--max-width: 1200px;
}

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

.section__container {
	max-width: var(--max-width);
	margin: auto;
	padding: 5rem 1rem;
}

.section__subheader {
	font-size: 1rem;
	font-weight: 500;
	color: var(--primary-color);
}

.section__header {
	font-size: 2.5rem;
	font-weight: 700;
	line-height: 3.5rem;
	color: var(--secondary-color-dark);
}

.section__description {
	margin-bottom: 2rem;
	color: var(--text-light);
}

.btn {
	padding: 0.75rem 1.5rem;
	font-size: 1rem;
	color: var(--white);
	background-color: var(--primary-color);
	outline: none;
	border: none;
	border-radius: 5px;
	transition: 0.3s;
	cursor: pointer;
}

.btn:hover {
	background-color: var(--primary-color-dark);
}




a {
	text-decoration: none;
}

ul {
	list-style: none;
}

html, body {
	scroll-behavior: smooth;
}


.header {
	padding-block: 5rem;
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
.logo{
			font-size: 2rem;
			letter-spacing: 2px;
			font-weight: bolder;
			color:white
			
		}
nav {
	position: fixed;
	width:100%;
		height:70px;
		background:black;
	isolation: isolate;
	top: 0;
	margin: auto;
	
	
}

.nav__bar {
	padding: 1rem;
	display: flex;
	align-items: center;
	justify-content: space-between;
	gap: 2rem;
	background-color: var(--secondary-color-dark);
}

.nav_menu_btn {
	font-size: 1.5rem;
	color: var(--white);
	cursor: pointer;
}

.nav__links {
	position: absolute;
	width: 100%;
	padding: 2rem;
	display: flex;
	flex-direction: column;
	align-items: center;
	gap: 2rem;
	background-color: var(--secondary-color);
	transform: translateY(-100%);
	transition: 0.5s;
	z-index: -1;
}

.nav__links.open {
	transform: translateY(0);
}

.nav__links a {
	color: var(--white);
	transition: 0.3s;
}

.nav__links a:hover {
	color: var(--primary-color);
}

.header__content {
	max-width: 600px;
}

.header__content h1 {
	margin-bottom: 2rem;
	font-size: 3rem;
	font-weight: 600;
	line-height: 4rem;
	color: black;
}

.h-txt{
			color:white;
		     font-family: "Times New Roman";
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
			background: var(--primary-color);
			padding: 10px 20px;
			margin-inline:110px;
			color: white;
			letter-spacing: 3px;
			transition: 0.4s;
			border-radius:10px;
		}
		.h-txt a:hover{
			background: black;
			border: 2px solid var(--primary-color);
		}
		
		@media only screen and (max-width:770px)
		{
		.header{
		flex-direction:column;
		}
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

.experience__container {
	display: grid;
	gap: 2rem;
}

.experience__image img {
	max-width: 500px;
	margin: auto;
}

.contact{
background-color: #2e2e2e;
	color: white;
	width: 100%;
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 30px 8%;
}
.contact .row{
	display: flex;
	justify-content: space-between;
	width: 100%;
	max-width: 1100px;
}
.row section.col{
	display: flex;
	flex-direction: column;
}
.row section.left{
	flex-basis: 35%;
	min-width: 320px;
	margin-right: 60px;
}
.row section.right{
	flex-basis: 60%;
}
section.left .contactTitle h2{
	position: relative;
	font-size: 28px;
	color: white;
	display: inline-block;
	margin-bottom: 25px;
}
section.left .contactTitle h2::before{
	content: '';
	position: absolute;
	width: 50%;
	height: 1px;
	background-color: #888;
	top: 120%;
	left: 0;
}
section.left .contactTitle h2::after{
	content: '';
	position: absolute;
	width: 25%;
	height: 3px;
	background-color: #da042a;
	top: calc(120% - 1px);
	left: 0;
}
section.left .contactTitle p{
	font-size: 17px;
	color: white;
	letter-spacing: 1px;
	line-height: 1.2;
	padding-bottom: 22px;
}
section.left .contactInfo{
	margin-bottom: 16px;
}
.contactInfo .iconGroup{
	display: flex;
	align-items: center;
	margin: 25px 0px;
}
.iconGroup .icon{
	width: 45px;
	height: 45px;
	border: 2px solid #da042a;
	border-radius: 50%;
	margin-right: 20px;
	position: relative;
}
.iconGroup .icon i{
	font-size: 20px;
	color: white;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}
.iconGroup .details span{
	display: block;
	color: white;
	font-size: 18px;
}
.iconGroup .details span:nth-child(1){
	text-transform: uppercase;
	color: white;
}
section.left .socialMedia{
	display: flex;
	justify-content: flex-start;
	align-items: center;
	flex-wrap: wrap;
	margin: 22px 0px 20px;
}
.socialMedia a{
	width: 35px;
	height: 35px;
	text-decoration: none;
	text-align: center;
	margin-right: 15px;
	border-radius: 5px;
	background-color: #da042a;
	transition: 0.4s;
}
.socialMedia a i{
	color: white;
	font-size: 18px;
	line-height: 35px;
	border: 1px solid transparent;
	transition-delay: 0.4s;
}
.socialMedia a:hover{
	transform: translateY(-5px);
	background-color: #2e2e2e;
	color: dodgerblue;
	border: 1px solid dodgerblue;
}
.socialMedia a:hover i{
	color: dodgerblue;
}

/* Code for the right section (column) */

.row section.right .messageForm{
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
	padding-top: 30px;
}
.row section.right .inputGroup{
	margin: 18px 0px;
	position: relative;
}
.messageForm .halfWidth{
	flex-basis: 48%;
}
.messageForm .fullWidth{
	flex-basis: 100%;
}
.messageForm input, .messageForm textarea{
	width: 100%;
	font-size: 18px;
	padding: 2px 0px;
	background-color: #2e2e2e;
	color: #ddd;
	border: none;
	border-bottom: 2px solid #666;
	outline: none;
}
.messageForm textarea{
	resize: none;
	height: 220px;
	display: block;
}
textarea::-webkit-scrollbar{
	width: 5px;
}
textarea::-webkit-scrollbar-track{
	background-color: #1e1e1e;
	border-radius: 15px;
}
textarea::-webkit-scrollbar-thumb{
	background-color: dodgerblue;
	border-radius: 15px;
}
.inputGroup label{
	position: absolute;
	left: 0;
	bottom: 4px;
	color: #888;
	font-size: 18px;
	transition: 0.4s;
	pointer-events: none;
}
.inputGroup:nth-child(4) label{
	top: 2px;
}
.inputGroup input:focus ~ label, .inputGroup textarea:focus ~ label,
.inputGroup input:valid ~ label, .inputGroup textarea:valid ~ label
{
	transform: translateY(-30px);
	font-size: 16px;
}
.inputGroup button{
	padding: 8px 16px;
	font-size: 18px;
	background-color: #da042a;
	color: #ddd;
	border: 1px solid transparent;
	border-radius: 25px;
	outline: none;
	cursor: pointer;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.3);
	transition: 0.4s;
}
.inputGroup button:hover{
	background-color: #2e2e2e;
	color: dodgerblue;
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.3);
	border: 1px solid dodgerblue;
}
@media(max-width: 1100px){
	.messageForm .halfWidth{
		flex-basis: 100%;
	}
}
@media(max-width: 900px){
	.container .row{
		flex-wrap: wrap;
	}
	.row section.left, .row section.right{
		flex-basis: 100%;
		margin: 0px;
	}
}



.footer {
	background-color: var(--secondary-color-dark);
	
}

.subscribe__container {
margin:20px;
	padding-bottom: 0;
	display: grid;
	gap: 2rem;
}

.subscribe_content .section_header {
	color: var(--white);
}

.subscribe__form form {
	width: 100%;
	max-width: 400px;
	margin-left: auto;
	display: flex;
	align-items: center;
	gap: 1rem;
}

.subscribe__form input {
	width: 100%;
	padding: 0.75rem 1rem;
	outline: none;
	border: none;
	border-radius: 5px;
}

.footer__container {
	display: grid;
	gap: 4rem 2rem;
}

.footer__logo {
	margin-bottom: 2rem;
}

.footer__socials {
	display: flex;
	align-items: center;
	gap: 1rem;
}

.footer__socials a {
	padding: 5px 10px;
	font-size: 1.25rem;
	color: var(--text-light);
	background-color: var(--secondary-color);
	border-radius: 100%;
	transition: 0.3s;
}

.footer__socials a:hover {
	color: var(--primary-color);
	background-color: var(--white);
}

.footer__col h4 {
	margin-bottom: 2rem;
	font-size: 1.2rem;
	font-weight: 600;
	color: var(--white);
}

.footer__links li {
	margin-bottom: 1rem;
}

.footer__links a {
	color: var(--text-light);
	transition: 0.3s;
}

.footer__links a:hover {
	color: var(--white);
}

.footer__links p {
	color: var(--text-light);
}

.footer__links p span {
	font-weight: 500;
	color: var(--white);
}

.footer__bar {
	padding: 1rem;
	font-size: 0.8rem;
	color: var(--white);
	background-color: var(--secondary-color);
	text-align: center;
}

@media ( width > 480px) {
	.header__content h1 {
		font-size: 4rem;
		line-height: 5rem;
	}
	
	.footer__container {
		grid-template-columns: repeat(2, 1fr);
	}
	.footer__col:first-child {
		grid-column: 1/3;
	}
}

@media ( width > 768px) {
	nav {
		padding: 2rem 1rem;
		position: static;
		display: flex;
		align-items: center;
		justify-content: space-between;
	}
	.nav__bar {
		padding: 0;
		background-color: transparent;
	}
	.nav_menu_btn {
		display: none;
	}
	.nav__links {
		padding: 0;
		width: unset;
		position: static;
		transform: none;
		flex-direction: row;
		background-color: transparent;
	}
	.header {
		padding-top: 0;
	}
	.header__content h1 {
		font-size: 5rem;
		line-height: 6rem;
	}
	
	.experience__container {
		grid-template-columns: repeat(2, 1fr);
		align-items: center;
	}
	.service__grid {
		grid-template-columns: repeat(4, 1fr);
	}
	
	.subscribe__container {
		grid-template-columns: repeat(2, 1fr);
		align-items: center;
	}
	.footer__container {
		grid-template-columns: repeat(4, 1fr);
	}
	.footer__col:first-child {
		max-width: 400px;
	}
}

@media ( width > 1024px) {
	.price__grid {
		gap: 2rem;
	}
}



</style>
<title>Car Rental System</title>
</head>
<body>


<!-- ---navbar -->
	<header class="header">
		<nav>
			<div class="nav__bar">
				<div class="logo">
			<i class="fa fa-car"style="font-size:30px;color: red;"></i>CarRentalSystem
		</div>
				<div class="nav_menu_btn" id="menu-btn">
					<i class="ri-menu-3-line"></i>
				</div>
			</div>
			<ul class="nav__links" id="nav-links">
				<li><a href="#home">HOME</a></li>
				<li><a href="#contact">Contact us</a></li>
				
				<li><a href="login.jsp">LOGIN</a></li>
				<li><a href="register.jsp">REGISTER</a></li>

			</ul>
		</nav>
		<div class=h-txt>
		<h3>Your Perfect ride awaits...</h3>
			<h1>UNLOCK THE <br><span>JOURNEY</span></h1><br>
			<a href="login.jsp">Book Car</a>
		</div>
		
	</header>




<!-- --service -->
    <header class="head2" id="service">
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
				We are always ready to serve you the best taxi service at very low cost. It is the most	supreme means of travelling for those who donât own a car. Our car hire service is a 
				complete package for visitors as we make their transportation hassle-free.
			</div>
		</div>
		</section>
		</div>
		</header>
	
		
	<!-- -contact -->	
		<div class="contact" id="contact">
		<main class="row">
			<section class="col left">
			<div class="contactTitle">
					<h2>Get In Touch</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod.</p>
				</div>
				<div class="contactInfo">
					<div class="iconGroup">
						<div class="icon">
							<i class="fa-solid fa-phone"></i>
						</div>
						<div class="details">
							<span>Phone</span> <span>+91 8943878934</span>
						</div>
					</div>
					<div class="iconGroup">
						<div class="icon">
							<i class="fa-solid fa-envelope"></i>
						</div>
						<div class="details">
							<span>Email</span> <span>carrental@gmail.com</span>
						</div>
					</div>
					<div class="iconGroup">
						<div class="icon">
							<i class="fa-solid fa-location-dot"></i>
						</div>
						<div class="details">
							<span>Location</span> <span>Pune,India</span>
						</div>
					</div>
				</div>
				<div class="socialMedia">
					<a href="#"><i class="fa-brands fa-facebook-f"></i></a> <a href="#"><i
						class="fa-brands fa-twitter"></i></a> <a href="#"><i
						class="fa-brands fa-instagram"></i></a> <a href="#"><i
						class="fa-brands fa-linkedin-in"></i></a>
				</div>
			</section>
			<section class="col right">
				<form class="messageForm">
					<div class="inputGroup halfWidth">
						<input type="text" name="" required="required"> <label>Your
							Name</label>
					</div>
					<div class="inputGroup halfWidth">
						<input type="email" name="" required="required"> <label>Email</label>
					</div>
					<div class="inputGroup fullWidth">
						<input type="text" name="" required="required"> <label>Subject</label>
					</div>

					<div class="inputGroup fullWidth">
						<textarea required="required"></textarea>
						<label>Say Something</label>
					</div>

					<div class="inputGroup fullWidth">
						<button>Send Message</button>
					</div>
				</form>
			</section>
		</main>
	</div>
	

	<div class="footer__bar">Copyright © 2024 Car Rental System All Right Reserved.</div>

	<script src="https://unpkg.com/scrollreveal"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
	<script>const menuBtn = document.getElementById("menu-btn");
    const navLinks = document.getElementById("nav-links");
    const menuBtnIcon = menuBtn.querySelector("i");

    menuBtn.addEventListener("click", (e) => {
      navLinks.classList.toggle("open");

      const isOpen = navLinks.classList.contains("open");
      menuBtnIcon.setAttribute(
        "class",
        isOpen ? "ri-close-line" : "ri-menu-3-line"
      );
    });

    navLinks.addEventListener("click", (e) => {
      navLinks.classList.remove("open");
      menuBtnIcon.setAttribute("class", "ri-menu-3-line");
    });

    const scrollRevealOptions = {
      distance: "50px",
      origin: "bottom",
      duration: 1000,
    };

    // header container
    ScrollReveal().reveal(".header__content h1", {
      ...scrollRevealOptions,
    });

    ScrollReveal().reveal(".header__btn", {
      ...scrollRevealOptions,
      delay: 500,
    });

   

   

    const swiper = new Swiper(".swiper", {
      loop: true,
      pagination: {
        el: ".swiper-pagination",
      },
    });
</script>
</body>
</html>