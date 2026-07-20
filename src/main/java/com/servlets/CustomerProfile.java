package com.servlets;

import java.io.IOException;

import com.dto.Customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/customerprofile")
public class CustomerProfile extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        Customer customer =
                (Customer) session.getAttribute("Customer");

        if (customer == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        request.setAttribute("customer", customer);

        RequestDispatcher rd =
                request.getRequestDispatcher("customerprofile.jsp");

        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }
}