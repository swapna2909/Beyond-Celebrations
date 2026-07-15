package com.dao.inf;

import java.util.List;

import com.dto.Booking;

public interface booking_inf {
	void addBooking(Booking b);
    Booking findById(Integer id);
    List<Booking> findAll();
    List<Booking> findByCustomerId(Integer customerId);
    List<Booking> findByOrganizerId(Integer organizerId);
    List<Booking> findByEventTypeId(Integer eventTypeId);
    List<Booking> findByVenueId(Integer venueId);
    List<Booking> findPendingBookings();
    List<Booking> findApprovedBookings();
    List<Booking> findRejectedBookings();
    List<Booking> findCompletedBookings();
    List<Booking> findByStatus(String status);
    void approveBooking(Integer bookingId);
    void rejectBooking(Integer bookingId);
    void completeBooking(Integer bookingId);
    void updateBooking(Booking b);
    void deleteBookingById(Integer id);
}
