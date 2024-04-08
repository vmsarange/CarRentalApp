package CarRentalApp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import CarRentalApp.dao.UserCrud;
import CarRentalApp.dto.Car;

@WebServlet("/bookcar")
public class BookCar extends HttpServlet {
       
	     @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    	
	    	int carid = Integer.parseInt(req.getParameter("carid"));
	        
	    	// fetching the date from front end
	    	
	    	String fromDateTime = req.getParameter("from");
	    	String toDateTime = req.getParameter("to");
	    	
	    	System.out.println(fromDateTime);
	    	System.out.println(toDateTime);
	    	
	    	String fromTime = fromDateTime.split(" ")[1];
	    	String toTime = toDateTime.split(" ")[1];
	    	
	    	String fromDate = fromDateTime.split(" ")[0];
	    	String toDate = toDateTime.split(" ")[0];
	    	
	    	System.out.println(fromDate);
	    	System.out.println(toDate);
	    	
	    	HttpSession session = req.getSession();			
			String email = (String)session.getAttribute("email");
			
	    	
	    	// Splitting the time and date 
	    	
	    	String fromdate [] = (fromDateTime.split(" "))[0].split("-");
	    	
	    	int userfromdate = Integer.parseInt(fromdate[2]);
	    	int userfrommonth = Integer.parseInt(fromdate[1]);
	    	int userfromyear = Integer.parseInt(fromdate[0]);
	    	
	    	System.out.println(userfromdate);
	    	
            String todate [] = (toDateTime.split(" "))[0].split("-");
            
	    	int usertodate = Integer.parseInt(todate[2]);
	    	System.out.println(usertodate);
	    	
	    	int usertomonth = Integer.parseInt(todate[1]);
	    	int usertoyear = Integer.parseInt(todate[0]);
	    	
	    	UserCrud crud = new UserCrud();
	    	
	    	RequestDispatcher rDispatcher;
	    	PrintWriter writer = resp.getWriter();
	    	
	    	Car car;
	    	try {
	    		
	    		car = crud.fetchCar(carid);
	    		if (car==null) {
					
	    			writer.print("<h1>Car with the given id not found...</h1>");
	    			rDispatcher = req.getRequestDispatcher("bookcar.jsp");
	    			rDispatcher.include(req, resp);
				}
	    		String dbfromdate [] = car.getAvailableFromDate().split("-");
	    		int dbfromyear = Integer.parseInt(dbfromdate[0]);
	    		int dbfrommonth = Integer.parseInt(dbfromdate[1]);
	    		int dbfromday = Integer.parseInt(dbfromdate[2]);
	    		
	    		String dbtodate [] = car.getAvailableToDate().split("-");
	    		int dbtoyear = Integer.parseInt(dbtodate[0]);
	    		int dbtomonth = Integer.parseInt(dbtodate[1]);
	    		int dbtoday = Integer.parseInt(dbtodate[2]);
	    		
	   // To check the whether the car is booked in the current year
	    		
	    		if ((userfromyear==dbfromyear)&&(usertoyear==dbtoyear)) {
					
	    			if ((userfrommonth==dbfrommonth)&&(usertomonth==dbtomonth)) {
						
	    				if ((userfromdate>=dbfromday)&&(usertodate<=dbtoday)) {
						    
	    					
	    					System.out.println(fromDate);
	    					System.out.println(toDate);
	    					
	    					double priceperhr = car.getPrice();
	    					
	    					double totalfare = crud.bookCar(carid,email,fromTime, toTime, fromDate, toDate,priceperhr);
	    					
	    					if (totalfare!=0) {
								
	    						writer.print("<h1>Car booked successfully...</h1>");
				    			rDispatcher = req.getRequestDispatcher("bookcar.jsp");
				    			rDispatcher.include(req, resp);
	    					      
							}
	    					else {
	    						
	    						writer.print("<h1>Something went wrong try again...</h1>");
				    			rDispatcher = req.getRequestDispatcher("bookcar.jsp");
				    			rDispatcher.include(req, resp);
	    					      
	    						
	    					}
	    					
	    					
						}
	    				else {
	    				
	    					writer.print("<h1>Car for the entered date is not available...</h1>");
			    			rDispatcher = req.getRequestDispatcher("bookcar.jsp");
			    			rDispatcher.include(req, resp);
	    				}
					}
	    			else {
		    			
		    			writer.print("<h1>Not available for selected month...</h1>");
		    			rDispatcher = req.getRequestDispatcher("bookcar.jsp");
		    			rDispatcher.include(req, resp);
		    		}
				}
	    		else {
	    			
	    			writer.print("<h1>Please select the current year...</h1>");
	    			rDispatcher = req.getRequestDispatcher("bookcar.jsp");
	    			rDispatcher.include(req, resp);
	    		}
	    		
	    	}
	    	catch (Exception e) {
				
	    		e.printStackTrace();
			}
	    	
	    	
	    }
}
