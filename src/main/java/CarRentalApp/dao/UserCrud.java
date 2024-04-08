package CarRentalApp.dao;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.eclipse.jdt.internal.compiler.lookup.ImplicitNullAnnotationVerifier;

import com.google.protobuf.Field.Cardinality;

import CarRentalApp.dto.Car;
import CarRentalApp.dto.User;

public class UserCrud {
      
	public Connection getConnection() throws Exception {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrentalapp", "root", "root");
		
		return connection;
	}
	public int registerUser(User user)throws Exception {
		
		Connection connection = getConnection();
		
	PreparedStatement statement = connection.prepareStatement("INSERT INTO USERTABLE (NAME,EMAIL,PHONE,ADDRESS,PASSWORD,ROLE) VALUES(?,?,?,?,?,?)");
	  statement.setString(1,user.getName());
	  statement.setString(2, user.getEmail());
	  statement.setLong(3,user.getPhone());
	  statement.setString(4, user.getAddress());
	  statement.setString(5, user.getPassword());
	  statement.setString(6,user.getRole());
	  
	  int ct = statement.executeUpdate();
	  
	  return ct;
	}
	public User login(String email) throws Exception {
		
		 Connection connection = getConnection();
		 PreparedStatement statement = connection.prepareStatement("SELECT * FROM usertable WHERE email=?");
		 statement.setString(1, email);
		 
		 ResultSet rSet = statement.executeQuery();
		 
		 User user = new User();
		 
		if (rSet.next()) {
			
			user.setPassword(rSet.getString("password"));
			user.setRole(rSet.getString("role"));
			connection.close();
			return user;
		}
		connection.close();
		 return null;
	} 
	public int updatePassword(String email,String newpassword) throws Exception {
		
		int count =0;
		
		Connection connection = getConnection();
		
		PreparedStatement statement = connection.prepareStatement("SELECT * FROM USERTABLE WHERE EMAIL=?");
		statement.setString(1, email);
		
		ResultSet set = statement.executeQuery();
		
		if (set.next()) {
			
			 PreparedStatement statement2 = connection.prepareStatement("UPDATE USERTABLE SET PASSWORD=? WHERE EMAIL=?");
			 statement2.setString(1, newpassword);
			 statement2.setString(2, email);
			 
			 count = statement2.executeUpdate();
			 
			 connection.close();
			 return count;
		}
		connection.close();
		return count;
	}
	public int updateProfile(User user,String email) throws Exception {
		
		Connection connection = getConnection();
		
		PreparedStatement statement = connection.prepareStatement("UPDATE USERTABLE SET NAME=?,PHONE=?,ADDRESS=?,PASSWORD=?,ROLE=?,EMAIL=? WHERE EMAIL=?");
		statement.setString(1, user.getName());
		statement.setLong(2, user.getPhone());
		statement.setString(3, user.getAddress());
		statement.setString(4, user.getPassword());
		statement.setString(5, user.getRole());
		statement.setString(6, user.getEmail());
		statement.setString(7, email);
		
		int count = statement.executeUpdate();
		
		if (count!=0) {
			
			connection.close();
			return count;
		}
		connection.close();
		return 0;
	}
	public int postCar(Car car) throws Exception {
		
		Connection connection = getConnection();
		
		PreparedStatement statement = connection.prepareStatement("INSERT INTO CARTABLE (BRAND,MODEL,FUEL,CAPACITY,PHOTO,PRICE,FROMDATE,TODATE,FROMTIME,TOTIME,STATUS) VALUES(?,?,?,?,?,?,?,?,?,?,?)");
		statement.setString(1, car.getBrand());
		statement.setString(2, car.getModel());
		statement.setString(3, car.getFuel());
		statement.setInt(4, car.getCapacity());
		statement.setString(5, car.getPhoto());
		statement.setDouble(6,car.getPrice());
		statement.setString(7, car.getAvailableFromDate());
		statement.setString(8, car.getAvailableToDate());
		statement.setString(9, car.getFromTime());
		statement.setString(10, car.getToTime());
		statement.setString(11, car.getStatus());
		
		int result = statement.executeUpdate();
		
		if (result!=0) {
			
			return result;
		}
		
		return 0;
		
	}
	public Car displayImage(int imageid) throws Exception{
		
       
		Connection connection = getConnection();
		
		PreparedStatement statement = connection.prepareStatement("SELECT * FROM CARTABLE WHERE ID=?");
		statement.setInt(1, imageid);
	
		ResultSet set = statement.executeQuery();
		
		Car car = new Car();
		System.out.println("BEFORE FETCHING THE CAR");
		if (set.next()) {
			
			System.out.println("AFTER FETCHTING THE CAR");
			car.setBrand(set.getString("brand"));
			car.setModel(set.getString("model"));
			car.setCapacity(set.getInt("capacity"));
			car.setPhoto(set.getString("photo"));
			car.setPrice(set.getDouble("price"));
			car.setFuel(set.getString("fuel"));
			car.setAvailableFromDate(set.getString("fromdate"));
			car.setAvailableToDate(set.getString("todate"));
			car.setFromTime(set.getString("fromtime"));
			car.setToTime(set.getString("totime"));
			car.setStatus(set.getString("status"));
			connection.close();
			return car;
			
		}
		System.out.println("CAR IS NOT FETCHED");
		connection.close();
		return null;		
	}
	public Car fetchCar(int carid) throws Exception {
	
        Connection connection = getConnection();		
		PreparedStatement statement = connection.prepareStatement("SELECT * FROM CARTABLE WHERE ID=?");
		statement.setInt(1, carid);	
		ResultSet set = statement.executeQuery();		
		Car car = new Car();
		
		if(set.next()) {
			
			car.setAvailableFromDate(set.getString("fromdate"));
			car.setAvailableToDate(set.getString("todate"));
			car.setPrice(set.getDouble("price"));
			connection.close();
			return car;
		}
		
		return null;
	}
	public double calculateTotalFare(String fromtime, String totime, int userfromdate, int usertodate,double price) {
		  
//		  if((Integer.parseInt(fromtime.split(":")[0]))==0) {
//			  
//			  fromtime.split(":")[0] = "12";
//		  }
//		  		
		  double fromtime1 = Double.parseDouble(fromtime.split(":")[0]);
		  double totime2 = Double.parseDouble(totime.split(":")[0]);
		  
		  int hrs = 1;
		  
		  if (fromtime1==totime2) {
			      
			       
		      }
		  
		  int days = 0;
		  
		  if (userfromdate==usertodate) {
			   
			  days = 1;
		   }
		  else {
			   days = userfromdate-usertodate;
		   }
		  
		  int totaldays = Math.abs(days);
		
		  double totalhrs = Math.abs((fromtime1-totime2));
		 
		  double totalfare = ((totalhrs*((double)totaldays)))*price;
		  
		  
	     return totalfare;
	}
    public double bookCar(int carid,String useremail,String fromtime,String totime,String userfromdate,String usertodate,double price) throws Exception {
	      
    	  int userfromDate = Integer.parseInt((userfromdate.split("-")[2]));
    	  int usertoDate = Integer.parseInt((usertodate.split("-")[2]));
    	
    	 double totalfare = calculateTotalFare(fromtime, totime, userfromDate, usertoDate,price);
    	 
    	
    	 System.out.println(totalfare);
    	 
    	 System.out.println(usertodate);
    	 System.out.println(userfromdate);
    	 
    	 Connection connection = getConnection();
    	 
    	 PreparedStatement statement = connection.prepareStatement("INSERT INTO BOOKINGHISTORY (USERID,CARID,FROMDATE,TODATE,FROMTIME,TOTIME,TOTALFARE) VALUES(?,?,?,?,?,?,?)");
    	 statement.setString(1, useremail);
    	 statement.setInt(2, carid);
    	 statement.setString(3, userfromdate);
    	 statement.setString(4, usertodate);
    	 statement.setString(5, fromtime);
    	 statement.setString(6, totime);
    	 statement.setDouble(7, totalfare);
    	 
    	 int count = statement.executeUpdate();
    	 
    	 PreparedStatement statement2 = connection.prepareStatement("UPDATE CARTABLE SET STATUS=? WHERE ID=?");
    	 statement2.setString(1,"Booked");
    	 statement2.setInt(2, carid);
    	 
    	 int ct = statement2.executeUpdate();
    	 
    	 if (ct!=0) {
			
    		   System.out.println("Car booked");
		   }
    	     	 
    	 if (count!=0) {
			
    		 return totalfare;
		}
    	return 0;
    }
    public List<Car> getAllCars() {
        List<Car> cars = new ArrayList<>();
        try (
        	 Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement("SELECT * FROM CARTABLE");
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Car car = new Car();
               
                car.setBrand(rs.getString("brand"));
                car.setModel(rs.getString("model"));
                car.setCapacity(rs.getInt("capacity"));
                car.setPrice(rs.getDouble("price"));
                car.setFuel(rs.getString("fuel"));
                car.setAvailableFromDate(rs.getString("fromdate"));
                car.setAvailableToDate(rs.getString("todate"));
                
                car.setPhoto(rs.getString("photo"));
                cars.add(car);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cars;
    }
    
    public boolean editCar(Car car)
    {
    	boolean f=false;
    	try {
    	String sql="update cars set model=?,brand=?,fuel=?,price=?,capacity=? where cid=?";
    	Connection connection = getConnection();
		
    	PreparedStatement ps=connection.prepareStatement(sql);
    	ps.setString(1, car.getModel());
			ps.setString(2, car.getBrand());
			ps.setString(3, car.getFuel());
			ps.setDouble(4, car.getPrice());
			ps.setInt(5, car.getCapacity());
			
			ps.setInt(6, car.getCid());
			int count=ps.executeUpdate();
			if(count==1)
			{
				f=true;
			}
		} 
    	catch (Exception e) {
			e.printStackTrace();
		}
    	return f;
    }
    public Car getCarById(int id)
    {
    	
    		Car c= null;
    		try {
    			String sql = "select * from cars where cid=?";
    			
    			Connection connection=getConnection();
    			PreparedStatement ps = connection.prepareStatement(sql);
    			ps.setInt(1, id);
    			ResultSet rs = ps.executeQuery();
    			while (rs.next()) {
    				
    				c=new Car();
    
    				c.setModel(rs.getString(2));
    				c.setBrand(rs.getString(3));
    				c.setFuel(rs.getString(4));
    				c.setPrice(rs.getDouble(5));
    				c.setCapacity(rs.getInt(6));
    				c.setPhoto(rs.getString(7));;
    				
    				
    				
    			}

    		} catch (Exception e) {
    			e.printStackTrace();
    		}
    	return c;
    }
    public boolean deleteCar(int id) {
		boolean f = false;
		try {
			String sql = "delete from cars where cid=?";
			Connection connection=getConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
}
