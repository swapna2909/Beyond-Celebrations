package com.servlets;


import java.io.IOException;
import java.util.List;

import com.dao.impl.Booking_impl;
import com.dto.Booking;
import com.dto.Customer;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;



@WebServlet("/myBookings")
public class MyBookings extends HttpServlet {



@Override
protected void doGet(HttpServletRequest request,
HttpServletResponse response)
throws ServletException, IOException {



HttpSession session=request.getSession(false);



Customer customer =
(Customer)session.getAttribute("Customer");



Booking_impl dao = new Booking_impl();


List<Booking> list =
dao.findByCustomerId(
        customer.getCustomer_id()
);
request.setAttribute(
"bookings",
list);



request.getRequestDispatcher(
"myBookings.jsp")
.forward(request,response);



}

}