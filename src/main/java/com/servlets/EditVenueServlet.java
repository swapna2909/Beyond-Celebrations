package com.servlets;

import java.io.IOException;

import com.dao.impl.Venue_impl;
import com.dto.Venue;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/editVenue")
public class EditVenueServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");

        System.out.println("Edit Venue ID = " + id);

        if (id == null || id.trim().isEmpty()) {

            response.sendRedirect("viewVenue?msg=Invalid Venue ID");
            return;
        }

        try {

            int venueId = Integer.parseInt(id);

            Venue_impl dao = new Venue_impl();

            Venue venue = dao.findById(venueId);

            if (venue == null) {

                response.sendRedirect("viewVenue?msg=Venue not found");
                return;
            }

            request.setAttribute("venue", venue);

            request.getRequestDispatcher("editVenue.jsp")
                   .forward(request, response);

        } catch (NumberFormatException e) {

            e.printStackTrace();

            response.sendRedirect("viewVenue?msg=Invalid Venue ID");

        } catch (Exception e) {

            e.printStackTrace();

            response.sendRedirect("viewVenue?msg=Unable to edit venue");
        }
    }
}