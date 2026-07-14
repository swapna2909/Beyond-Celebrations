package com.dao.inf;

import java.util.List;

import com.dto.Organizer;

public interface organizer_inf {
	    void addOrganizer(Organizer o);
	    Organizer findById(Integer id);
	    List<Organizer> findAll();
	    Organizer findByEmail(String email);
	    Organizer findByEmailAndPassword(String email, String password);
	    void updateOrganizer(Organizer o);
	    void updatePassword(Integer organizerId, String password);
	    void deleteOrganizerById(Integer id);
}


	


