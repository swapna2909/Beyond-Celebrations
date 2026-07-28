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
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        customer_inf customerDao = new Customer_impl();

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        Customer c = customerDao.findByMailPassword(email, password);

        if (c != null) {

            // Create Session
            HttpSession session = req.getSession();
            session.setAttribute("Customer", c);

            // Admin Login
            if (email.equalsIgnoreCase("admin@gmail.com")
                    && password.equals("admin@123")) {

                resp.sendRedirect("AdminDashboard.jsp");

            } else {

                // Customer Login
                resp.sendRedirect("customerdashboard");

            }

        } else {

            req.setAttribute("error", "Invalid Email or Password");

            RequestDispatcher rd =
                    req.getRequestDispatcher("login.jsp");

            rd.forward(req, resp);
        }

    }

    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        doPost(req, resp);

    }

}
