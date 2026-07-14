package com.dao.impl;

import com.dao.inf.venue_inf;
import com.dto.Venue;
import com.utility.Connectivity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class Venue_impl implements venue_inf {

    private Connection con;
    public Venue_impl() {
    	this.con=Connectivity.requestConnection();
    }

    public void AddVenue(Venue v) {

        String sql = "INSERT INTO venue VALUES(0,?,?,?,?,?)";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, v.getVenue_name());
            ps.setString(2, v.getLocation());
            ps.setInt(3, v.getCapacity());
            ps.setDouble(4, v.getPrice());
            ps.setString(5, v.getAvailability());

            ps.executeUpdate();

            System.out.println("Venue Added Successfully");

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void UpdateVenue(Venue v) {

        String sql = "UPDATE venue SET venue_name=?, location=?, capacity=?, price=?, availability=? WHERE venue_id=?";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, v.getVenue_name());
            ps.setString(2, v.getLocation());
            ps.setInt(3, v.getCapacity());
            ps.setDouble(4, v.getPrice());
            ps.setString(5, v.getAvailability());
            ps.setInt(6, v.getVenue_id());

            ps.executeUpdate();

            System.out.println("Venue Updated Successfully");

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void DeleteVenue(Integer id) {

        String sql = "DELETE FROM venue WHERE venue_id=?";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ps.executeUpdate();

            System.out.println("Venue Deleted Successfully");

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public Venue findById(Integer id) {

        String sql = "SELECT * FROM venue WHERE venue_id=?";

        Venue v = null;

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                v = new Venue();

                v.setVenue_id(rs.getInt("venue_id"));
                v.setVenue_name(rs.getString("venue_name"));
                v.setLocation(rs.getString("location"));
                v.setCapacity(rs.getInt("capacity"));
                v.setPrice(rs.getDouble("price"));
                v.setAvailability(rs.getString("availability"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return v;
    }

    public List<Venue> findAll() {

        String sql = "SELECT * FROM venue";

        List<Venue> list = new ArrayList<>();

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Venue v = new Venue();

                v.setVenue_id(rs.getInt("venue_id"));
                v.setVenue_name(rs.getString("venue_name"));
                v.setLocation(rs.getString("location"));
                v.setCapacity(rs.getInt("capacity"));
                v.setPrice(rs.getDouble("price"));
                v.setAvailability(rs.getString("availability"));

                list.add(v);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

   
    public List<Venue> findByLocation(String location) {

        String sql = "SELECT * FROM venue WHERE location=?";

        List<Venue> list = new ArrayList<>();

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, location);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Venue v = new Venue();

                v.setVenue_id(rs.getInt("venue_id"));
                v.setVenue_name(rs.getString("venue_name"));
                v.setLocation(rs.getString("location"));
                v.setCapacity(rs.getInt("capacity"));
                v.setPrice(rs.getDouble("price"));
                v.setAvailability(rs.getString("availability"));

                list.add(v);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public List<Venue> findByCapacity(Integer capacity) {

        String sql = "SELECT * FROM venue WHERE capacity>=?";

        List<Venue> list = new ArrayList<>();

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, capacity);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Venue v = new Venue();

                v.setVenue_id(rs.getInt("venue_id"));
                v.setVenue_name(rs.getString("venue_name"));
                v.setLocation(rs.getString("location"));
                v.setCapacity(rs.getInt("capacity"));
                v.setPrice(rs.getDouble("price"));
                v.setAvailability(rs.getString("availability"));

                list.add(v);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

   
    public List<Venue> AvailableVenues() {

        String sql = "SELECT * FROM venue WHERE availability='Available'";

        List<Venue> list = new ArrayList<>();

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Venue v = new Venue();

                v.setVenue_id(rs.getInt("venue_id"));
                v.setVenue_name(rs.getString("venue_name"));
                v.setLocation(rs.getString("location"));
                v.setCapacity(rs.getInt("capacity"));
                v.setPrice(rs.getDouble("price"));
                v.setAvailability(rs.getString("availability"));

                list.add(v);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

}
