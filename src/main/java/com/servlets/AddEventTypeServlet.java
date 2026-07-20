package com.servlets;


import java.io.IOException;

import com.dao.impl.Event_type_impl;
import com.dto.Event_type;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddEventTypeServlet")
public class AddEventTypeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    Event_type_impl dao = new Event_type_impl();

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Event_type et = new Event_type();

        et.setCategory_id(
                Integer.parseInt(request.getParameter("category_id")));

        et.setEvent_name(request.getParameter("event_name"));

        et.setDescription(request.getParameter("description"));

        et.setMin_budget(
                Double.parseDouble(request.getParameter("min_budget")));

        et.setMax_budget(
                Double.parseDouble(request.getParameter("max_budget")));

        dao.addEventType(et);

        request.setAttribute("msg",
                "Event Type Added Successfully!");

        request.getRequestDispatcher("AddEventType.jsp")
               .forward(request, response);
    }
}