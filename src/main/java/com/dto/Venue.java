package com.dto;

public class Venue {
	private Integer venue_id;
	private String venue_name;
	private String location;
	private Integer capacity;
	private Double price;
	private String availability;
	public Integer getVenue_id() {
		return venue_id;
	}
	public void setVenue_id(Integer venue_id) {
		this.venue_id = venue_id;
	}
	public String getVenue_name() {
		return venue_name;
	}
	public void setVenue_name(String venue_name) {
		this.venue_name = venue_name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Integer getCapacity() {
		return capacity;
	}
	public void setCapacity(Integer capacity) {
		this.capacity = capacity;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getAvailability() {
		return availability;
	}
	public void setAvailability(String availability) {
		this.availability = availability;
	}
	@Override
	public String toString() {
		return "Venue [venue_id=" + venue_id + ", venue_name=" + venue_name + ", location=" + location + ", capacity="
				+ capacity + ", price=" + price + ", availability=" + availability + "]";
	}
	
	
}
