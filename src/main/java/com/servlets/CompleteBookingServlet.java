package com.servlets;



import java.io.IOException;

import com.dao.impl.Booking_impl;
import com.dao.impl.Venue_impl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/completebooking")
public class CompleteBookingServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Integer bookingId =
                Integer.parseInt(request.getParameter("id"));

        Booking_impl bookingDao = new Booking_impl();

        Venue_impl venueDao = new Venue_impl();

        // Get venue id before updating
        Integer venueId =
                bookingDao.getVenueIdByBookingId(bookingId);

        // Mark booking as completed
        bookingDao.completeBooking(bookingId);

        // Make venue available again
        if(venueId != null){

            venueDao.updateVenueAvailability(
                    venueId,
                    "Available"
            );
        }

        response.sendRedirect("approvedbookings");

    }

}
