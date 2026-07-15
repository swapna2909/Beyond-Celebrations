package com.dto;

import java.time.LocalDate;

public class Booking {
	private Integer booking_id;
	private  Integer customer_id;
	private Integer organizer_id;
	private Integer event_type_id;
	private Integer venue_id;
	private String booking_date;
	private String event_date;
	private Integer guest_count;
	private Double budget;
	private String status;
	private String special_request;
	public Integer getBooking_id() {
		return booking_id;
	}
	public void setBooking_id(Integer booking_id) {
		this.booking_id = booking_id;
	}
	public Integer getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(Integer customer_id) {
		this.customer_id = customer_id;
	}
	public Integer getOrganizer_id() {
		return organizer_id;
	}
	public void setOrganizer_id(Integer organizer_id) {
		this.organizer_id = organizer_id;
	}
	public Integer getEvent_type_id() {
		return event_type_id;
	}
	public void setEvent_type_id(Integer event_type_id) {
		this.event_type_id = event_type_id;
	}
	public Integer getVenue_id() {
		return venue_id;
	}
	public void setVenue_id(Integer venue_id) {
		this.venue_id = venue_id;
	}
	public String getBooking_date() {
		return booking_date;
	}
	public void setBooking_date(String i) {
		this.booking_date = i;
	}
	public String getEvent_date() {
		return event_date;
	}
	public void setEvent_date(String localDate) {
		this.event_date = localDate;
	}
	public Integer getGuest_count() {
		return guest_count;
	}
	public void setGuest_count(Integer guest_count) {
		this.guest_count = guest_count;
	}
	public Double getBudget() {
		return budget;
	}
	public void setBudget(Double budget) {
		this.budget = budget;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSpecial_request() {
		return special_request;
	}
	public void setSpecial_request(String special_request) {
		this.special_request = special_request;
	}
	@Override
	public String toString() {
		return "Booking [booking_id=" + booking_id + ", customer_id=" + customer_id + ", organizer_id=" + organizer_id
				+ ", event_type_id=" + event_type_id + ", venue_id=" + venue_id + ", booking_date=" + booking_date
				+ ", event_date=" + event_date + ", guest_count=" + guest_count + ", budget=" + budget + ", status="
				+ status + ", special_request=" + special_request + "]";
	}
	
	
	
}
