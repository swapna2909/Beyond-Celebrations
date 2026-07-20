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

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        customer_inf customer = new Customer_impl();

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        Customer c = customer.findByMailPassword(email, password);

        if (c != null) {

            HttpSession session = req.getSession();
            session.setAttribute("Customer", c);

            if (email.equals("admin@gmail.com") &&
                password.equals("admin@123")) {

                resp.sendRedirect("admindashboard.jsp");

            } else {

                resp.sendRedirect("customerdashboard.jsp");
            }

        } else {

            req.setAttribute("error", "Invalid Email or Password");
            RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
            rd.forward(req, resp);
        }
}
}


