package com.servlets;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import com.dao.impl.Booking_impl;
import com.dao.impl.Event_type_impl;
import com.dao.impl.Organizer_impl;
import com.dao.impl.Venue_impl;
import com.dto.Booking;
import com.dto.Customer;
import com.dto.Event_type;
import com.dto.Organizer;
import com.dto.Venue;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/bookevents")
public class BookEvent extends HttpServlet {

    Event_type_impl eventDao = new Event_type_impl();
    Organizer_impl organizerDao = new Organizer_impl();
    Venue_impl venueDao = new Venue_impl();
    Booking_impl bookingDao = new Booking_impl();

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String category = request.getParameter("category");

        List<Event_type> eventList = null;

        if (category != null && !category.equals("")) {

            int categoryId = 0;

            if (category.equals("Wedding"))
                categoryId = 1;
            else if (category.equals("Birthday"))
                categoryId = 7;
            else if (category.equals("Anniversary"))
                categoryId = 8;
            else if (category.equals("Baby Shower"))
                categoryId = 9;

            if (categoryId != 0) {
                eventList = eventDao.findByCategoryId(categoryId);
            }
        }

        List<Organizer> organizerList = organizerDao.findAll();
        List<Venue> venueList = venueDao.findAll();

        request.setAttribute("eventList", eventList);
        request.setAttribute("organizerList", organizerList);
        request.setAttribute("venueList", venueList);
        request.setAttribute("category", category);

        RequestDispatcher rd = request.getRequestDispatcher("bookevents.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        Customer customer = (Customer) session.getAttribute("Customer");

        if (customer == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        Booking booking = new Booking();

        booking.setCustomer_id(customer.getCustomer_id());

        booking.setOrganizer_id(
                Integer.parseInt(request.getParameter("organizer_id")));

        booking.setEvent_type_id(
                Integer.parseInt(request.getParameter("event_type_id")));

        booking.setVenue_id(
                Integer.parseInt(request.getParameter("venue_id")));

        booking.setBooking_date(LocalDate.now().toString());

        booking.setEvent_date(request.getParameter("event_date"));

        booking.setGuest_count(
                Integer.parseInt(request.getParameter("guest_count")));

        booking.setBudget(
                Double.parseDouble(request.getParameter("budget")));

        booking.setSpecial_request(
                request.getParameter("special_request"));

        booking.setStatus("Pending");

        bookingDao.addBooking(booking);

        response.sendRedirect("bookevents?success=1");
    }
}