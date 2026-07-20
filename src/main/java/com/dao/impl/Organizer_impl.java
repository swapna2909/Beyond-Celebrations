package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.inf.organizer_inf;
import com.dto.Organizer;
import com.utility.Connectivity;
public class Organizer_impl implements organizer_inf {


	private Connection con;
	public Organizer_impl() {
		this.con=Connectivity.requestConnection();
	}





	    @Override
	    public Organizer findById(Integer id) {

	        String sql = "SELECT * FROM organizer WHERE organizer_id=?";

	        Organizer o = null;

	        try {

	            PreparedStatement ps = con.prepareStatement(sql);

	            ps.setInt(1, id);

	            ResultSet rs = ps.executeQuery();

	            if (rs.next()) {

	                o = new Organizer();

	                o.setOrganizer_id(rs.getInt("organizer_id"));
	                o.setOrganizer_name(rs.getString("organizer_name"));
	                o.setEmail(rs.getString("email"));
	                o.setPhone(Long.parseLong(rs.getString("phone")));
	                o.setPassword(rs.getString("password"));

	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return o;
	    }

	    @Override
	    public List<Organizer> findAll() {

	        String sql = "SELECT * FROM organizer";

	        List<Organizer> list = new ArrayList<>();

	        try {

	            PreparedStatement ps = con.prepareStatement(sql);

	            ResultSet rs = ps.executeQuery();

	            while (rs.next()) {

	                Organizer o = new Organizer();

	                o.setOrganizer_id(rs.getInt("organizer_id"));
	                o.setOrganizer_name(rs.getString("organizer_name"));
	                o.setEmail(rs.getString("email"));
	                o.setPhone(Long.parseLong(rs.getString("phone")));
	                o.setPassword(rs.getString("password"));

	                list.add(o);

	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return list;
	    }

	    @Override
	    public Organizer findByEmail(String email) {

	        String sql = "SELECT * FROM organizer WHERE email=?";

	        Organizer o = null;

	        try {

	            PreparedStatement ps = con.prepareStatement(sql);

	            ps.setString(1, email);

	            ResultSet rs = ps.executeQuery();

	            if (rs.next()) {

	                o = new Organizer();

	                o.setOrganizer_id(rs.getInt("organizer_id"));
	                o.setOrganizer_name(rs.getString("organizer_name"));
	                o.setEmail(rs.getString("email"));
	                o.setPhone(Long.parseLong(rs.getString("phone")));
	                o.setPassword(rs.getString("password"));

	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return o;
	    }

	    @Override
	    public Organizer findByEmailAndPassword(String email, String password) {

	        String sql = "SELECT * FROM organizer WHERE email=? AND password=?";

	        Organizer o = null;

	        try {

	            PreparedStatement ps = con.prepareStatement(sql);

	            ps.setString(1, email);
	            ps.setString(2, password);

	            ResultSet rs = ps.executeQuery();

	            if (rs.next()) {

	                o = new Organizer();

	                o.setOrganizer_id(rs.getInt("organizer_id"));
	                o.setOrganizer_name(rs.getString("organizer_name"));
	                o.setEmail(rs.getString("email"));
	                o.setPhone(Long.parseLong(rs.getString("phone")));
	                o.setPassword(rs.getString("password"));

	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return o;
	    }

	    @Override
	    public void updateOrganizer(Organizer o) {

	        String sql = "UPDATE organizer SET organizer_name=?, email=?, phone=?, password=? WHERE organizer_id=?";

	        try {

	            PreparedStatement ps = con.prepareStatement(sql);

	            ps.setString(1, o.getOrganizer_name());
	            ps.setString(2, o.getEmail());
	            ps.setLong(3, o.getPhone());
	            ps.setString(4, o.getPassword());
	            ps.setInt(5, o.getOrganizer_id());

	            ps.executeUpdate();

	            System.out.println("Organizer Updated Successfully");

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	    }

	    @Override
	    public void updatePassword(Integer organizerId, String password) {

	        String sql = "UPDATE organizer SET password=? WHERE organizer_id=?";

	        try {

	            PreparedStatement ps = con.prepareStatement(sql);

	            ps.setString(1, password);
	            ps.setInt(2, organizerId);

	            ps.executeUpdate();

	            System.out.println("Password Updated Successfully");

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	    }

	    @Override
	    public void deleteOrganizerById(Integer id) {

	        String sql = "DELETE FROM organizer WHERE organizer_id=?";

	        try {

	            PreparedStatement ps = con.prepareStatement(sql);

	            ps.setInt(1, id);

	            ps.executeUpdate();

	            System.out.println("Organizer Deleted Successfully");

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	    }

		@Override
		public void addOrganizer(Organizer o) {

	        String sql = "INSERT INTO organizer VALUES(0,?,?,?,?)";

	        try {

	            PreparedStatement ps = con.prepareStatement(sql);

	            ps.setString(1, o.getOrganizer_name());
	            ps.setString(2, o.getEmail());
	            ps.setLong(3, o.getPhone());
	            ps.setString(4, o.getPassword());

	            ps.executeUpdate();

	            System.out.println("Organizer Added Successfully");

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

		}


	}

