
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot password</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: black;
    margin: 0;
    padding: 0;
}

form {
    
    width: 300px;
    margin: 50px auto;
    padding: 20px;
    color:white;
    border-radius: 4px;
    border:1px solid  white;
    box-shadow: 0 0 10px white;
}

h2 {
    text-align: center;
}

form input[type="email"],
form input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
    outline: none;
}

form button[type="submit"] {
  
    padding: 10px;
    background-color: white;
    color: black;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    margin-left:90px;
      width: 100px;
    
}

</style>
</head>
<body>
         <form action="forgotpass" method="post">
             <h2>Forgot Password</h2>
        <label>Enter  Email</label><input type="email" name="email" required><br><br>
       <label> New password : </label><input type="password" name="newpassword" required><br><br>
        <label>Confirm New password :</label>  <input type="password" name="confirmnewpassword" required>
         <button type="submit">submit</button>
         </form>
</body>
</html>