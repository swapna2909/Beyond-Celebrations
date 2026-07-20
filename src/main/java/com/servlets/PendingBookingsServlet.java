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

	@WebServlet("/PendingBookingsServlet")
	public class PendingBookingsServlet extends HttpServlet {

	    @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

	    	 booking_inf dao = new Booking_impl();

	        List<Booking> bookings = dao.findPendingBookings();

	        request.setAttribute("bookings", bookings);

	        request.getRequestDispatcher("PendingBookings.jsp").forward(request, response);
	    }
	}
