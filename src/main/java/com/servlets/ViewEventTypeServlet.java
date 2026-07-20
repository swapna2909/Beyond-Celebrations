package com.servlets;


import java.io.IOException;
import java.util.List;

import com.dao.impl.Event_type_impl;
import com.dto.Event_type;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ViewEventTypeServlet")
public class ViewEventTypeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Event_type_impl dao = new Event_type_impl();

        List<Event_type> list = dao.findAll();

        request.setAttribute("eventTypeList", list);

        RequestDispatcher rd =
                request.getRequestDispatcher("viewEventType.jsp");

        rd.forward(request, response);
    }

}
