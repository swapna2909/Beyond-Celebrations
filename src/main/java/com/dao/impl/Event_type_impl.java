package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.inf.event_type_inf;
import com.dto.Event_type;
import com.utility.Connectivity;

public class Event_type_impl implements event_type_inf{
	private Connection con;
	public Event_type_impl() {
		this.con=Connectivity.requestConnection();
	}


	@Override
	public void addEventType(Event_type et) {
		String s1="insert into event_type values (0,?,?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(s1);
			ps.setInt(1, et.getCategory_id());
			ps.setString(2, et.getEvent_name());
			ps.setString(3, et.getDescription());
			ps.setDouble(4, et.getMin_budget());
			ps.setDouble(5, et.getMax_budget());
			int rows = ps.executeUpdate();

			if(rows > 0) {
			    System.out.println("Event Type Added Successfully");
			}
			else {
			    System.out.println("Failed to Add Event Type");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Failed to add the Event Type");
		}


	}

	@Override
	public Event_type findById(Integer id) {
		String s1="select * from event_type where event_type_id=?";
		Event_type et=null;
		try {
			PreparedStatement ps=con.prepareStatement(s1);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				et=new Event_type();
				et.setEvent_type_id(rs.getInt("event_type_id"));
				et.setCategory_id(rs.getInt("category_id"));
				et.setEvent_name(rs.getString("event_name"));
				et.setDescription(rs.getString("description"));
				et.setMin_budget(rs.getDouble("min_budget"));
				et.setMax_budget(rs.getDouble("max_budget"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return et;
	}

	@Override
	public List<Event_type> findAll() {
		List<Event_type>list=new ArrayList<>();
		String s1="select * from event_type";
		Event_type et=null;
		try {
			PreparedStatement ps=con.prepareStatement(s1);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
			et=new Event_type();
			et.setEvent_type_id(rs.getInt("event_type_id"));
			et.setCategory_id(rs.getInt("category_id"));
			et.setEvent_name(rs.getString("event_name"));
			et.setDescription(rs.getString("description"));
			et.setMin_budget(rs.getDouble("min_budget"));
			et.setMax_budget(rs.getDouble("max_budget"));
			list.add(et);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return list;
	}

	@Override
	public List<Event_type> findByCategoryId(Integer categoryId) {
		List<Event_type>list=new ArrayList<>();
		String s1="select * from event_type where category_id=?";
		Event_type et=null;
		try {
			PreparedStatement ps=con.prepareStatement(s1);
			ps.setInt(1,categoryId );
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				et=new Event_type();
				et.setEvent_type_id(rs.getInt("event_type_id"));
				et.setCategory_id(rs.getInt("category_id"));
				et.setEvent_name(rs.getString("event_name"));
				et.setDescription(rs.getString("description"));
				et.setMin_budget(rs.getDouble("min_budget"));
				et.setMax_budget(rs.getDouble("max_budget"));
				list.add(et);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public Event_type findByEventName(String eventName) {

		String s1="select * from event_type where event_name=?";
		Event_type et=null;
		try {
			PreparedStatement ps=con.prepareStatement(s1);
			ps.setString(1,eventName);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				et=new Event_type();
				et.setEvent_type_id(rs.getInt("event_type_id"));
				et.setCategory_id(rs.getInt("category_id"));
				et.setEvent_name(rs.getString("event_name"));
				et.setDescription(rs.getString("description"));
				et.setMin_budget(rs.getDouble("min_budget"));
				et.setMax_budget(rs.getDouble("max_budget"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return et;
	}

	@Override
	public void updateEventType(Event_type et) {
		String s1="update event_type set category_id=?,event_name=?,description=?,min_budget=?,max_budget=? where event_type_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(s1);
			ps.setInt(1,et.getCategory_id());
			ps.setString(2, et.getEvent_name());
			ps.setString(3, et.getDescription());
			ps.setDouble(4, et.getMin_budget());
			ps.setDouble(5, et.getMax_budget());
			ps.setInt(6, et.getEvent_type_id());
			int rows = ps.executeUpdate();

			if (rows > 0) {
			    System.out.println("Event Type Updated Successfully");
			} else {
			    System.out.println("No Event Type Found");
			}


		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Failed to Update the Data");
		}


	}

	@Override
	public void deleteEventTypeById(Integer id) {
		String s1="delete from event_type where event_type_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(s1);
			ps.setInt(1, id);
			int rows = ps.executeUpdate();

			if(rows > 0) {
			    System.out.println("Data Deleted Successfully");
			}
			else {
			    System.out.println("No Event Type Found");
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Failed to Delete the Data");
		}


	}


}
