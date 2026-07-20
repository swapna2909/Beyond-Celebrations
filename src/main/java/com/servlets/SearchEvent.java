package com.servlets;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bookevents")
public class SearchEvent extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String category = request.getParameter("category");

        List<String> eventTypes = new ArrayList<>();

        if ("Wedding".equals(category)) {

            eventTypes.add("Traditional Wedding");
            eventTypes.add("Reception");
            eventTypes.add("Engagement");
            eventTypes.add("Haldi");
            eventTypes.add("Mehendi");
            eventTypes.add("Sangeet");

        } else if ("Birthday".equals(category)) {

            eventTypes.add("1st Birthday");
            eventTypes.add("Kids Birthday");
            eventTypes.add("18th Birthday");
            eventTypes.add("25th Birthday");
            eventTypes.add("50th Birthday");

        } else if ("Anniversary".equals(category)) {

            eventTypes.add("1st Anniversary");
            eventTypes.add("10th Anniversary");
            eventTypes.add("25th Anniversary");
            eventTypes.add("50th Anniversary");

        } else if ("Baby Shower".equals(category)) {

            eventTypes.add("Baby Shower");
            eventTypes.add("Naming Ceremony");
            eventTypes.add("Cradle Ceremony");

        }

        request.setAttribute("category", category);
        request.setAttribute("eventTypes", eventTypes);

        RequestDispatcher rd = request.getRequestDispatcher("bookevents.jsp");
        rd.forward(request, response);
    }
}