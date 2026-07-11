package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.inf.customer_inf;
import com.dto.Customer;

public class Customer_impl implements customer_inf{
	
	private Connection con;
	public Customer_impl() {
		this.con=Connectivity.requestConnection();
	}

	@Override
	public void CustomerRegister(Customer c) {
		String Query="insert into customer values(0,?,?,?,?,?,?,?)";
		try {
			 PreparedStatement ps=con.prepareStatement(Query);
			 ps.setString(1, c.getFirst_name());
			 ps.setString(2, c.getLast_name());
			 ps.setString(3, c.getEmail());
			 ps.setLong(4,c.getPhone());
			 ps.setString(5, c.getPassword());
			 ps.setString(6, c.getAddress());
			 ps.setString(7, c.getCreated_at());
			 ps.executeUpdate();
			 
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void DeleteCustomer(Integer id) {
		String Query="delete from Customer where customer_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(Query);
			ps.setInt(1, id);
			ps.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void UpdateProfile(Customer c) {
	String Query="update Customer set first_name=?,last_name=?,email=?,phone=?,password=?,address=?,created_at=? where customer_id=?";
	try {
		PreparedStatement ps=con.prepareStatement(Query);
		
		ps.setString(1, c.getFirst_name());
		ps.setString(2,c.getLast_name());
		ps.setString(3, c.getEmail());
		ps.setLong(4,c.getPhone());
		ps.setString(5, c.getPassword());
		ps.setString(6,c.getAddress());
		ps.setString(7, c.getCreated_at());
		ps.setInt(8,c.getCustomer_id());
		ps.executeUpdate();
	
		} 
	 catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	}

	@Override
	public Customer searchbyId(Integer id) {
	  Customer c=null;
	  String Query="select * from Customer where customer_id=?";
	  try {
		PreparedStatement ps=con.prepareStatement(Query);
		ps.setInt(1, id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			c=new Customer();
			c.setCustomer_id(rs.getInt("customer_id"));
			c.setFirst_name(rs.getString("first_name"));
			c.setLast_name(rs.getString("last_name"));
			c.setEmail(rs.getString("email"));
			c.setPhone(rs.getLong("phone"));
			c.setPassword(rs.getString("password"));
			c.setAddress(rs.getString("address"));
			c.setCreated_at(rs.getString("created_at"));
			
		  }
		} 
	    catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return c;
	}

	@Override
	public List<Customer> findAll() {
		List<Customer> l=new ArrayList<>();
		Customer c=null;
		String Query="Select * from Customer";
		try {
			PreparedStatement ps=con.prepareStatement(Query);
			ResultSet rs = ps.executeQuery();
					while(rs.next()) {
						c=new Customer();
						c.setCustomer_id(rs.getInt("customer_id"));
						c.setFirst_name(rs.getString("first_name"));
						c.setLast_name(rs.getString("last_name"));
						c.setEmail(rs.getString("email"));
						c.setPhone(rs.getLong("phone"));
						c.setPassword(rs.getString("password"));
						c.setAddress(rs.getString("address"));
						c.setCreated_at(rs.getString("created_at"));
						l.add(c);
						
					}
;
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return l;
	}

	@Override
	public Customer findByMailPassword(String mail, String Password) {
		String Query="select * from customer where email=? and password=?";
		Customer c=null;
		try {
			PreparedStatement ps=con.prepareStatement(Query);
			ps.setString(1, mail);
			ps.setString(2, Password);
			ResultSet rs =ps.executeQuery();
			if(rs.next()) {
				c=new Customer();
				c.setCustomer_id(rs.getInt("customer_id"));
				c.setFirst_name(rs.getString("first_name"));
				c.setLast_name(rs.getString("last_name"));
				c.setEmail(rs.getString("email"));
				c.setPhone(rs.getLong("phone"));
				c.setPassword(rs.getString("password"));
				c.setAddress(rs.getString("address"));
				c.setCreated_at(rs.getString("created_at"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return c;
	}
    
}
