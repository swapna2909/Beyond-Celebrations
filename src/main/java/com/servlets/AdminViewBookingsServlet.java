package com.servlets;

import java.io.IOException;
import java.util.List;

import com.dao.impl.Booking_impl;
import com.dto.BookingDetails;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/adminbookings")
public class AdminViewBookingsServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Booking_impl dao = new Booking_impl();

        List<BookingDetails> list = dao.getAllBookingDetails();

        request.setAttribute("bookings", list);

        request.getRequestDispatcher("adminBookings.jsp")
               .forward(request, response);

    }

}