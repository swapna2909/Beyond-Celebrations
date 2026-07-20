package com.servlets;

import java.io.IOException;

import com.dao.impl.Event_Category_impl;
import com.dao.inf.event_category_inf;
import com.dto.Event_Category;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/UpdateEventCategoryServlet")
public class UpdateServletCategory extends HttpServlet {
	  event_category_inf dao = new Event_Category_impl();
     @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	 Integer id = Integer.parseInt(req.getParameter("id"));

    	    Event_Category ec = dao.findById(id);

    	    req.setAttribute("category", ec);

    	    req.getRequestDispatcher("updateEventCategory.jsp").forward(req, resp);
    }
     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	 Event_Category ec = new Event_Category();

    	    ec.setCategory_id(Integer.parseInt(req.getParameter("category_id")));
    	    ec.setCategory_name(req.getParameter("category_name"));
    	    ec.setDescription(req.getParameter("description"));

    	    dao.updateEventCategory(ec);

    	    resp.sendRedirect("viewEventCategory.jsp");
    }
}
