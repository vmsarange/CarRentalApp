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
import CarRentalApp.dto.User;
@WebServlet("/register")
public class UserController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	    User user = new User();
	    
	    user.setName(req.getParameter("name"));
	    user.setAddress(req.getParameter("address"));
	    user.setEmail(req.getParameter("email"));
	    user.setPhone(Long.parseLong(req.getParameter("phone")));
	    user.setPassword(req.getParameter("password"));
	    user.setRole(req.getParameter("role"));
	    
	    UserCrud userCrud = new UserCrud();
	    
  
		
		RequestDispatcher rDispatcher ;
		
		try {
			
			if (userCrud.registerUser(user)!=0) {
				
				rDispatcher = req.getRequestDispatcher("login.jsp");
				rDispatcher.forward(req, resp);
			
			} else {
                
                rDispatcher = req.getRequestDispatcher("index.jsp");
                rDispatcher.include(req, resp);
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
}
