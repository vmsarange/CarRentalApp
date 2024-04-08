package CarRentalApp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import CarRentalApp.dao.UserCrud;

@WebServlet("/forgotpass")
public class ForgotPass extends HttpServlet {
      
	  @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		  String email = req.getParameter("email");
		  String newpassword = req.getParameter("newpassword");
		  String confirmnewpassword = req.getParameter("confirmnewpassword");
		  	  
		  UserCrud crud = new UserCrud();
		 
		  PrintWriter writer = resp.getWriter();
		  RequestDispatcher requestDispatcher;
		  
		  
		 try {
			 						 
			 if (newpassword.equals(confirmnewpassword)) {
				 
				 int result = crud.updatePassword(email,newpassword);
				
				 if (result!=0) {
						
				    	writer.print("<h1>Password updated successfully!");
				    	requestDispatcher = req.getRequestDispatcher("login.jsp");
				    	requestDispatcher.include(req, resp);
				    	
				}
			   else {
				 
					writer.print("<h1>User with the given email does not exist...</h1>");
			    	requestDispatcher = req.getRequestDispatcher("login.jsp");
			    	requestDispatcher.include(req, resp);
				  
			    }
			  }
			 else {
				 
				    writer.print("<h1>Password did not matched! Try again...</h1>");
			    	requestDispatcher = req.getRequestDispatcher("forgotpass.jsp");
			    	requestDispatcher.include(req, resp);
			 }
				    
		} catch (Exception e) {
		     
		}                             
	}
}
