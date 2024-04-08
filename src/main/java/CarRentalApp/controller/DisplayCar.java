package CarRentalApp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sound.midi.Soundbank;

import CarRentalApp.dao.UserCrud;
import CarRentalApp.dto.Car;


@WebServlet("/displaycar")
public class DisplayCar extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("Servlet hitted");
		
		int imageid = Integer.parseInt(req.getParameter("imageid"));
		
		System.out.println(imageid);
		
		UserCrud crud = new UserCrud();
		
		try {
			
			Car car = crud.displayImage(imageid);
			
			if(car!=null) {
				
				HttpSession session = req.getSession();
				session.setAttribute("id", String.valueOf(imageid));
				session.setAttribute("car", car);
				
				RequestDispatcher rdDispatcher = req.getRequestDispatcher("displaycar.jsp");
				rdDispatcher.forward(req, resp);
			}
			else{
				
				System.out.println("Car with the given id does not exist!");
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
}
