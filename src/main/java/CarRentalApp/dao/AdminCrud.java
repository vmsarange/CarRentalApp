package CarRentalApp.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import CarRentalApp.dto.Car;



public class AdminCrud {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/carrentalapp";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";

    public Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
    }

    public boolean postCars(Car car) {
        boolean success = false;
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement("INSERT INTO cars(model, brand, fuel, price, capacity, photo) VALUES (?, ?, ?, ?, ?, ?)")) {

            ps.setString(1, car.getModel());
            ps.setString(2, car.getBrand());
            ps.setString(3, car.getFuel());
            ps.setDouble(4, car.getPrice());
            ps.setInt(5, car.getCapacity());
            ps.setString(6, car.getPhoto());

            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                success = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }

    public List<Car> getAllCars() {
        List<Car> cars = new ArrayList<>();
        try (
        	 Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement("SELECT * FROM cars");
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Car car = new Car();
                car.setCid(rs.getInt("cid"));
                car.setBrand(rs.getString("brand"));
                car.setModel(rs.getString("model"));
                car.setCapacity(rs.getInt("capacity"));
                car.setPrice(rs.getDouble("price"));
                car.setFuel(rs.getString("fuel"));
                car.setFromdate(rs.getString("fromdate"));
                car.setTodate(rs.getString("todate"));
                
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
    				c.setCid(rs.getInt(1));
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
