package com.servlets;

import java.io.IOException;
<<<<<<< HEAD
import java.util.List;

import com.dao.impl.Event_type_impl;
import com.dto.Event_type;

import jakarta.servlet.RequestDispatcher;
=======
import java.util.ArrayList;
import java.util.List;

>>>>>>> 001d877f7862c5adf5c8de88cc82d078f8ac029c
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

<<<<<<< HEAD
@WebServlet("/packages")
	public class Packages extends HttpServlet{

	    protected void doGet(HttpServletRequest request,
	                         HttpServletResponse response)
	            throws ServletException, IOException {

	        Event_type_impl dao = new Event_type_impl();

	        List<Event_type> packageList = dao.findAll();

	        request.setAttribute("packageList", packageList);

	        RequestDispatcher rd =
	                request.getRequestDispatcher("packages.jsp");

	        rd.forward(request, response);
	    
	}
}
=======

@WebServlet("/packages")
public class Packages extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {


        List<PackageData> packages = new ArrayList<>();


        packages.add(new PackageData(
                "Silver Package",
                "Birthday Decoration",
                "₹25,000"
        ));


        packages.add(new PackageData(
                "Gold Package",
                "Wedding Decoration + Catering",
                "₹75,000"
        ));


        packages.add(new PackageData(
                "Platinum Package",
                "Complete Event Management",
                "₹1,50,000"
        ));



        request.setAttribute("packages", packages);


        request.getRequestDispatcher("packages.jsp")
               .forward(request, response);

    }



    // Keep this inside servlet
    public static class PackageData {


        private String packageName;
        private String description;
        private String price;



        public PackageData(String packageName,
                           String description,
                           String price) {

            this.packageName = packageName;
            this.description = description;
            this.price = price;

        }



        public String getPackageName() {

            return packageName;

        }



        public String getDescription() {

            return description;

        }



        public String getPrice() {

            return price;

        }

    }

}
>>>>>>> 001d877f7862c5adf5c8de88cc82d078f8ac029c
