package com.servlets;
import java.io.IOException;

import com.dao.impl.Booking_impl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/rejectedbookings")
public class RejectedBookingsServlet extends HttpServlet{

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException{

        Booking_impl dao = new Booking_impl();

        request.setAttribute("bookings",
                dao.findRejectedBookings());

        request.getRequestDispatcher("rejectedBookings.jsp")
        .forward(request,response);

    }

}
