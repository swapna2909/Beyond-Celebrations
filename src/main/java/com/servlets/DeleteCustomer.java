package com.servlets;

import java.io.IOException;

import com.dao.impl.Customer_impl;
import com.dao.inf.customer_inf;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deletecustomer")
public class DeleteCustomer extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Integer id = Integer.parseInt(request.getParameter("customerId"));

        customer_inf dao = new Customer_impl();

        dao.DeleteCustomer(id);

        response.sendRedirect("ViewCustomer.jsp");
    }
}