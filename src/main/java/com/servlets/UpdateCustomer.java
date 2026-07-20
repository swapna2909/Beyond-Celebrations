package com.servlets;

import java.io.IOException;

import com.dao.impl.Customer_impl;
import com.dao.inf.customer_inf;
import com.dto.Customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/updatecustomer")
public class UpdateCustomer extends HttpServlet {

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

        customer.setFirst_name(request.getParameter("first_name"));
        customer.setLast_name(request.getParameter("last_name"));
        customer.setPhone(Long.parseLong(request.getParameter("phone")));
        customer.setAddress(request.getParameter("address"));

        customer_inf dao = new Customer_impl();

        dao.UpdateProfile(customer);

        // Update session object
        session.setAttribute("Customer", customer);

        // Redirect back to profile page
        response.sendRedirect("customerprofile");
    }
}