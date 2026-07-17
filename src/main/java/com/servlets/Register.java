package com.servlets;
import java.io.IOException;

import com.dao.impl.Customer_impl;
import com.dao.inf.customer_inf;
import com.dto.Customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class Register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Customer c = new Customer();
        customer_inf customer=new Customer_impl();
        c.setFirst_name(req.getParameter("first_name"));
        c.setLast_name(req.getParameter("last_name"));
        c.setEmail(req.getParameter("email"));
        c.setPhone(Long.parseLong(req.getParameter("phone")));

        c.setPassword("1234");
        c.setAddress(req.getParameter("address"));
        customer.CustomerRegister(c);
        req.setAttribute("success","Customer Account Created");
        RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
        rd.forward(req, resp);




    }
}

