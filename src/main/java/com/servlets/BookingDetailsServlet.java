package com.servlets;

import java.io.IOException;

import com.dao.impl.Booking_impl;
import com.dto.BookingDetails;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bookingdetails")
public class BookingDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        String from = request.getParameter("from");

        if (id == null || id.trim().isEmpty()) {
            response.sendRedirect("AdminDashboard.jsp");
            return;
        }

        int bookingId = Integer.parseInt(id);

        Booking_impl dao = new Booking_impl();

        BookingDetails booking = dao.getBookingDetailsById(bookingId);

        if (booking == null) {
            response.sendRedirect("AdminDashboard.jsp");
            return;
        }

        request.setAttribute("booking", booking);
        request.setAttribute("from", from);

        request.getRequestDispatcher("bookingDetails.jsp")
               .forward(request, response);
    }
}