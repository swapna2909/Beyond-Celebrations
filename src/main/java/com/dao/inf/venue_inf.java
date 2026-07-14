package com.dao.inf;
import java.util.List;

import com.dto.Venue;
public interface venue_inf {
	
	public interface VenueDAO {

	    void AddVenue(Venue v);

	    void UpdateVenue(Venue v);

	    void DeleteVenue(Integer id);

	    Venue findById(Integer id);

	    List<Venue> findAll();

	    List<Venue> findByLocation(String location);

	    List<Venue> findByCapacity(Integer capacity);

	    List<Venue> AvailableVenues();
	}
	
	
}
