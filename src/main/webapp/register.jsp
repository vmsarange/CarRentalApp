<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
	rel="stylesheet">
<title>Registration</title>
<style>
* {
	box-sizing: border-box;
	padding: 0;
	margin: 0;
}

body, input, button {
	font-size: 1rem;
	font-family: "Poppins", sans-serif;
}

body {
	color: white;
	background-color: black;
}

input, button {
	border: none;
	outline: none;
}

a {
	text-decoration: none;
}

img {
	max-width: 100%;
	height: auto;
}

.login {
	margin-top: 10px;
	position: relative;
	height: 100vh;
	display: grid;
	align-items: center;
}

.login__img {
	position: absolute;
	width: 100%;
	height: 100%;
	object-fit: cover;
	object-position: center;
}

.login__form {
	position: relative;
	background-color: black;
	border: 2px solid white;
	margin-inline: 1.5rem;
	padding: 2.5rem 1.5rem;
	border-radius: 1rem;
	backdrop-filter: blur(8px);
}

.login__title {
	margin-top: 0;
	text-align: center;
	font-size: 1.75rem;
	font-weight: 500;
	margin-bottom: 1rem;
}

.login_content, .login_box {
	display: grid;
}

.login__content {
	row-gap: 1rem;
	margin-bottom: 1rem;
}

.login__box {
	grid-template-columns: max-content 1fr;
	align-items: center;
	column-gap: 0.75rem;
	border-bottom: 2px solid white;
}

.login_icon, .login_eye {
	font-size: 1.25rem;
}

.login__input {
	width: 100%;
	padding-block: 0.8rem;
	background: none;
	color: white;
	position: relative;
	z-index: 1;
}

.login__box-input {
	position: relative;
}

.login__label {
	position: absolute;
	left: 0;
	top: 13px;
	font-weight: 500;
	transition: top 0.3s, font-size 0.3s;
}

.login__eye {
	position: absolute;
	right: 0;
	top: 18px;
	z-index: 10;
	cursor: pointer;
}



.login__register {
	font-size: .813rem;
}




.login__button {
	width: 100%;
	padding: 1rem;
	border-radius: 0.5rem;
	background-color: white;
	font-weight: 500;
	cursor: pointer;
	margin-bottom: 2rem;
}

.login__register {
	text-align: center;
}

.login__register a {
	color: white;
	font-weight: 500;
}

.login__register a:hover {
	text-decoration: underline;
}

.login_input:focus+.login_label {
	top: -12px;
	font-size: .813rem;
}

.login_input:not(:placeholder-shown).logininput:not(:focus)+.login_label
	{
	top: -12px;
	font-size: .813rem;
}

@media only screen and (min-width: 600px) {
    .login__form {
        width: 90%;
        margin: auto;
        padding: 3rem 1.5rem;
    }
}

/* Medium devices (landscape tablets, 768px and up) */
@media only screen and (min-width: 768px) {
    .login__form {
        width: 70%;
        padding: 3rem;
    }
}

/* Large devices (laptops/desktops, 992px and up) */
@media only screen and (min-width: 992px) {
    .login__form {
        width: 50%;
    }
}

/* Extra large devices (large desktops, 1200px and up) */
@media only screen and (min-width: 1200px) {
    .login__form {
        width: 40%;
    }
}
</style>
</head>
<body>
	<div class="login">
		<!-- --<img src="images/car.jpg" alt="login image" class="login__img">--->

		<form action="register" class="login__form" method="post">
			<h1 class="login__title">Register</h1>

			<div class="login__content">
				<div class="login__box">
					<i class="ri-user-3-line login__icon"></i>

					<div class="login__box-input">
						<input type="text" required class="login__input" id="login-email"
							placeholder="Enter your name " name="name"> 
					</div>
				</div>

				<div class="login__box">
					<i class="ri-mail-line"></i>

					<div class="login__box-input">
						<input type="email" required class="login__input" id="login-email"
							placeholder="Enter your email " name="email"> 
					</div>
				</div>


				<div class="login__box">
					<i class="ri-phone-fill"></i>

					<div class="login__box-input">
						<input type="tel" required class="login__input" id="login-email"
							placeholder="Enter your phone " name="phone"> 
					</div>
				</div>

				<div class="login__box">
					<i class="ri-map-pin-line"></i>

					<div class="login__box-input">
						<input type="text" required class="login__input"
							id="login-email" placeholder=" Enter your address" name="address"> 
					</div>
				</div>

				<div class="login__box">
					<i class="ri-lock-2-line login__icon"></i>

					<div class="login__box-input">
						<input type="password" required class="login__input"
							id="login-pass" placeholder="Enter Password" name="password">  <i
							class="ri-eye-off-line login__eye" id="login-eye"></i>
					</div>
				</div>
				<div>
					<input type="radio" id="role" name="role" value="admin">Admin
					
					<input type="radio" id="user" name="role" value="user"> User

				</div>


			</div>



			<button type="submit" class="login__button">Register</button>

			<p class="login__register">
				Already have an account? <a href="login.jsp">Login</a>
			</p>
		</form>
	</div>


	<script>
      const showHiddenPass = (loginPass, loginEye) =>{
    	   const input = document.getElementById(loginPass),
    	         iconEye = document.getElementById(loginEye)

    	   iconEye.addEventListener('click', () =>{
    	      
    	      if(input.type === 'password'){
    	        
    	         input.type = 'text'

    	        
    	         iconEye.classList.add('ri-eye-line')
    	         iconEye.classList.remove('ri-eye-off-line')
    	      } else{
    	        
    	         input.type = 'password'

    	       
    	         iconEye.classList.remove('ri-eye-line')
    	         iconEye.classList.add('ri-eye-off-line')
    	      }
    	   })
    	}
    	showHiddenPass('login-pass','login-eye')</script>
</body>
</html>