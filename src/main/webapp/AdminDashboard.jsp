<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@page import="com.dao.impl.Customer_impl"%>
<%@page import="com.dao.inf.customer_inf"%>
<%@page import="com.dao.impl.Event_Category_impl"%>
<%@page import="com.dao.inf.event_category_inf"%>
<%@page import="com.dao.impl.Event_type_impl"%>
<%@page import="com.dao.inf.event_type_inf"%>
<%@page import="com.dao.impl.Booking_impl"%>
<%@page import="com.dao.inf.booking_inf"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Beyond Celebrations | Admin Dashboard</title>

<script src="https://cdn.tailwindcss.com"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&family=Great+Vibes&display=swap"
rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:#f8fafc;
}

html{
scroll-behavior:smooth;
}

.nav-link{
position:relative;
transition:.3s;
}

.nav-link:hover{
color:#7c3aed;
}

.nav-link::after{
content:"";
position:absolute;
left:0;
bottom:-6px;
height:3px;
width:0%;
background:#7c3aed;
transition:.3s;
border-radius:10px;
}

.nav-link:hover::after{
width:100%;
}

.hero{
background:linear-gradient(90deg,#6d28d9,#db2777,#f97316);
}

.card{
transition:.35s;
cursor:pointer;
}

.card:hover{

transform:translateY(-10px);
box-shadow:0 20px 35px rgba(0,0,0,.15);

}

.module-card{

transition:.35s;
border-radius:25px;

}

.module-card:hover{

transform:translateY(-8px) scale(1.02);

}

.glass{

background:rgba(255,255,255,.18);

backdrop-filter:blur(15px);

border:1px solid rgba(255,255,255,.25);

}

.section-title{

font-size:34px;
font-weight:700;
color:#1e293b;

}

.dashboard-card{

background:white;
border-radius:25px;
padding:28px;
box-shadow:0 10px 25px rgba(0,0,0,.08);
transition:.3s;

}

.dashboard-card:hover{

transform:translateY(-8px);

}

.icon-circle{

width:80px;
height:80px;
border-radius:50%;
display:flex;
align-items:center;
justify-content:center;
font-size:32px;

}

#customers,
#categories,
#events,
#venues,
#bookings{

scroll-margin-top:100px;

}

</style>
</head>

<body>

<!-- ================= NAVBAR ================= -->

<nav class="bg-white shadow-lg sticky top-0 z-50">

<div class="max-w-7xl mx-auto px-8">

<div class="flex justify-between items-center h-20">

<div class="flex items-center gap-2">

<div class="w-14 h-14 rounded-full bg-purple-700 text-white flex items-center justify-center text-2xl font-bold">
BC
</div>

<div>
<h1 class="text-2xl text-purple-700" style="font-family: Cinzel;"> Beyond Celebrations </h1>
<p class="text-yellow-500" style="font-family: 'Great Vibes';">More than events, we create experiences</p>
</div>

</div>

<ul class="hidden lg:flex gap-8 font-medium">

<li><a href="AdminDashboard.jsp" class="nav-link">Dashboard</a></li>
<li><a href="#customers" class="nav-link">Customers</a></li>
<li><a href="#categories" class="nav-link">Categories</a></li>
<li><a href="#events"class="nav-link">Events</a></li>
<li><a href="#venues"class="nav-link">Venues</a></li>
<li><a href="#bookings"class="nav-link">Bookings</a></li>

</ul>

<div class="flex items-center gap-4 ">
<div class="text-right"></div>

<div
class="w-12 h-12 rounded-full bg-gradient-to-r from-purple-700 to-pink-500 text-white flex items-center justify-center text-3xl font-bold">
A
</div>

<a href="logout"
class="bg-red-600 hover:bg-red-700 text-white px-7 py-3 rounded-xl text-lg font-semibold">
Logout
</a>

</div>

</div>

</div>

</nav>
<!-- ================= HERO ================= -->

<section class="hero">

<div class="max-w-7xl mx-auto px-10 py-20">

<div class="grid lg:grid-cols-2 gap-16 items-center">

<div>

<h1 class="text-4xl font-extrabold text-white">

Welcome Administrator 👑

</h1>

<p
class="text-3xl mt-3 text-white"
style="font-family:'Great Vibes',cursive;">

Manage every celebration with elegance.

</p>

<p class="text-white text-1xl mt-10 leading-10">

Control customers, event categories, event types,
venues and bookings from one beautiful dashboard.

</p>

<div class="mt-12 flex gap-6">

<a href="ViewCustomer.jsp"
class="bg-white text-purple-700 px-8 py-4 rounded-xl text-xl font-bold hover:scale-105 transition">

Manage Customers

</a>

<a href="ViewBookings.jsp"
class="glass text-white px-8 py-4 rounded-xl text-xl hover:scale-105 transition">

View Bookings

</a>

</div>

</div>

<div>

<div class="grid grid-cols-2 gap-8">

<div class="dashboard-card">

<div class="flex justify-between items-center">

<div>

<p class="text-gray-500">

Customers

</p>

<h2 class="text-3xl font-bold text-purple-700 mt-3">

<%customer_inf cus=new Customer_impl();
Long l=cus.CountOfCustomers();
%>
<%= l %>


</h2>

</div>

<div class="icon-circle bg-purple-100">

<i class="fa-solid fa-users text-purple-700"></i>

</div>

</div>

</div>

<div class="dashboard-card">

<div class="flex justify-between items-center">

<div>

<p class="text-gray-500">

Categories

</p>

<h2 class="text-3xl font-bold text-pink-600 mt-3">

<%event_category_inf event=new Event_Category_impl();
Long lo=event.countOfCategory();
%>
<%= lo %>

</h2>

</div>

<div class="icon-circle bg-pink-100">

<i class="fa-solid fa-layer-group text-pink-600"></i>

</div>

</div>

</div>

<div class="dashboard-card">

<div class="flex justify-between items-center">

<div>

<p class="text-gray-500">

Event Types

</p>

<h2 class="text-3xl font-bold text-green-600 mt-3">

<%event_type_inf e=new Event_type_impl();
Long lon=e.countOfEvent(); 
%>
<%= lon %>
</h2>

</div>

<div class="icon-circle bg-green-100">

<i class="fa-solid fa-calendar-days text-green-600"></i>

</div>

</div>

</div>

<div class="dashboard-card">

<div class="flex justify-between items-center">

<div>

<p class="text-gray-500">

Bookings

</p>

<h2 class="text-3xl font-bold text-orange-500 mt-3">


<%booking_inf b=new Booking_impl();
Long lonn=b.countOfBooking(); 
%>
<%= lonn %>

</h2>

</div>

<div class="icon-circle bg-orange-100">

<i class="fa-solid fa-book text-orange-500"></i>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</section>





<!-- ================= EVENT CATEGORY MANAGEMENT ================= -->

<section id="categories" class="max-w-7xl mx-auto px-8 py-16">

    <div class="flex items-center justify-between mb-8">

        <div>

            <h2 class="text-4xl font-bold text-slate-800">
                Event Category Management
            </h2>

            <p class="text-gray-500 mt-2">
                Create and manage categories for every celebration.
            </p>

        </div>

        <i class="fa-solid fa-layer-group text-5xl text-indigo-600"></i>

    </div>

    <div class="grid md:grid-cols-3 gap-8">

        <!-- Add Category -->

        <a href="AddEventCategory.jsp">

            <div class="module-card bg-gradient-to-r from-purple-600 to-indigo-700 text-white rounded-3xl p-8 shadow-xl h-72 flex flex-col justify-between">

                <div class="flex justify-between items-center">

                    <div>

                        <p class="text-purple-100">
                            New Category
                        </p>

                        <h3 class="text-3xl font-bold mt-2">
                            Add Category
                        </h3>

                    </div>

                    <div class="w-16 h-16 rounded-full bg-white/20 flex items-center justify-center">

                        <i class="fa-solid fa-plus text-3xl"></i>

                    </div>

                </div>

                <p class="text-purple-100 mt-5">
                    Create a new event category for your services.
                </p>

            </div>

        </a>



        <!-- View Categories -->

        <a href="viewEventCategory.jsp">

            <div class="module-card bg-gradient-to-r from-slate-700 to-slate-900 text-white rounded-3xl p-8 shadow-xl h-72 flex flex-col justify-between">

                <div class="flex justify-between items-center">

                    <div>

                        <p class="text-gray-300">
                            Available Categories
                        </p>

                        <h3 class="text-3xl font-bold mt-2">
                            View Categories
                        </h3>

                    </div>

                    <div class="w-16 h-16 rounded-full bg-white/20 flex items-center justify-center">

                        <i class="fa-solid fa-eye text-3xl"></i>

                    </div>

                </div>

                <p class="text-gray-300 mt-5">
                    Browse all existing event categories.
                </p>

            </div>

        </a>



        <!-- Update Category -->

        <a href="updateEventCategory.jsp">

            <div class="module-card bg-gradient-to-r from-orange-400 to-amber-600 text-white rounded-3xl p-8 shadow-xl h-72 flex flex-col justify-between">

                <div class="flex justify-between items-center">

                    <div>

                        <p class="text-yellow-100">
                            Edit Categories
                        </p>

                        <h3 class="text-3xl font-bold mt-2">
                            Update Category
                        </h3>

                    </div>

                    <div class="w-16 h-16 rounded-full bg-white/20 flex items-center justify-center">

                        <i class="fa-solid fa-pen-to-square text-3xl"></i>

                    </div>

                </div>

                <p class="text-yellow-100 mt-5">
                    Modify category names and descriptions anytime.
                </p>

            </div>

        </a>

    </div>

</section>

<!-- ================= EVENT TYPE MANAGEMENT ================= -->

<section id="events" class="max-w-7xl mx-auto px-8 py-16">

    <div class="flex items-center justify-between mb-8">

        <div>

            <h2 class="text-4xl font-bold text-slate-800">
                Event Type Management
            </h2>

            <p class="text-gray-500 mt-2">
                Manage event types under every category.
            </p>

        </div>

        <i class="fa-solid fa-calendar-days text-5xl text-emerald-600"></i>

    </div>

    <div class="grid md:grid-cols-3 gap-8">

        <!-- Add Event Type -->

        <a href="AddEventType.jsp">

            <div class="module-card bg-gradient-to-r from-green-500 to-emerald-700 text-white rounded-3xl p-8 shadow-xl h-72 flex flex-col justify-between">

                <div class="flex justify-between items-center">

                    <div>

                        <p class="text-green-100">
                            New Event
                        </p>

                        <h3 class="text-3xl font-bold mt-2">
                            Add Event Type
                        </h3>

                    </div>

                    <div class="w-16 h-16 rounded-full bg-white/20 flex items-center justify-center">

                        <i class="fa-solid fa-calendar-plus text-3xl"></i>

                    </div>

                </div>

                <p class="text-green-100 mt-5">
                    Add a new event type with budget and description.
                </p>

            </div>

        </a>

        <!-- View Event Types -->

        <a href="viewEventType">

            <div class="module-card bg-gradient-to-r from-slate-700 to-slate-900 text-white rounded-3xl p-8 shadow-xl h-72 flex flex-col justify-between">

                <div class="flex justify-between items-center">

                    <div>

                        <p class="text-gray-300">
                            Existing Events
                        </p>

                        <h3 class="text-3xl font-bold mt-2">
                            View Event Types
                        </h3>

                    </div>

                    <div class="w-16 h-16 rounded-full bg-white/20 flex items-center justify-center">

                        <i class="fa-solid fa-list text-3xl"></i>

                    </div>

                </div>

                <p class="text-gray-300 mt-5">
                    View all available event types.
                </p>

            </div>

        </a>

        <!-- Update Event Type -->

        <a href="updateEventType.jsp">

            <div class="module-card bg-gradient-to-r from-orange-500 to-red-500 text-white rounded-3xl p-8 shadow-xl h-72 flex flex-col justify-between">

                <div class="flex justify-between items-center">

                    <div>

                        <p class="text-orange-100">
                            Modify Events
                        </p>

                        <h3 class="text-3xl font-bold mt-2">
                            Update Event Type
                        </h3>

                    </div>

                    <div class="w-16 h-16 rounded-full bg-white/20 flex items-center justify-center">

                        <i class="fa-solid fa-file-pen text-3xl"></i>

                    </div>

                </div>

                <p class="text-orange-100 mt-5">
                    Update event details whenever required.
                </p>

            </div>

        </a>

    </div>

</section>



<!-- ================= VENUE MANAGEMENT ================= -->

<section id="venues" class="max-w-7xl mx-auto px-8 py-16">

    <div class="flex items-center justify-between mb-8">

        <div>

            <h2 class="text-4xl font-bold text-slate-800">
                Venue Management
            </h2>

            <p class="text-gray-500 mt-2">
                Manage all venue information.
            </p>

        </div>

        <i class="fa-solid fa-building text-5xl text-cyan-600"></i>

    </div>

    <div class="grid md:grid-cols-3 gap-8">

        <!-- Add Venue -->

        <a href="addVenue.jsp">

            <div class="module-card bg-gradient-to-r from-cyan-500 to-blue-700 text-white rounded-3xl p-8 shadow-xl h-72 flex flex-col justify-between">

                <div class="flex justify-between">

                    <div>

                        <p class="text-cyan-100">
                            New Venue
                        </p>

                        <h3 class="text-3xl font-bold mt-2">
                            Add Venue
                        </h3>

                    </div>

                    <div class="w-16 h-16 rounded-full bg-white/20 flex items-center justify-center">

                        <i class="fa-solid fa-building-circle-check text-3xl"></i>

                    </div>

                </div>

                <p class="text-cyan-100">
                    Add beautiful venues for celebrations.
                </p>

            </div>

        </a>

        <!-- View Venue -->

        <a href="viewVenue.jsp">

            <div class="module-card bg-gradient-to-r from-slate-700 to-slate-900 text-white rounded-3xl p-8 shadow-xl h-72 flex flex-col justify-between">

                <div class="flex justify-between">

                    <div>

                        <p class="text-gray-300">
                            Venue List
                        </p>

                        <h3 class="text-3xl font-bold mt-2">
                            View Venues
                        </h3>

                    </div>

                    <div class="w-16 h-16 rounded-full bg-white/20 flex items-center justify-center">

                        <i class="fa-solid fa-hotel text-3xl"></i>

                    </div>

                </div>

                <p class="text-gray-300">
                    Browse all registered venues.
                </p>

            </div>

        </a>

        <!-- Update Venue -->

        <a href="updateVenue.jsp">

            <div class="module-card bg-gradient-to-r from-pink-500 to-rose-600 text-white rounded-3xl p-8 shadow-xl h-72 flex flex-col justify-between">

                <div class="flex justify-between">

                    <div>

                        <p class="text-pink-100">
                            Edit Venue
                        </p>

                        <h3 class="text-3xl font-bold mt-2">
                            Update Venue
                        </h3>

                    </div>

                    <div class="w-16 h-16 rounded-full bg-white/20 flex items-center justify-center">

                        <i class="fa-solid fa-pen text-3xl"></i>

                    </div>

                </div>

                <p class="text-pink-100">
                    Update venue information quickly.
                </p>

            </div>

        </a>

    </div>

</section>



<!-- ================= BOOKING MANAGEMENT ================= -->

<section id="bookings" class="max-w-7xl mx-auto px-8 py-16">

    <div class="flex items-center justify-between mb-8">

        <div>

            <h2 class="text-4xl font-bold text-slate-800">
                Booking Management
            </h2>

            <p class="text-gray-500 mt-2">
                Track every customer booking efficiently.
            </p>

        </div>

        <i class="fa-solid fa-book text-5xl text-purple-600"></i>

    </div>

    <div class="grid md:grid-cols-4 gap-8">

        <!-- View Bookings -->

        <a href="ViewBookings.jsp">

            <div class="module-card bg-gradient-to-r from-blue-500 to-indigo-600 text-white rounded-3xl p-8 shadow-xl h-72 flex flex-col justify-between">

                <i class="fa-solid fa-book-open text-5xl"></i>

                <h3 class="text-3xl font-bold">
                    View Bookings
                </h3>

                <p>
                    View every customer booking.
                </p>

            </div>

        </a>

        <!-- Pending -->

        <a href="PendingBookings.jsp">

            <div class="module-card bg-gradient-to-r from-yellow-400 to-orange-500 text-white rounded-3xl p-8 shadow-xl h-72 flex flex-col justify-between">

                <i class="fa-solid fa-clock text-5xl"></i>

                <h3 class="text-3xl font-bold">
                    Pending
                </h3>

                <p>
                    Pending booking approvals.
                </p>

            </div>

        </a>

        <!-- Approved -->

        <a href="ApprovedBookings.jsp">

            <div class="module-card bg-gradient-to-r from-green-500 to-emerald-700 text-white rounded-3xl p-8 shadow-xl h-72 flex flex-col justify-between">

                <i class="fa-solid fa-circle-check text-5xl"></i>

                <h3 class="text-3xl font-bold">
                    Approved
                </h3>

                <p>
                    Approved customer bookings.
                </p>

            </div>

        </a>

        <!-- Completed -->

        <a href="CompletedBookings.jsp">

            <div class="module-card bg-gradient-to-r from-purple-600 to-pink-600 text-white rounded-3xl p-8 shadow-xl h-72 flex flex-col justify-between">

                <i class="fa-solid fa-calendar-check text-5xl"></i>

                <h3 class="text-3xl font-bold">
                    Completed
                </h3>

                <p>
                    Successfully completed events.
                </p>

            </div>

        </a>

    </div>

</section>



<!-- ================= FOOTER ================= -->

<footer class="bg-slate-900 text-white py-8 mt-10">

    <div class="max-w-7xl mx-auto px-8 flex flex-col md:flex-row justify-between items-center">

        <div>

            <h3 class="text-2xl font-bold">
                Beyond Celebrations
            </h3>

            <p class="text-gray-400 mt-2">
                Administrator Control Panel
            </p>

        </div>

        <div class="text-gray-400 text-center mt-5 md:mt-0">

            © 2026 Beyond Celebrations. All Rights Reserved.

        </div>

    </div>

</footer>

</body>
</html>