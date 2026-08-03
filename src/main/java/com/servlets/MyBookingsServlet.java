package com.servlets;

import java.io.IOException;
import java.util.List;

import com.dao.impl.Booking_impl;
import com.dto.Booking;
import com.dto.Customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/mybookings")
public class MyBookingsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if(session==null){

            response.sendRedirect("login.jsp");
            return;

        }

        Customer customer =
                (Customer)session.getAttribute("Customer");

        if(customer==null){

            response.sendRedirect("login.jsp");
            return;

        }

        Booking_impl dao=new Booking_impl();

        List<Booking> bookings=
                dao.findByCustomerId(customer.getCustomer_id());

        request.setAttribute("bookings", bookings);

        request.getRequestDispatcher("myBookings.jsp")
        .forward(request,response);

    }

}