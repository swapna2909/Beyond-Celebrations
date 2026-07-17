package com.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.inf.booking_inf;
import com.dto.Booking;
import com.utility.Connectivity;

public class Booking_impl implements booking_inf{
	private Connection con;
	public Booking_impl() {
		this.con=Connectivity.requestConnection();
	}

    @Override
    public void addBooking(Booking b) {

        String sql = "INSERT INTO booking(customer_id,organizer_id,event_type_id,venue_id,event_date,guest_count,budget,status,special_request) VALUES(?,?,?,?,?,?,?,?,?)";

        try {
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, b.getCustomer_id());
            ps.setInt(2, b.getOrganizer_id());
            ps.setInt(3, b.getEvent_type_id());
            ps.setInt(4, b.getVenue_id());
            ps.setDate(5, Date.valueOf(b.getEvent_date()));
            ps.setInt(6, b.getGuest_count());
            ps.setDouble(7, b.getBudget());
            ps.setString(8, b.getStatus());
            ps.setString(9, b.getSpecial_request());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public Booking findById(Integer id) {

        String sql = "SELECT * FROM booking WHERE booking_id=?";

        try {

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                Booking b = new Booking();

                b.setBooking_id(rs.getInt("booking_id"));
                b.setCustomer_id(rs.getInt("customer_id"));
                b.setOrganizer_id(rs.getInt("organizer_id"));
                b.setEvent_type_id(rs.getInt("event_type_id"));
                b.setVenue_id(rs.getInt("venue_id"));
                b.setBooking_date(rs.getString("booking_date"));
                b.setEvent_date(rs.getString("event_date"));
                b.setGuest_count(rs.getInt("guest_count"));
                b.setBudget(rs.getDouble("budget"));
                b.setStatus(rs.getString("status"));
                b.setSpecial_request(rs.getString("special_request"));

                return b;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Booking> findAll() {

        List<Booking> list = new ArrayList<>();

        String sql = "SELECT * FROM booking";

        try {

            PreparedStatement st = con.prepareStatement(sql);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {

                Booking b = new Booking();

                b.setBooking_id(rs.getInt("booking_id"));
                b.setCustomer_id(rs.getInt("customer_id"));
                b.setOrganizer_id(rs.getInt("organizer_id"));
                b.setEvent_type_id(rs.getInt("event_type_id"));
                b.setVenue_id(rs.getInt("venue_id"));
                b.setBooking_date(rs.getString("booking_date"));
                b.setEvent_date(rs.getString("event_date"));
                b.setGuest_count(rs.getInt("guest_count"));
                b.setBudget(rs.getDouble("budget"));
                b.setStatus(rs.getString("status"));
                b.setSpecial_request(rs.getString("special_request"));

                list.add(b);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<Booking> findByCustomerId(Integer customerId) {

        return getBookings("SELECT * FROM booking WHERE customer_id=?", customerId);

    }

    @Override
    public List<Booking> findByOrganizerId(Integer organizerId) {

        return getBookings("SELECT * FROM booking WHERE organizer_id=?", organizerId);

    }

    @Override
    public List<Booking> findByEventTypeId(Integer eventTypeId) {

        return getBookings("SELECT * FROM booking WHERE event_type_id=?", eventTypeId);

    }

    @Override
    public List<Booking> findByVenueId(Integer venueId) {

        return getBookings("SELECT * FROM booking WHERE venue_id=?", venueId);

    }

    @Override
    public List<Booking> findPendingBookings() {

        return getBookingsByStatus("Pending");

    }

    @Override
    public List<Booking> findApprovedBookings() {

        return getBookingsByStatus("Approved");

    }

    @Override
    public List<Booking> findRejectedBookings() {

        return getBookingsByStatus("Rejected");

    }

    @Override
    public List<Booking> findCompletedBookings() {

        return getBookingsByStatus("Completed");

    }

    @Override
    public List<Booking> findByStatus(String status) {

        return getBookingsByStatus(status);

    }

    @Override
    public void approveBooking(Integer bookingId) {

        updateStatus(bookingId, "Approved");

    }

    @Override
    public void rejectBooking(Integer bookingId) {

        updateStatus(bookingId, "Rejected");

    }

    @Override
    public void completeBooking(Integer bookingId) {

        updateStatus(bookingId, "Completed");

    }

    @Override
    public void updateBooking(Booking b) {

        String sql = "UPDATE booking SET customer_id=?,organizer_id=?,event_type_id=?,venue_id=?,event_date=?,guest_count=?,budget=?,status=?,special_request=? WHERE booking_id=?";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, b.getCustomer_id());
            ps.setInt(2, b.getOrganizer_id());
            ps.setInt(3, b.getEvent_type_id());
            ps.setInt(4, b.getVenue_id());
            ps.setDate(5, Date.valueOf(b.getEvent_date()));
            ps.setInt(6, b.getGuest_count());
            ps.setDouble(7, b.getBudget());
            ps.setString(8, b.getStatus());
            ps.setString(9, b.getSpecial_request());
            ps.setInt(10, b.getBooking_id());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public void deleteBookingById(Integer id) {

        String sql = "DELETE FROM booking WHERE booking_id=?";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    // ---------------- Helper Methods ----------------

    private void updateStatus(Integer bookingId, String status) {

        String sql = "UPDATE booking SET status=? WHERE booking_id=?";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, status);
            ps.setInt(2, bookingId);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private List<Booking> getBookingsByStatus(String status) {

        return getBookings("SELECT * FROM booking WHERE status=?", status);

    }

    private List<Booking> getBookings(String sql, Object value) {

        List<Booking> list = new ArrayList<>();

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setObject(1, value);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Booking b = new Booking();

                b.setBooking_id(rs.getInt("booking_id"));
                b.setCustomer_id(rs.getInt("customer_id"));
                b.setOrganizer_id(rs.getInt("organizer_id"));
                b.setEvent_type_id(rs.getInt("event_type_id"));
                b.setVenue_id(rs.getInt("venue_id"));
                b.setBooking_date(rs.getString("booking_date"));
                b.setEvent_date(rs.getString("event_date"));
                b.setGuest_count(rs.getInt("guest_count"));
                b.setBudget(rs.getDouble("budget"));
                b.setStatus(rs.getString("status"));
                b.setSpecial_request(rs.getString("special_request"));

                list.add(b);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
