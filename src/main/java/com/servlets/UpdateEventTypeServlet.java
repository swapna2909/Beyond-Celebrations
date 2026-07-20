package com.servlets;


import java.io.IOException;

import com.dao.impl.Event_type_impl;
import com.dto.Event_type;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateEventTypeServlet")
public class UpdateEventTypeServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        Event_type et = new Event_type();

        et.setEvent_type_id(
                Integer.parseInt(
                request.getParameter("eventTypeId")));

        et.setCategory_id(
                Integer.parseInt(
                request.getParameter("categoryId")));

        et.setEvent_name(
                request.getParameter("eventName"));

        et.setDescription(
                request.getParameter("description"));

        et.setMin_budget(
                Double.parseDouble(
                request.getParameter("minBudget")));

        et.setMax_budget(
                Double.parseDouble(
                request.getParameter("maxBudget")));

        Event_type_impl dao = new Event_type_impl();

        dao.updateEventType(et);

        response.sendRedirect("viewEventType");
    }
}
