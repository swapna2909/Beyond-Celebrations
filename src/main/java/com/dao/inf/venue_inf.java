package com.dao.inf;
import com.dto.Venue;
public interface venue_inf {
	
	void AddVenue(Venue v);
	void UpdateVenue(Venue v);
	void DeleteVenue(Integer id);
	Venue findByLocation(String Location);
	Venue findByCapacity(Integer size);
	Venue AvailableVenues();
	
	
	
}
