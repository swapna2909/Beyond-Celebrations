package com.servlets;
import java.io.IOException;

import com.dao.impl.Booking_impl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/pendingbookings")
public class PendingBookingsServlet extends HttpServlet{

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException{

        Booking_impl dao = new Booking_impl();

        request.setAttribute("bookings",
                dao.findPendingBookings());

        request.getRequestDispatcher("pendingBookings.jsp")
        .forward(request,response);

    }

}