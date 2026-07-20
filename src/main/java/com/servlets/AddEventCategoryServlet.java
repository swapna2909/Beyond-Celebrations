package com.servlets;


import java.io.IOException;

import com.dao.impl.Event_Category_impl;
import com.dto.Event_Category;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddEventCategoryServlet")
public class AddEventCategoryServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    Event_Category_impl dao = new Event_Category_impl();

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // Read form data
        String categoryName = request.getParameter("category_name");
        String description = request.getParameter("description");

        // Create DTO object
        Event_Category ec = new Event_Category();
        ec.setCategory_name(categoryName);
        ec.setDescription(description);

        // Call DAO
        dao.addEventCategory(ec);

        // Success message
        request.setAttribute("msg", "Event Category Added Successfully!");

        // Redirect to same page
        request.getRequestDispatcher("AddEventCategory.jsp")
               .forward(request, response);
    }
}
