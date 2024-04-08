package CarRentalApp.controller;
import java.io.File;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import CarRentalApp.dao.UserCrud;
import CarRentalApp.dto.Car;

@MultipartConfig
@WebServlet("/postcar")
public class PostCar extends HttpServlet {
    
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Car car = new Car();
		
		car.setBrand(req.getParameter("brand"));
		car.setCapacity(Integer.parseInt(req.getParameter("capacity")));
	    car.setModel(req.getParameter("carmodel"));
	    car.setFuel(req.getParameter("fuel"));
	    car.setPrice(Double.parseDouble(req.getParameter("price")));
	    car.setStatus(req.getParameter("status"));
	
		Part part = req.getPart("image");
		
		String fileName = part.getSubmittedFileName();
		
		car.setPhoto(fileName);
		

		String fromDateTime = req.getParameter("from");
		String toDateTime = req.getParameter("to");
		
		
		String fromPart [] = fromDateTime.split(" ");
		
		String fromDate = fromPart[0];
	
		car.setAvailableFromDate(fromDate);
		String fromTime = fromPart[1];
		
		car.setFromTime(fromTime);
		
		String toPart [] = toDateTime.split(" ");
		
		String toDate = toPart[0];
		car.setAvailableToDate(toDate);
		String toTime = toPart[1];
		car.setToTime(toTime);
	
//		String uploadPath = "C:/Users/acer/eclipse-workspace/CarRentalApp/src/main/webapp/images/postcars"+fileName;
		
		RequestDispatcher rDispatcher;
		
//		try {
			
		//	FileOutputStream fos = new FileOutputStream(uploadPath);
			
		//	InputStream file  = part.getInputStream();
			
		//	byte [] data = new byte[file.available()];
			
//			file.read(data);
//			fos.write(data);
//			
//			fos.close();
			
			
//			
//		} catch (Exception e) {
//			
//			e.printStackTrace();
//		}
		
		UserCrud crud = new UserCrud();
		
		try {
			
			int result = crud.postCar(car);
			   
			   if (result!=0) {
				
				  String path = getServletContext().getRealPath(""+"postcars");
				  File file = new File(path);
				  part.write(path+File.separator+fileName);
				  
				  rDispatcher = req.getRequestDispatcher("adminHome.jsp");
				  rDispatcher.forward(req, resp);
			   }
			   else {
				System.out.println("Failed to add a image");
			}
			
		    } catch (Exception e) {
			
			e.printStackTrace();
		}
		
    } 
}
