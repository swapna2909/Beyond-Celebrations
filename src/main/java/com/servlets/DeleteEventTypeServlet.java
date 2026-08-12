package com.servlets;

import java.io.IOException;

import com.dao.impl.Event_type_impl;
import com.dao.inf.event_type_inf;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteEventTypeServlet")
public class DeleteEventTypeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("eventTypeId");

        System.out.println("================================");
        System.out.println("Delete Event Type Servlet");
        System.out.println("Received ID = " + id);
        System.out.println("================================");

        if (id == null || id.trim().isEmpty()) {

            response.sendRedirect(
                "viewEventType.jsp?msg=Event Type ID Missing"
            );

            return;
        }

        try {

            int eventTypeId = Integer.parseInt(id);

            event_type_inf dao = new Event_type_impl();

            dao.deleteEventTypeById(eventTypeId);

            response.sendRedirect(
                "viewEventType.jsp?msg=Delete operation completed"
            );

        } catch (NumberFormatException e) {

            e.printStackTrace();

            response.sendRedirect(
                "viewEventType.jsp?msg=Invalid Event Type ID"
            );
        }
    }
}