package com.servlets;

import java.io.IOException;
	import jakarta.servlet.ServletException;
	import jakarta.servlet.annotation.WebServlet;
	import jakarta.servlet.http.HttpServlet;
	import jakarta.servlet.http.HttpServletRequest;
	import jakarta.servlet.http.HttpServletResponse;
	import jakarta.servlet.http.HttpSession;

	@WebServlet("/logout")
	public class Logout extends HttpServlet {

	 
	    @Override
	    protected void doGet(HttpServletRequest request,
	                         HttpServletResponse response)
	            throws ServletException, IOException {

	        // Get existing session
	        HttpSession session = request.getSession(false);

	        // Invalidate session if it exists
	        if (session != null) {
	            session.invalidate();
	            
	        }

	        // Prevent browser caching
	        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	        response.setHeader("Pragma", "no-cache");
	        response.setDateHeader("Expires", 0);

	        // Redirect to login page
	        response.sendRedirect("login.jsp");
	    }

	    @Override
	    protected void doPost(HttpServletRequest request,
	                          HttpServletResponse response)
	            throws ServletException, IOException {

	        doGet(request, response);
	    }
	}


