package com.dao.inf;
import java.util.List;

import com.dto.Event_type;
public interface event_type_inf {
	    void addEventType(Event_type et);
	    Event_type findById(Integer id);
	    List<Event_type> findAll();
	    List<Event_type> findByCategoryId(Integer categoryId);
	    Event_type findByEventName(String eventName);
	    void updateEventType(Event_type et);
	    void deleteEventTypeById(Integer id);
}


