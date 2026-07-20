package com.servlets;
import java.io.IOException;
import java.util.List;
import com.dao.impl.Booking_impl;
import com.dao.inf.booking_inf;
import com.dto.Booking;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ViewBookingsServlet")

public class ViewBookingsServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        booking_inf dao = new Booking_impl();

        List<Booking> bookings = dao.getAllBookings();

        request.setAttribute("bookings", bookings);

        request.getRequestDispatcher("ViewBookings.jsp")
               .forward(request, response);

    }
}
