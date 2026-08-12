package com.servlets;

import java.io.IOException;

import com.dao.impl.Event_Category_impl;
import com.dao.inf.event_category_inf;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteEventCategoryServlet")
public class DeleteEventCategoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("categoryId");

        if (id == null || id.trim().isEmpty()) {

            response.sendRedirect(
                "ViewEventCategory.jsp?msg=Category ID is missing"
            );

            return;
        }

        try {

            Integer categoryId = Integer.parseInt(id);

            event_category_inf dao = new Event_Category_impl();

            dao.deleteEventCategoryById(categoryId);

            response.sendRedirect(
                "ViewEventCategory.jsp?msg=Event Category Deleted Successfully"
            );

        } catch (NumberFormatException e) {

            response.sendRedirect(
                "ViewEventCategory.jsp?msg=Invalid Category ID"
            );

        } catch (Exception e) {

            e.printStackTrace();

            response.sendRedirect(
                "ViewEventCategory.jsp?msg=Unable to Delete Event Category"
            );
        }
    }
}