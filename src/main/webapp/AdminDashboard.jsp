<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Beyond Celebrations | Admin Dashboard</title>

<script src="https://cdn.tailwindcss.com"></script>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

<style>

body{
background:#f8fafc;
font-family:'Poppins',sans-serif;
}

.nav-link{
transition:.3s;
}

.nav-link:hover{
color:#FBBF24;
}

.card{
transition:.3s;
cursor:pointer;
border:2px solid transparent;
}

.card:hover{
border-color:#2563eb;
background:#eff6ff;
}

.card:active{
transform:scale(.97);
}

.module-card{
transition:.35s;
}

.module-card:hover{
transform:scale(1.03);
}

html{
    scroll-behavior:smooth;
}

#customers,
#categories,
#events,
#venues{
    scroll-margin-top:110px;
}

</style>

</head>

<body>

<!-- ================= NAVBAR ================= -->

<nav class="sticky top-0 z-50 bg-slate-900 shadow-lg">

<div class="max-w-7xl mx-auto">

<div class="flex justify-between items-center py-5 px-8">

<div>

<h1 class="text-3xl font-bold text-white flex items-center gap-3">

    <span class="bg-amber-400 text-slate-900 font-extrabold rounded-full
                 w-11 h-11 flex items-center justify-center text-xl shadow-lg">
        BC
    </span>

    Beyond Celebrations

</h1>

<p class="text-gray-300 text-sm">
Administrator Dashboard
</p>

</div>

<ul class="hidden md:flex gap-8 text-white font-medium">

<li>
<a href="adminDashboard.jsp" class="nav-link">
Dashboard
</a>
</li>

<li>
    <a href="#customers" class="nav-link">
        Customers
    </a>
</li>

<li>
<a href="#categories" class="nav-link">
Categories
</a>
</li>

<li>
<a href="#events" class="nav-link">
Events
</a>
</li>

<li>
<a href="#venues" class="nav-link">
Venues
</a>
</li>

<li>
    <a href="#bookings" class="nav-link">
        Bookings
    </a>
</li>

<li>

<a href="logout.jsp"
class="bg-red-600 hover:bg-red-700 px-5 py-2 rounded-lg">

Logout

</a>

</li>

</ul>

</div>

</div>

</nav>



<!-- ================= HERO ================= -->


<section class="max-w-7xl mx-auto mt-10">

<div class="bg-white rounded-3xl shadow-xl p-10 border border-gray-200">

<h2 class="text-4xl font-bold text-slate-800">

Welcome Administrator

</h2>

<p class="text-gray-600 mt-4 text-lg">

Manage the complete Beyond Celebrations platform from one place.
Create new event categories, event types and venue details with ease.

</p>

<div class="grid md:grid-cols-5 gap-6 mt-10">

    <!-- Customers -->
    <a href="#customers">
        <div class="card bg-slate-100 rounded-xl p-6 h-60 flex flex-col justify-center items-center text-center shadow-md">

            <i class="fa-solid fa-users text-4xl text-blue-600"></i>

            <h3 class="mt-3 text-xl font-semibold">
                Customers
            </h3>

            <p class="text-gray-500 text-sm mt-2">
                Go to Customer Management
            </p>

        </div>
    </a>

    <!-- Categories -->
    <a href="#categories">
        <div class="card bg-slate-100 rounded-xl p-6 h-60 flex flex-col justify-center items-center text-center shadow-md">

            <i class="fa-solid fa-layer-group text-4xl text-indigo-600"></i>

            <h3 class="mt-3 text-xl font-semibold">
                Categories
            </h3>

            <p class="text-gray-500 text-sm mt-2">
                Go to Category Management
            </p>

        </div>
    </a>

    <!-- Event Types -->
    <a href="#events">
      <div class="card bg-slate-100 rounded-xl p-6 h-60 flex flex-col justify-center items-center text-center shadow-md">

            <i class="fa-solid fa-calendar-days text-4xl text-emerald-600"></i>

            <h3 class="mt-3 text-xl font-semibold">
                Event Types
            </h3>

            <p class="text-gray-500 text-sm mt-2">
                Go to Event Type Management
            </p>

        </div>
    </a>

    <!-- Venues -->
    <a href="#venues">
        <div class="card bg-slate-100 rounded-xl p-6 h-60 flex flex-col justify-center items-center text-center shadow-md">

            <i class="fa-solid fa-building text-4xl text-orange-500"></i>

            <h3 class="mt-3 text-xl font-semibold">
                Venues
            </h3>

            <p class="text-gray-500 text-sm mt-2">
                Go to Venue Management
            </p>

        </div>
    </a>
    
    <!-- Bookings -->
<a href="#bookings">
    <div class="card bg-slate-100 rounded-xl p-6 h-60 flex flex-col justify-center items-center text-center shadow-md">

        <i class="fa-solid fa-book text-4xl text-purple-600"></i>

        <h3 class="mt-3 text-xl font-semibold">
            Bookings
        </h3>

        <p class="text-gray-500 text-sm mt-2">
            Go to Booking Management
        </p>

    </div>
</a>

</div>

</div>

</section>

<section id="customers" class="max-w-7xl mx-auto mt-16">

    <h2 class="text-3xl font-bold text-slate-800 mb-8">
        Customer Management
    </h2>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-5 gap-8">

        <!-- View Customers -->
        <a href="ViewCustomer.jsp">
            <div class="module-card bg-blue-600 text-white rounded-2xl p-8 h-72 flex flex-col justify-between text-center">

                <i class="fa-solid fa-users text-5xl"></i>

                <div>
                    <h3 class="text-2xl font-bold mt-5">
                        View Customers
                    </h3>

                    <p class="mt-3 text-blue-100">
                        View all registered customers.
                    </p>
                </div>

            </div>
        </a>


        <!-- Update Customer -->
        <a href="updateCustomer.jsp">
            <div class="module-card bg-amber-500 text-white rounded-2xl p-8 h-72 flex flex-col justify-between text-center">

                <i class="fa-solid fa-user-pen text-5xl"></i>

                <div>
                    <h3 class="text-2xl font-bold mt-5">
                        Update Customer
                    </h3>

                    <p class="mt-3">
                        Edit customer information.
                    </p>
                </div>

            </div>
        </a>

        <!-- Delete Customer -->
        <a href="deleteCustomer.jsp">
            <div class="module-card bg-red-600 text-white rounded-2xl p-8 h-72 flex flex-col justify-between text-center">

                <i class="fa-solid fa-user-xmark text-5xl"></i>

                <div>
                    <h3 class="text-2xl font-bold mt-5">
                        Delete Customer
                    </h3>

                    <p class="mt-3">
                        Remove a customer account.
                    </p>
                </div>

            </div>
        </a>


    </div>

</section>



<!-- ================= EVENT CATEGORY ================= -->

<section id="categories" class="max-w-7xl mx-auto mt-12">

<h2 class="text-3xl font-bold text-slate-800 mb-8">

Event Category Management

</h2>

<div class="grid md:grid-cols-3 gap-8">

<a href="AddEventCategory.jsp">

<div class="module-card bg-indigo-600 text-white rounded-2xl p-8">

<i class="fa-solid fa-plus text-4xl"></i>

<h3 class="text-2xl font-bold mt-5">

Add Category

</h3>

<p class="mt-2 text-indigo-100">

Create a new event category.

</p>

</div>

</a>

<a href="viewEventCategory.jsp">

<div class="module-card bg-slate-700 text-white rounded-2xl p-8">

<i class="fa-solid fa-eye text-4xl"></i>

<h3 class="text-2xl font-bold mt-5">

View Categories

</h3>

<p class="mt-2 text-gray-200">

View all available categories.

</p>

</div>

</a>

<a href="updateEventCategory.jsp">

<div class="module-card bg-amber-500 text-white rounded-2xl p-8">

<i class="fa-solid fa-pen-to-square text-4xl"></i>

<h3 class="text-2xl font-bold mt-5">

Update Category

</h3>

<p class="mt-2">

Modify existing categories.

</p>

</div>

</a>

</div>

</section>



<!-- ================= EVENT TYPE ================= -->

<section id="events" class="max-w-7xl mx-auto mt-16">

<h2 class="text-3xl font-bold text-slate-800 mb-8">

Event Type Management

</h2>

<div class="grid md:grid-cols-3 gap-8">

<a href="AddEventType.jsp">

<div class="module-card bg-emerald-600 text-white rounded-2xl p-8">

<i class="fa-solid fa-calendar-plus text-4xl"></i>

<h3 class="text-2xl font-bold mt-5">

Add Event Type

</h3>

</div>

</a>

<a href="viewEventType.jsp">

<div class="module-card bg-slate-700 text-white rounded-2xl p-8">

<i class="fa-solid fa-list text-4xl"></i>

<h3 class="text-2xl font-bold mt-5">

View Event Types

</h3>

</div>

</a>

<a href="updateEventType.jsp">

<div class="module-card bg-orange-500 text-white rounded-2xl p-8">

<i class="fa-solid fa-file-pen text-4xl"></i>

<h3 class="text-2xl font-bold mt-5">

Update Event Type

</h3>

</div>

</a>

</div>

</section>



<!-- ================= VENUE ================= -->

<section id="venues" class="max-w-7xl mx-auto mt-16 mb-16">

<h2 class="text-3xl font-bold text-slate-800 mb-8">

Venue Management

</h2>

<div class="grid md:grid-cols-3 gap-8">

<a href="addVenue.jsp">

<div class="module-card bg-cyan-600 text-white rounded-2xl p-8">

<i class="fa-solid fa-building-circle-check text-4xl"></i>

<h3 class="text-2xl font-bold mt-5">

Add Venue

</h3>

</div>

</a>

<a href="viewVenue.jsp">

<div class="module-card bg-slate-700 text-white rounded-2xl p-8">

<i class="fa-solid fa-hotel text-4xl"></i>

<h3 class="text-2xl font-bold mt-5">

View Venues

</h3>

</div>

</a>

<a href="updateVenue.jsp">

<div class="module-card bg-rose-500 text-white rounded-2xl p-8">

<i class="fa-solid fa-pen text-4xl"></i>

<h3 class="text-2xl font-bold mt-5">

Update Venue

</h3>

</div>

</a>

</div>

</section>

<!-- ================= BOOKING MANAGEMENT ================= -->

<section id="bookings" class="max-w-7xl mx-auto mt-16 mb-16">

    <h2 class="text-3xl font-bold text-slate-800 mb-8">
        Booking Management
    </h2>

    <div class="grid md:grid-cols-4 gap-8">

        <!-- View Bookings -->
        <a href="ViewBookings.jsp">
            <div class="module-card bg-blue-600 text-white rounded-2xl p-8  h-72 flex flex-col justify-between text-center shadow-lg">

                <i class="fa-solid fa-book-open text-5xl"></i>

                <h3 class="text-2xl font-bold mt-5">
                    View Bookings
                </h3>

                <p class="mt-3 text-blue-100">
                    View all customer bookings.
                </p>

            </div>
        </a>

        <!-- Pending Bookings -->
        <a href="PendingBookings.jsp">
            <div class="module-card bg-yellow-500 text-white rounded-2xl p-8  h-72 flex flex-col justify-between text-center shadow-lg">

                <i class="fa-solid fa-clock text-5xl"></i>

                <h3 class="text-2xl font-bold mt-5">
                    Pending Bookings
                </h3>

                <p class="mt-3">
                    View pending booking requests.
                </p>

            </div>
        </a>

        <!-- Approved Bookings -->
        <a href="ApprovedBookings.jsp">
            <div class="module-card bg-green-600 text-white rounded-2xl p-8  h-72 flex flex-col justify-between text-center shadow-lg">

                <i class="fa-solid fa-circle-check text-5xl"></i>

                <h3 class="text-2xl font-bold mt-5">
                    Approved Bookings
                </h3>

                <p class="mt-3">
                    View approved bookings.
                </p>

            </div>
        </a>

        <!-- Completed Bookings -->
        <a href="CompletedBookings.jsp">
            <div class="module-card bg-purple-600 text-white rounded-2xl p-8  h-72 flex flex-col justify-between text-center shadow-lg">

                <i class="fa-solid fa-calendar-check text-5xl"></i>

                <h3 class="text-2xl font-bold mt-5">
                    Completed Bookings
                </h3>

                <p class="mt-3">
                    View completed events.
                </p>

            </div>
        </a>

    </div>

</section>



<!-- ================= FOOTER ================= -->

<footer class="bg-slate-900 text-white py-5">

<div class="text-center">

<p>

© 2026 Beyond Celebrations | Administrator Panel

</p>

</div>

</footer>

</body>
</html>