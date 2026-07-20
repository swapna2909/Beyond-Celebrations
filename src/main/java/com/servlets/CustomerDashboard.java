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

@WebServlet("/customerdashboard")

public class CustomerDashboard extends HttpServlet {

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

        RequestDispatcher rd =
                request.getRequestDispatcher("customerdashboard.jsp");

        rd.forward(request, response);
    }
}