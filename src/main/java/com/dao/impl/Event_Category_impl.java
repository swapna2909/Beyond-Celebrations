package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.dao.inf.event_category_inf;
import com.dto.Event_Category;
import com.utility.Connectivity;

public class Event_Category_impl implements event_category_inf{
	private Connection con;
	public Event_Category_impl() {
		this.con=Connectivity.requestConnection();
		}

	@Override
	public void addEventCategory(Event_Category ec) {
		String s1="Insert into event_category values(0,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(s1);
			ps.setString(1, ec.getCategory_name());
			ps.setString(2, ec.getDescription());
			int rows = ps.executeUpdate();

			if(rows > 0) {
			    System.out.println("Event Category Added Successfully");
			}
			else {
			    System.out.println("Failed to Add Event Category");
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			System.out.println("Failed to Add the Event Category");
		}
	}

	@Override
	public Event_Category findById(Integer id) {
		String s1="select * from event_category where category_id = ?";
		Event_Category ec=null;
		try {
			PreparedStatement ps=con.prepareStatement(s1);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();	
			while(rs.next()) {
			ec=new Event_Category();
			ec.setCategory_id(rs.getInt("category_id"));
			ec.setCategory_name(rs.getString("category_name"));
			ec.setDescription(rs.getString("description"));
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
			System.out.println("Failed to Fetch the Event Category Data");
		}
		
		return ec;
	}

	@Override
	public Event_Category findByCategoryName(String categoryName) {
		String s1="select * from event_category where category_name=?";
		Event_Category ec=null;
		try {
			PreparedStatement ps=con.prepareStatement(s1);
			ps.setString(1,categoryName);
			ResultSet rs=ps.executeQuery();	
			while(rs.next()) {
			ec=new Event_Category();
			ec.setCategory_id(rs.getInt("category_id"));
			ec.setCategory_name(rs.getString("category_name"));
			ec.setDescription(rs.getString("description"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Failed to Fetch the Event Category Data");
		}
		return ec;
	}

	@Override
	public List<Event_Category> findAll() {
		List<Event_Category>list=new ArrayList<>();
		String s1="Select * from event_category";
		Event_Category ec=null;
		
		try {
			PreparedStatement ps = con.prepareStatement(s1);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				ec=new Event_Category();
				ec.setCategory_id(rs.getInt("category_id"));
				ec.setCategory_name(rs.getString("category_name"));
				ec.setDescription(rs.getString("description"));
				list.add(ec);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();	
		}	
		return list;
	}

	@Override
	public void updateEventCategory(Event_Category ec) {
		 String s1="update event_category set category_name=?,description=? where category_id=?";
		 try {
			PreparedStatement ps=con.prepareStatement(s1);
			ps.setString(1, ec.getCategory_name());
			ps.setString(2, ec.getDescription());
			ps.setInt(3, ec.getCategory_id());
			int rows = ps.executeUpdate();

			if(rows > 0) {
			    System.out.println("Event Category Updated Successfully");
			}
			else {
			    System.out.println("No Event Category Found");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("event category failed to add");
		}	
	}

	@Override
	public void deleteEventCategoryById(Integer id) {
	String s1="delete from Event_Category where category_id=?";
	try {
		PreparedStatement ps=con.prepareStatement(s1);
		ps.setInt(1, id);
		int rows = ps.executeUpdate();

		if(rows > 0) {
		    System.out.println("Event Category Deleted Successfully");
		}
		else {
		    System.out.println("No Event Category Found");
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.println("event category failed to delete");
	}	
	}
}
