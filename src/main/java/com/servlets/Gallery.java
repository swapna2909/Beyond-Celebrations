package com.servlets;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/gallery")
public class Gallery extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {



        List<String> images = new ArrayList<>();


        images.add("images/wedding1.jpg");
        images.add("images/wedding2.jpg");
        images.add("images/birthday1.jpg");
        images.add("images/birthday2.jpg");
        images.add("images/event1.jpg");
        images.add("images/event2.jpg");



        request.setAttribute(
                "images",
                images
        );



        request.getRequestDispatcher(
                "gallery.jsp")
                .forward(request,response);


    }


}