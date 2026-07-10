package com.dto;

public class Organizer {
	private Integer organizer_id;
	private String organizer_name;
	private String email;
	private Long phone;
	private String password;
	
	public Integer getOrganizer_id() {
		return organizer_id;
	}
	public void setOrganizer_id(Integer organizer_id) {
		this.organizer_id = organizer_id;
	}
	public String getOrganizer_name() {
		return organizer_name;
	}
	public void setOrganizer_name(String organizer_name) {
		this.organizer_name = organizer_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Long getPhone() {
		return phone;
	}
	public void setPhone(Long phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Organizer [organizer_id=" + organizer_id + ", organizer_name=" + organizer_name + ", email=" + email
				+ ", phone=" + phone + ", password=" + password + "]";
	}
	
	

}
