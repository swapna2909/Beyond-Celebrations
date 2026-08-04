package com.dao.inf;

import java.util.List;

import com.dto.Booking;
import com.dto.BookingDetails;

public interface booking_inf {
	void addBooking(Booking b);
    Booking findById(Integer id);
    List<Booking> findAll();
    List<Booking> findByCustomerId(Integer customerId);
    List<Booking> findByOrganizerId(Integer organizerId);
    List<Booking> findByEventTypeId(Integer eventTypeId);
    List<Booking> findByVenueId(Integer venueId);
    List<BookingDetails> findPendingBookings();
    List<BookingDetails> findApprovedBookings();
    List<BookingDetails> findRejectedBookings();
    List<BookingDetails> findCompletedBookings();
    List<Booking> findByStatus(String status);
    void approveBooking(Integer bookingId);
    void rejectBooking(Integer bookingId);
    void completeBooking(Integer bookingId);
    void updateBooking(Booking b);
    void deleteBookingById(Integer id);
	List<Booking> getAllBookings();
	Long countOfBooking();
	List<BookingDetails> getAllBookingDetails();
	BookingDetails getBookingDetailsById(Integer bookingId);
	Integer getVenueIdByBookingId(Integer bookingId);
	
}
