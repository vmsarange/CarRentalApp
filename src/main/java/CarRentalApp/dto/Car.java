package CarRentalApp.dto;

public class Car {
     
	private String brand;
	private String model;
	private String fuel;
	private int capacity;
	private double price;
	private String photo;
	private String availableFromDate;
	private String availableToDate;
	private String fromTime;
	private String toTime;
	private String status;
	
	/**
	 * @return the availableFromDate
	 */
	public String getAvailableFromDate() {
		return availableFromDate;
	}
	/**
	 * @param availableFromDate the availableFromDate to set
	 */
	public void setAvailableFromDate(String availableFromDate) {
		this.availableFromDate = availableFromDate;
	}
	/**
	 * @return the availableToDate
	 */
	public String getAvailableToDate() {
		return availableToDate;
	}
	/**
	 * @param availableToDate the availableToDate to set
	 */
	public void setAvailableToDate(String availableToDate) {
		this.availableToDate = availableToDate;
	}
	/**
	 * @return the fromTime
	 */
	public String getFromTime() {
		return fromTime;
	}
	/**
	 * @param fromTime the fromTime to set
	 */
	public void setFromTime(String fromTime) {
		this.fromTime = fromTime;
	}
	/**
	 * @return the toTime
	 */
	public String getToTime() {
		return toTime;
	}
	/**
	 * @param toTime the toTime to set
	 */
	public void setToTime(String toTime) {
		this.toTime = toTime;
	}
	/**
	 * @return the brand
	 */
	public String getBrand() {
		return brand;
	}
	/**
	 * @param brand the brand to set
	 */
	public void setBrand(String brand) {
		this.brand = brand;
	}
	/**
	 * @return the model
	 */
	public String getModel() {
		return model;
	}
	/**
	 * @param model the model to set
	 */
	public void setModel(String model) {
		this.model = model;
	}
	/**
	 * @return the fuel
	 */
	public String getFuel() {
		return fuel;
	}
	/**
	 * @param fuel the fuel to set
	 */
	public void setFuel(String fuel) {
		this.fuel = fuel;
	}
	/**
	 * @return the capacity
	 */
	public int getCapacity() {
		return capacity;
	}
	/**
	 * @param capacity the capacity to set
	 */
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	/**
	 * @return the price
	 */
	public double getPrice() {
		return price;
	}
	/**
	 * @param price the price to set
	 */
	public void setPrice(double price) {
		this.price = price;
	}
	/**
	 * @return the photo
	 */
	/**
	 * @return the photo
	 */
	public String getPhoto() {
		return photo;
	}
	/**
	 * @param photo the photo to set
	 */
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
