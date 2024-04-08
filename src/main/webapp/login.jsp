<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
	rel="stylesheet">
<title>login Form</title>
<style>
    :root {
    --white-color: white;
    --black-color: black;
  
    --h1-font-size: 1.75rem;
    --normal-font-size: 1rem;
    --small-font-size: .813rem;
  
    --font-medium: 500;
}

* {
    box-sizing: border-box;
    padding: 0;
    margin: 0;
    font-family: "Poppins", sans-serif;
}

body,
input,
button {
    font-size: var(--normal-font-size);
    font-family: var(--body-font);
    
}

body {
    color: white;
    background: rgb(230, 220, 220);
}

input,
button {
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
    position: relative;
    background: black;
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
    border: 2px solid var(--white-color);
    margin-inline: 1.5rem;
    padding: 2.5rem 1.5rem;
    border-radius: 1rem;
    backdrop-filter: blur(8px);
}

.login__title {
    text-align: center;
    font-size: var(--h1-font-size);
    font-weight: var(--font-medium);
    margin-bottom: 2rem;
}

.login__content,
.login__box {
    display: grid;
}

.login__content {
    row-gap: 1.75rem;
    margin-bottom: 1.5rem;
}

.login__box {
    grid-template-columns: max-content 1fr;
    align-items: center;
    column-gap: 0.75rem;
    border-bottom: 2px solid var(--white-color);
}

.login__icon,
.login__eye {
    font-size: 1.25rem;
}

.login__input {
    width: 100%;
    padding-block: 0.8rem;
    background: none;
    color: var(--white-color);
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
    font-weight: var(--font-medium);
    transition: top 0.3s, font-size 0.3s;
}

.login__eye {
    position: absolute;
    right: 0;
    top: 18px;
    z-index: 10;
    cursor: pointer;
}

.login__box:nth-child(2) input {
    padding-right: 1.8rem;
}

.login__check,
.login__check-group {
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.login__check {
    margin-bottom: 1.5rem;
}

.login__check-label,
.login__forgot,
.login__register {
    font-size: var(--small-font-size);
}

.login__check-group {
    column-gap: 0.5rem;
}

.login__check-input {
    width: 16px;
    height: 16px;
}

.login__forgot {
    color: var(--white-color);
}

.login__forgot:hover {
    text-decoration: underline;
}

.login__button {
    width: 100%;
    padding: 1rem;
    border-radius: 0.5rem;
    background-color: var(--white-color);
    font-weight: var(--font-medium);
    cursor: pointer;
    margin-bottom: 2rem;
}

.login__register {
    text-align: center;
}

.login__register a {
    color: var(--white-color);
    font-weight: var(--font-medium);
}

.login__register a:hover {
    text-decoration: underline;
}

/* Media Queries */

/* Small devices (portrait tablets and large phones, 600px and up) */
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
		<!---<img src="images/background2.jpg" alt="login image" class="login__img">--->

		<form action="login" class="login__form" method="get">
			<h1 class="login__title">Login</h1>

			<div class="login__content">
				<div class="login__box">
					<i class="ri-user-3-line login__icon"></i>

					<div class="login__box-input">
						<input type="email" required class="login__input" id="login-email"
							placeholder="Enter email" name="email"> <label for="login-email"
							class="login__label"></label>
					</div>
				</div>

				<div class="login__box">
					<i class="ri-lock-2-line login__icon"></i>

					<div class="login__box-input">
						<input type="password" required class="login__input"
							id="login-pass" placeholder="Enter password" name="password"> <label for="login-pass"
							class="login__label"></label> <i
							class="ri-eye-off-line login__eye" id="login-eye"></i>
					</div>
				</div>
			</div>

			<div class="login__check">
				

				<a href="forgotpassword.jsp" class="login__forgot">Forgot Password?</a>
			</div>

			<button type="submit" class="login__button">Login</button>

			<p class="login__register">
				Don't have an account? <a href="register.jsp">Register</a>
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