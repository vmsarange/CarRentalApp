<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="CarRentalApp.dao.UserCrud"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile Module</title>
</head>
<body>
		<h1>Edit Profile</h1>
		<%
		     String email = (String)session.getAttribute("email");
		     
		     UserCrud crud = new UserCrud();
		     
		     Connection connection = crud.getConnection();
		     
		     PreparedStatement statement = connection.prepareStatement("SELECT * FROM USERTABLE WHERE EMAIL=?");
		     statement.setString(1, email);
		     
		     ResultSet set = statement.executeQuery();
		     
		     while(set.next()){     
		%>
            <form action="editprofile" method="post">
			
                <label>Name:</label>
				<input type="text" name="name"  value="<%= set.getString("name")%>" > 
			    <br><br>
                <label>Email:</label>
				<input type="email"  name="email"  value="<%= set.getString("email")%>" > 
		         <br><br>
                <label>Phone:</label>
				<input type="tel" name="phone"  value="<%= set.getString("phone")%>" > 
			     <br><br>
                <label>Address:</label>
				<input type="text"  name="address"  value="<%= set.getString("address")%>"> 
			     <br><br>
                <label>Password:</label>
				<input type="password"  name="password"  value="<%= set.getString("password")%>">
				 <label>Role :</label>
				<input type="text"  name="role"  value="<%= set.getString("role")%>">
				 <br><br>
				 <br><br>
			   <button type="submit" class="btn">update</button>
			
		</form>
        <% } %>  
</body>
</html>