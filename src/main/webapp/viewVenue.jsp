<%@page import="java.util.List"%>
<%@page import="com.dao.impl.Venue_impl"%>
<%@page import="com.dto.Venue"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
Venue_impl dao = new Venue_impl();
List<Venue> list = dao.findAll();
%>


<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>View Venues - Beyond Celebrations</title>

<script src="https://cdn.tailwindcss.com"></script>

<link rel="preconnect"
href="https://fonts.googleapis.com">

<link rel="preconnect"
href="https://fonts.gstatic.com"
crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap"
rel="stylesheet">


<style>
 body{
    background-image:url('https://images.unsplash.com/photo-1511578314322-379afb476865?auto=format&fit=crop&w=1600&q=80');
    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;
    background-attachment:fixed;
    font-family:'Poppins',sans-serif;
}
    min-height: 100vh;
}

.venue-card {
    transition: all 0.3s ease;
}

.venue-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 20px 40px rgba(0,0,0,0.20);
}

</style>

</head>


<body class="p-8">


<!-- ================= SUCCESS MESSAGE ================= -->

<%
String msg = request.getParameter("msg");

if(msg != null){
%>

<div class="max-w-7xl mx-auto">

    <div class="bg-green-100
                border border-green-500
                text-green-700
                px-5 py-3
                rounded-xl
                mb-6
                text-center
                font-semibold">

        <%=msg%>

    </div>

</div>

<%
}
%>



<!-- ================= HEADING ================= -->

<div class="text-center mb-10">

    <h1 class="text-5xl font-bold text-white">

        Venues

    </h1>

    <p class="text-gray-200 mt-3 text-lg">

        Manage all event venues from one place

    </p>

</div>



<!-- ================= BUTTONS ================= -->

<div class="max-w-7xl mx-auto">

<div class="flex justify-between items-center mb-8">


    <a href="AdminDashboard.jsp"
       class="bg-gray-700
              hover:bg-gray-800
              text-white
              px-6 py-3
              rounded-xl
              shadow-lg">

        ← Back to Dashboard

    </a>


    <a href="addVenue.jsp"
       class="bg-gradient-to-r
              from-cyan-500
              to-blue-600
              text-white
              px-6 py-3
              rounded-xl
              shadow-lg
              hover:scale-105
              transition">

        + Add Venue

    </a>


</div>



<!-- ================= VENUE CARDS ================= -->

<div class="grid grid-cols-1
            md:grid-cols-2
            lg:grid-cols-3
            gap-8">


<%

if(list != null && !list.isEmpty()){

    for(Venue v : list){

%>


<!-- ================= VENUE CARD ================= -->

<div class="venue-card
            bg-white
            rounded-3xl
            shadow-xl
            overflow-hidden">


    <!-- HEADER -->

    <div class="bg-gradient-to-r
                from-purple-600
                to-indigo-600
                p-5">

        <h2 class="text-2xl
                   font-bold
                   text-white">

            <%=v.getVenue_name()%>

        </h2>

    </div>



    <!-- BODY -->

    <div class="p-6">


        <!-- VENUE ID -->

        <p class="mb-3">

            <b>Venue ID :</b>

            <%=v.getVenue_id()%>

        </p>



        <!-- LOCATION -->

        <p class="mb-3">

            <b>Location :</b>

            <%=v.getLocation()%>

        </p>



        <!-- CAPACITY -->

        <p class="mb-3">

            <b>Capacity :</b>

            <%=v.getCapacity()%> people

        </p>



        <!-- PRICE -->

        <p class="text-purple-700
                  font-semibold
                  text-lg
                  mb-3">

            Price :

            ₹ <%=v.getPrice()%>

        </p>



        <!-- AVAILABILITY -->

        <p class="mb-4">

            <b>Availability :</b>

            <%

            if(v.getAvailability() != null &&
               v.getAvailability()
                .equalsIgnoreCase("Available")){

            %>

                <span class="bg-green-100
                             text-green-700
                             px-3 py-1
                             rounded-full
                             text-sm
                             font-semibold">

                    Available

                </span>

            <%

            }else{

            %>

                <span class="bg-red-100
                             text-red-700
                             px-3 py-1
                             rounded-full
                             text-sm
                             font-semibold">

                    <%=v.getAvailability()%>

                </span>

            <%

            }

            %>

        </p>



        <!-- BUTTONS -->

        <div class="flex justify-end gap-3 mt-6">


           <a href="<%=request.getContextPath()%>/editVenue?id=<%=v.getVenue_id()%>"
   class="bg-yellow-500 hover:bg-yellow-600 text-white px-5 py-2 rounded-lg">

    Edit

</a>


          
        </div>


    </div>

</div>


<%

    }

}

else{

%>


<!-- ================= NO VENUES ================= -->

<div class="col-span-3">

    <div class="bg-white
                rounded-3xl
                shadow-xl
                p-10
                text-center">


        <h2 class="text-3xl
                   font-bold
                   text-red-600">

            No Venues Found

        </h2>


        <p class="mt-3
                  text-gray-600">

            Click "Add Venue" to create
            your first venue.

        </p>


    </div>

</div>


<%

}

%>


</div>

</div>


</body>

</html>