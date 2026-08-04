package com.servlets;

import java.io.IOException;

import com.dao.impl.Event_type_impl;
import com.dto.Event_type;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateEventTypeServlet")
public class UpdateEventTypeServlet extends HttpServlet {

    Event_type_impl dao = new Event_type_impl();

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("eventTypeId"));

        Event_type et = dao.findById(id);

        request.setAttribute("eventType", et);

        RequestDispatcher rd =
                request.getRequestDispatcher("updateEventType.jsp");

        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {

            Event_type et = new Event_type();

            et.setEvent_type_id(
                    Integer.parseInt(request.getParameter("eventTypeId")));

            et.setCategory_id(
                    Integer.parseInt(request.getParameter("categoryId")));

            et.setEvent_name(
                    request.getParameter("eventName"));

            et.setDescription(
                    request.getParameter("description"));

            et.setMin_budget(
                    Double.parseDouble(request.getParameter("minBudget")));

            et.setMax_budget(
                    Double.parseDouble(request.getParameter("maxBudget")));

            dao.updateEventType(et);

            response.sendRedirect(
                    "viewEventType.jsp?msg=Event+Type+Updated+Successfully");

        }
        catch (Exception e) {

            e.printStackTrace();

            response.sendRedirect(
                    "viewEventType.jsp?msg=Failed+to+Update+Event+Type");
        }
    }
}