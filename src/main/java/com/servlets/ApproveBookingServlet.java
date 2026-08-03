package com.servlets;

import java.io.IOException;

import com.dao.impl.Booking_impl;
import com.dao.impl.Venue_impl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/approvebooking")
public class ApproveBookingServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int bookingId =
                Integer.parseInt(request.getParameter("id"));

        
        Booking_impl bookingDao = new Booking_impl();
        Venue_impl venueDao = new Venue_impl();

        bookingDao.approveBooking(bookingId);

        int venueId = bookingDao.getVenueIdByBookingId(bookingId);

        venueDao.updateVenueAvailability(venueId, "Not Available");

        response.sendRedirect("adminbookings");
    }

}