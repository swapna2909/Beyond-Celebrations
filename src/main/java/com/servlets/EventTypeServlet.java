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


@WebServlet("/eventtypes")
public class EventTypeServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {


        int categoryId =
        Integer.parseInt(request.getParameter("categoryId"));



        Event_type_impl dao = new Event_type_impl();


        List<Event_type> eventList =
                dao.findByCategoryId(categoryId);



        request.setAttribute("eventList", eventList);



        RequestDispatcher rd =
                request.getRequestDispatcher("eventTypes.jsp");


        rd.forward(request, response);

    }


}