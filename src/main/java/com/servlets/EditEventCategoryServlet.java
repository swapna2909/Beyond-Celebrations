package com.servlets;

import java.io.IOException;

import com.dao.impl.Event_Category_impl;
import com.dto.Event_Category;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/EditEventCategoryServlet")
public class EditEventCategoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        Event_Category_impl dao = new Event_Category_impl();

        Event_Category ec = dao.findById(id);

        request.setAttribute("category", ec);

        RequestDispatcher rd =
                request.getRequestDispatcher("updateEventCategory.jsp");

        rd.forward(request, response);
    }
}