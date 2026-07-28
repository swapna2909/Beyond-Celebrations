package com.servlets;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import com.dao.impl.Booking_impl;
import com.dao.inf.booking_inf;
import com.dto.Booking;
import com.dto.Customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import com.dao.impl.Event_Category_impl;
import com.dao.inf.event_category_inf;
import com.dto.Event_Category;

@WebServlet("/customerdashboard")
public class CustomerDashboard extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
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

        booking_inf bookingDao = new Booking_impl();

        List<Booking> bookings =
                bookingDao.findByCustomerId(customer.getCustomer_id());

        int totalBookings = bookings.size();
        int pendingBookings = 0;
        int upcomingBookings = 0;

        LocalDate today = LocalDate.now();

        for (Booking b : bookings) {

            if ("Pending".equalsIgnoreCase(b.getStatus())) {
                pendingBookings++;
            }

            try {

                LocalDate eventDate = LocalDate.parse(b.getEvent_date());

                if (!eventDate.isBefore(today)) {
                    upcomingBookings++;
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

        }

        request.setAttribute("customer", customer);
        request.setAttribute("bookings", bookings);
        request.setAttribute("totalBookings", totalBookings);
        request.setAttribute("pendingBookings", pendingBookings);
        request.setAttribute("upcomingBookings", upcomingBookings);

        RequestDispatcher rd =
                request.getRequestDispatcher("customerdashboard.jsp");

        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);

    }

}