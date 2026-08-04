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

@WebServlet("/UpdateEventCategoryServlet")
public class UpdateEventCategoryServlet extends HttpServlet {

    Event_Category_impl dao = new Event_Category_impl();

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // Load all categories
        request.setAttribute("categoryList", dao.findAll());

        // Get selected category
        int id = Integer.parseInt(request.getParameter("categoryId"));

        Event_Category ec = dao.findById(id);

        request.setAttribute("category", ec);

        RequestDispatcher rd =
                request.getRequestDispatcher("updateEventCategory.jsp");

        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Event_Category ec = new Event_Category();

        ec.setCategory_id(
                Integer.parseInt(request.getParameter("categoryId")));

        ec.setCategory_name(
                request.getParameter("categoryName"));

        ec.setDescription(
                request.getParameter("description"));

        dao.updateEventCategory(ec);
        response.sendRedirect("viewEventCategory.jsp?msg=Category Updated Successfully");

        
    }
}