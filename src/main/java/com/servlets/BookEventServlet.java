package com.servlets;

import java.io.IOException;
import java.util.List;

import com.dao.impl.Event_type_impl;
import com.dao.impl.Organizer_impl;
import com.dao.impl.Venue_impl;
import com.dto.Event_type;
import com.dto.Organizer;
import com.dto.Venue;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/bookevent")
public class BookEventServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int eventTypeId =
                Integer.parseInt(request.getParameter("eventTypeId"));

        Event_type_impl eventDao = new Event_type_impl();
        Organizer_impl organizerDao = new Organizer_impl();
        Venue_impl venueDao = new Venue_impl();

        Event_type event =
                eventDao.findById(eventTypeId);

        List<Organizer> organizers =
                organizerDao.findAll();

        List<Venue> venues = venueDao.AvailableVenues();

        request.setAttribute("event", event);
        request.setAttribute("organizers", organizers);
        request.setAttribute("venues", venues);

        RequestDispatcher rd =
                request.getRequestDispatcher("bookevents.jsp");

        rd.forward(request, response);
    }
}