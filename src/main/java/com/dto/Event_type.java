package com.dto;

public class Event_type {
	private Integer event_type_id;
	private Integer category_id;
	private String event_name;
	private String description;
	private Double min_budget;
	private Double max_budget;
	public Integer getEvent_type_id() {
		return event_type_id;
	}
	public void setEvent_type_id(Integer event_type_id) {
		this.event_type_id = event_type_id;
	}
	public Integer getCategory_id() {
		return category_id;
	}
	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}
	public String getEvent_name() {
		return event_name;
	}
	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Double getMin_budget() {
		return min_budget;
	}
	public void setMin_budget(Double min_budget) {
		this.min_budget = min_budget;
	}
	public Double getMax_budget() {
		return max_budget;
	}
	public void setMax_budget(Double max_budget) {
		this.max_budget = max_budget;
	}
	@Override
	public String toString() {
		return "Event_type [event_type_id=" + event_type_id + ", category_id=" + category_id + ", event_name="
				+ event_name + ", description=" + description + ", min_budget=" + min_budget + ", max_budget="
				+ max_budget + "]";
	}


}
