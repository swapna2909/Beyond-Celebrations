package com.servlets;



import java.io.IOException;
import java.util.List;

import com.dao.impl.Venue_impl;
import com.dto.Venue;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewVenue")
public class ViewVenueServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Venue_impl dao = new Venue_impl();

        List<Venue> list = dao.findAll();

        request.setAttribute("list", list);

        RequestDispatcher rd =
                request.getRequestDispatcher("viewVenue.jsp");

        rd.forward(request, response);
    }

}