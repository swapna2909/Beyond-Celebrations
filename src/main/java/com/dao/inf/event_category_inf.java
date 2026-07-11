package com.dao.inf;
import java.util.List;
import com.dto.Event_Category;
public interface event_category_inf {
	    void addEventCategory(Event_Category ec);
	    Event_Category findById(Integer id);
	    Event_Category findByCategoryName(String categoryName);
	    List<Event_Category> findAll();
	    void updateEventCategory(Event_Category ec);
	    void deleteEventCategoryById(Integer id);
	}


