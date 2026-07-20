package com.servlets;

import java.io.IOException;
import java.time.LocalDate;

import com.dao.impl.Booking_impl;
import com.dao.inf.booking_inf;
import com.dto.Booking;
import com.dto.Customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/bookevents")
public class BookEvents extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if(session==null){
            response.sendRedirect("login.jsp");
            return;
        }

        Customer customer=(Customer)session.getAttribute("Customer");

        if(customer==null){
            response.sendRedirect("login.jsp");
            return;
        }

        Booking booking=new Booking();

        booking.setCustomer_id(customer.getCustomer_id());

        booking.setOrganizer_id(
                Integer.parseInt(request.getParameter("organizer_id")));

        booking.setEvent_type_id(
                Integer.parseInt(request.getParameter("event_type_id")));

        booking.setVenue_id(
                Integer.parseInt(request.getParameter("venue_id")));

        booking.setBooking_date(LocalDate.now().toString());

        booking.setEvent_date(
                request.getParameter("event_date"));

        booking.setGuest_count(
                Integer.parseInt(request.getParameter("guest_count")));

        booking.setBudget(
                Double.parseDouble(request.getParameter("budget")));

        booking.setSpecial_request(
                request.getParameter("special_request"));

        booking.setStatus("Pending");

        booking_inf dao=new Booking_impl();

        dao.addBooking(booking);

        response.sendRedirect("myBookings.jsp");
    }
}