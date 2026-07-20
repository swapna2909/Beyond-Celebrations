package com.servlets;


import java.io.IOException;

import com.dao.impl.Venue_impl;
import com.dto.Venue;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddVenueServlet")
public class AddVenueServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String venueName = request.getParameter("venueName");
        String location = request.getParameter("location");
        Integer capacity = Integer.parseInt(request.getParameter("capacity"));
        Double price = Double.parseDouble(request.getParameter("price"));
        String availability = request.getParameter("availability");

        Venue v = new Venue();

        v.setVenue_name(venueName);
        v.setLocation(location);
        v.setCapacity(capacity);
        v.setPrice(price);
        v.setAvailability(availability);

        Venue_impl dao = new Venue_impl();

        dao.AddVenue(v);

        response.sendRedirect("viewVenue");
    }
}