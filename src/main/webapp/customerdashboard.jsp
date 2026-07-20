<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.dto.Customer"%>

<%
Customer customer = (Customer) session.getAttribute("Customer");

if (customer == null) {
    response.sendRedirect("login.jsp");
    return;
}

String firstLetter = customer.getFirst_name().substring(0,1).toUpperCase();
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Customer Profile | Beyond Celebrations</title>

<script src="https://cdn.tailwindcss.com"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@700&family=Great+Vibes&family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

</head>

<body class="bg-gray-100" style="font-family:Poppins;">

<!-- ================= NAVBAR ================= -->

<nav class="bg-white shadow-lg sticky top-0 z-50">

<div class="max-w-7xl mx-auto px-8">

<div class="flex justify-between items-center h-20">

<div class="flex items-center">

<div class="w-14 h-14 rounded-full bg-purple-700 text-white flex items-center justify-center text-2xl font-bold">

BC

</div>

<div class="ml-4">

<h1 class="text-2xl text-purple-700"
style="font-family:Cinzel;">

Beyond Celebrations

</h1>

<p class="text-yellow-500"
style="font-family:'Great Vibes';">

More than events, we create experiences

</p>

</div>

</div>

<ul class="hidden lg:flex gap-8 font-medium">

<li><a href="#" class="hover:text-purple-700">Home</a></li>

<li><a href="#" class="hover:text-purple-700">Packages</a></li>

<li><a href="#" class="hover:text-purple-700">Bookings</a></li>

<li><a href="#" class="hover:text-purple-700">Gallery</a></li>

<li><a href="#" class="hover:text-purple-700">Contact</a></li>

</ul>

<div class="flex items-center gap-4">

<div class="text-right">

<p class="text-gray-500 text-sm">

Welcome

</p>

<p class="font-semibold">

<%=customer.getFirst_name()%>

</p>

</div>
<a href="customerprofile">

    <div
        class="w-12 h-12 rounded-full
        bg-gradient-to-r
        from-purple-700
        to-pink-500
        flex
        items-center
        justify-center
        text-white
        font-bold
        text-xl
        cursor-pointer
        shadow-lg
        hover:scale-110
        transition">

        <%=firstLetter%>

    </div>

</a>

<a href="logout"
class="bg-red-600 text-white px-4 py-2 rounded-lg hover:bg-red-700">

Logout

</a>

</div>

</div>

</div>

</nav>

<!-- ================= HERO ================= -->

<section
class="bg-gradient-to-r from-purple-700 via-pink-600 to-orange-500 text-white">

<div class="max-w-7xl mx-auto px-8 py-16">

<h1 class="text-5xl font-bold">

Welcome,

<%=customer.getFirst_name()%> 🎉

</h1>

<p class="text-2xl mt-3"
style="font-family:'Great Vibes';">

Let's make your celebrations unforgettable.

</p>

<p class="mt-6 max-w-2xl leading-8">

Manage your bookings, explore event packages,
track upcoming celebrations and discover exciting offers.

</p>

<div class="mt-8 flex gap-5">

<button
class="bg-white text-purple-700 px-6 py-3 rounded-lg font-semibold hover:bg-gray-100">

Explore Packages

</button>

<button
class="border border-white px-6 py-3 rounded-lg hover:bg-white hover:text-purple-700">

My Bookings

</button>

</div>

</div>

</section>

<!-- ================= DASHBOARD STATISTICS ================= -->

<div class="max-w-7xl mx-auto px-8 pb-12">

    <h2 class="text-3xl font-bold text-gray-800 mb-8">
        Dashboard Overview
    </h2>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">

        <div class="bg-white rounded-2xl shadow-lg p-6 hover:-translate-y-2 transition">

            <div class="flex justify-between items-center">

                <div>

                    <p class="text-gray-500">Total Bookings</p>

                    <h2 class="text-4xl font-bold text-purple-700 mt-2">
                        12
                    </h2>

                </div>

                <div class="w-16 h-16 rounded-full bg-purple-100 flex items-center justify-center">

                    <i class="fa-solid fa-calendar-check text-3xl text-purple-700"></i>

                </div>

            </div>

        </div>

        <div class="bg-white rounded-2xl shadow-lg p-6 hover:-translate-y-2 transition">

            <div class="flex justify-between items-center">

                <div>

                    <p class="text-gray-500">Upcoming Events</p>

                    <h2 class="text-4xl font-bold text-pink-600 mt-2">
                        4
                    </h2>

                </div>

                <div class="w-16 h-16 rounded-full bg-pink-100 flex items-center justify-center">

                    <i class="fa-solid fa-gift text-3xl text-pink-600"></i>

                </div>

            </div>

        </div>

        <div class="bg-white rounded-2xl shadow-lg p-6 hover:-translate-y-2 transition">

            <div class="flex justify-between items-center">

                <div>

                    <p class="text-gray-500">Wishlist</p>

                    <h2 class="text-4xl font-bold text-red-500 mt-2">
                        6
                    </h2>

                </div>

                <div class="w-16 h-16 rounded-full bg-red-100 flex items-center justify-center">

                    <i class="fa-solid fa-heart text-3xl text-red-500"></i>

                </div>

            </div>

        </div>

        <div class="bg-white rounded-2xl shadow-lg p-6 hover:-translate-y-2 transition">

            <div class="flex justify-between items-center">

                <div>

                    <p class="text-gray-500">Reward Points</p>

                    <h2 class="text-4xl font-bold text-yellow-500 mt-2">
                        850
                    </h2>

                </div>

                <div class="w-16 h-16 rounded-full bg-yellow-100 flex items-center justify-center">

                    <i class="fa-solid fa-star text-3xl text-yellow-500"></i>

                </div>

            </div>

        </div>

    </div>

</div>

<!-- ================= EVENT CATEGORIES ================= -->

<section class="max-w-7xl mx-auto px-8 pb-16">

    <h2 class="text-3xl font-bold text-gray-800 mb-8">
        Explore Event Categories
    </h2>

    <div class="grid grid-cols-2 md:grid-cols-4 gap-6">

        <div class="bg-white rounded-2xl shadow-lg p-8 text-center hover:bg-purple-700 hover:text-white transition">

            <i class="fa-solid fa-ring text-5xl mb-4"></i>

            <h3 class="font-semibold">
                Wedding
            </h3>

        </div>

        <div class="bg-white rounded-2xl shadow-lg p-8 text-center hover:bg-pink-600 hover:text-white transition">

            <i class="fa-solid fa-cake-candles text-5xl mb-4"></i>

            <h3 class="font-semibold">
                Birthday
            </h3>

        </div>

        <div class="bg-white rounded-2xl shadow-lg p-8 text-center hover:bg-blue-600 hover:text-white transition">

            <i class="fa-solid fa-building text-5xl mb-4"></i>

            <h3 class="font-semibold">
                Corporate
            </h3>

        </div>

        <div class="bg-white rounded-2xl shadow-lg p-8 text-center hover:bg-orange-500 hover:text-white transition">

            <i class="fa-solid fa-heart text-5xl mb-4"></i>

            <h3 class="font-semibold">
                Anniversary
            </h3>

        </div>

    </div>

</section>

<!-- ================= FEATURED PACKAGES ================= -->

<section class="max-w-7xl mx-auto px-8 pb-16">

    <h2 class="text-3xl font-bold text-gray-800 mb-8">

        Featured Packages

    </h2>

    <div class="grid md:grid-cols-3 gap-8">

        <div class="bg-white rounded-3xl shadow-xl overflow-hidden hover:scale-105 transition">

            <img src="https://i.pinimg.com/736x/f6/a4/67/f6a467315df1cad1efc70ffd1770f711.jpg"
                 class="w-full h-60 object-cover">

            <div class="p-6">

                <h3 class="text-2xl font-bold">

                    Royal Wedding

                </h3>

                <p class="text-gray-600 mt-3">

                    Premium decoration, catering,
                    photography and luxury venue.

                </p>

                <p class="text-purple-700 font-bold text-2xl mt-4">

                    ₹2,50,000

                </p>

                <button class="mt-5 w-full py-3 rounded-xl bg-purple-700 text-white hover:bg-purple-800">

                    Book Now

                </button>

            </div>

        </div>

        <div class="bg-white rounded-3xl shadow-xl overflow-hidden hover:scale-105 transition">

            <img src="https://i.pinimg.com/736x/ff/f6/3c/fff63c1f1ae031369a90cfa7f5787be3.jpg"
                 class="w-full h-60 object-cover">

            <div class="p-6">

                <h3 class="text-2xl font-bold">

                    Birthday Celebration

                </h3>

                <p class="text-gray-600 mt-3">

                    Theme decoration,
                    entertainment,
                    cake and photography.

                </p>

                <p class="text-pink-600 font-bold text-2xl mt-4">

                    ₹35,000

                </p>

                <button class="mt-5 w-full py-3 rounded-xl bg-pink-600 text-white hover:bg-pink-700">

                    Book Now

                </button>

            </div>

        </div>

        <div class="bg-white rounded-3xl shadow-xl overflow-hidden hover:scale-105 transition">

            <img src="https://i.pinimg.com/736x/a8/3f/97/a83f975010e8f14038a37fcf9640cf99.jpg"
                 class="w-full h-60 object-cover">

            <div class="p-6">

                <h3 class="text-2xl font-bold">

                    Corporate Event

                </h3>

                <p class="text-gray-600 mt-3">

                    Conference hall,
                    branding,
                    catering and sound system.

                </p>

                <p class="text-blue-600 font-bold text-2xl mt-4">

                    ₹1,20,000

                </p>

                <button class="mt-5 w-full py-3 rounded-xl bg-blue-600 text-white hover:bg-blue-700">

                    Book Now

                </button>

            </div>

        </div>

    </div>

</section>
<!-- ================= UPCOMING EVENTS ================= -->

<section class="max-w-7xl mx-auto px-8 py-12">

    <h2 class="text-3xl font-bold text-gray-800 mb-8">
        Upcoming Events
    </h2>

    <div class="bg-white rounded-2xl shadow-lg overflow-hidden">

        <table class="w-full">

            <thead class="bg-purple-700 text-white">

                <tr>

                    <th class="py-4">Event</th>
                    <th>Date</th>
                    <th>Venue</th>
                    <th>Status</th>

                </tr>

            </thead>

            <tbody>

                <tr class="border-b hover:bg-gray-50">

                    <td class="py-4 text-center">
                        Royal Wedding
                    </td>

                    <td class="text-center">
                        15 Aug 2026
                    </td>

                    <td class="text-center">
                        Bengaluru
                    </td>

                    <td class="text-center">

                        <span class="bg-green-100 text-green-700 px-4 py-1 rounded-full">

                            Confirmed

                        </span>

                    </td>

                </tr>

                <tr class="border-b hover:bg-gray-50">

                    <td class="py-4 text-center">
                        Birthday Party
                    </td>

                    <td class="text-center">
                        05 Sept 2026
                    </td>

                    <td class="text-center">
                        Mysuru
                    </td>

                    <td class="text-center">

                        <span class="bg-yellow-100 text-yellow-700 px-4 py-1 rounded-full">

                            Pending

                        </span>

                    </td>

                </tr>

                <tr class="hover:bg-gray-50">

                    <td class="py-4 text-center">
                        Corporate Meet
                    </td>

                    <td class="text-center">
                        12 Oct 2026
                    </td>

                    <td class="text-center">
                        Hyderabad
                    </td>

                    <td class="text-center">

                        <span class="bg-blue-100 text-blue-700 px-4 py-1 rounded-full">

                            Processing

                        </span>

                    </td>

                </tr>

            </tbody>

        </table>

    </div>

</section>

<!-- ================= BOOKING SUMMARY ================= -->

<section class="max-w-7xl mx-auto px-8 py-10">

    <div class="grid md:grid-cols-2 gap-8">

        <div class="bg-white rounded-2xl shadow-lg p-8">

            <h2 class="text-2xl font-bold text-purple-700 mb-6">

                Booking History

            </h2>

            <ul class="space-y-5">

                <li class="flex justify-between">

                    <span>Wedding Package</span>

                    <span class="text-green-600 font-semibold">

                        Completed

                    </span>

                </li>

                <li class="flex justify-between">

                    <span>Birthday Decoration</span>

                    <span class="text-blue-600 font-semibold">

                        Confirmed

                    </span>

                </li>

                <li class="flex justify-between">

                    <span>Baby Shower</span>

                    <span class="text-yellow-600 font-semibold">

                        Upcoming

                    </span>

                </li>

                <li class="flex justify-between">

                    <span>Corporate Event</span>

                    <span class="text-purple-600 font-semibold">

                        Booked

                    </span>

                </li>

            </ul>

        </div>

        <div class="bg-white rounded-2xl shadow-lg p-8">

            <h2 class="text-2xl font-bold text-purple-700 mb-6">

                Payment Summary

            </h2>

            <div class="space-y-5">

                <div class="flex justify-between">

                    <span>Total Paid</span>

                    <span class="font-bold text-green-600">

                        ₹4,50,000

                    </span>

                </div>

                <div class="flex justify-between">

                    <span>Pending Amount</span>

                    <span class="font-bold text-red-600">

                        ₹25,000

                    </span>

                </div>

                <div class="flex justify-between">

                    <span>Wallet Balance</span>

                    <span class="font-bold text-purple-700">

                        ₹5,500

                    </span>

                </div>

                <div class="flex justify-between">

                    <span>Reward Points</span>

                    <span class="font-bold text-yellow-500">

                        850

                    </span>

                </div>

            </div>

        </div>

    </div>

</section>
<!-- ================= EXCLUSIVE OFFER ================= -->

<section class="max-w-7xl mx-auto px-8 py-12">

    <div class="rounded-3xl bg-gradient-to-r from-purple-700 via-pink-600 to-orange-500 text-white p-10 shadow-xl">

        <h2 class="text-4xl font-bold">
            🎉 Exclusive Offer
        </h2>

        <p class="mt-5 text-lg leading-8">

            Book any Premium Wedding Package this month and receive
            <span class="font-bold">15% Discount</span>,
            complimentary photography,
            luxury stage decoration and welcome drinks.

        </p>

        <button
            class="mt-8 px-8 py-3 rounded-xl bg-white text-purple-700 font-bold hover:scale-105 transition">

            Claim Offer

        </button>

    </div>

</section>

<!-- ================= CUSTOMER SUPPORT ================= -->

<section class="max-w-7xl mx-auto px-8 py-12">

    <h2 class="text-3xl font-bold text-gray-800 mb-8">

        Need Assistance?

    </h2>

    <div class="grid md:grid-cols-3 gap-8">

        <div class="bg-white rounded-3xl shadow-lg p-8 text-center">

            <div
                class="w-20 h-20 mx-auto rounded-full bg-purple-100 flex items-center justify-center">

                <i class="fa-solid fa-headset text-4xl text-purple-700"></i>

            </div>

            <h3 class="text-xl font-bold mt-6">

                Customer Support

            </h3>

            <p class="mt-4 text-gray-600">

                Our support team is available 24 × 7 to help you.

            </p>

            <button
                class="mt-6 px-6 py-3 rounded-xl bg-purple-700 text-white hover:bg-purple-800">

                Contact Support

            </button>

        </div>

        <div class="bg-white rounded-3xl shadow-lg p-8 text-center">

            <div
                class="w-20 h-20 mx-auto rounded-full bg-pink-100 flex items-center justify-center">

                <i class="fa-solid fa-comments text-4xl text-pink-600"></i>

            </div>

            <h3 class="text-xl font-bold mt-6">

                Live Chat

            </h3>

            <p class="mt-4 text-gray-600">

                Chat directly with our event consultants.

            </p>

            <button
                class="mt-6 px-6 py-3 rounded-xl bg-pink-600 text-white hover:bg-pink-700">

                Start Chat

            </button>

        </div>

        <div class="bg-white rounded-3xl shadow-lg p-8 text-center">

            <div
                class="w-20 h-20 mx-auto rounded-full bg-yellow-100 flex items-center justify-center">

                <i class="fa-solid fa-envelope text-4xl text-yellow-500"></i>

            </div>

            <h3 class="text-xl font-bold mt-6">

                Email Us

            </h3>

            <p class="mt-4 text-gray-600">

                support@beyondcelebrations.com

            </p>

            <button
                class="mt-6 px-6 py-3 rounded-xl bg-yellow-500 text-white hover:bg-yellow-600">

                Send Email

            </button>

        </div>

    </div>

</section>

<!-- ================= TESTIMONIALS ================= -->

<section class="max-w-7xl mx-auto px-8 py-12">

    <h2 class="text-3xl font-bold text-gray-800 mb-8">

        What Our Customers Say

    </h2>

    <div class="grid md:grid-cols-3 gap-8">

        <div class="bg-white rounded-3xl shadow-lg p-8">

            <div class="text-yellow-400 text-xl">

                ★★★★★

            </div>

            <p class="mt-5 italic text-gray-600">

                "Excellent planning and wonderful decoration.
                Our wedding became unforgettable."

            </p>

            <h4 class="mt-6 font-bold">

                - Priya Sharma

            </h4>

        </div>

        <div class="bg-white rounded-3xl shadow-lg p-8">

            <div class="text-yellow-400 text-xl">

                ★★★★★

            </div>

            <p class="mt-5 italic text-gray-600">

                "Professional staff and beautiful event management."

            </p>

            <h4 class="mt-6 font-bold">

                - Rahul Verma

            </h4>

        </div>

        <div class="bg-white rounded-3xl shadow-lg p-8">

            <div class="text-yellow-400 text-xl">

                ★★★★★

            </div>

            <p class="mt-5 italic text-gray-600">

                "Highly recommended for customized celebrations."

            </p>

            <h4 class="mt-6 font-bold">

                - Sneha Reddy

            </h4>

        </div>

    </div>

</section>

<!-- ================= FOOTER ================= -->

<footer class="bg-[#1b0f1d] text-white mt-10">

    <div class="max-w-7xl mx-auto px-8 py-12">

        <div class="grid md:grid-cols-4 gap-10">

            <div>

                <h2
                    class="text-3xl text-yellow-300"
                    style="font-family:Cinzel;">

                    Beyond Celebrations

                </h2>

                <p
                    class="text-yellow-200 text-xl"
                    style="font-family:'Great Vibes';">

                    More than events, we create experiences

                </p>

                <p class="mt-5 text-gray-400 leading-7">

                    Your trusted event planning partner.

                </p>

            </div>

            <div>

                <h3 class="text-yellow-300 text-xl font-bold mb-5">

                    Quick Links

                </h3>

                <ul class="space-y-3">

                    <li><a href="#">Home</a></li>

                    <li><a href="#">Packages</a></li>

                    <li><a href="#">Bookings</a></li>

                    <li><a href="#">Contact</a></li>

                </ul>

            </div>

            <div>

                <h3 class="text-yellow-300 text-xl font-bold mb-5">

                    Contact

                </h3>

                <p>Bengaluru</p>

                <p class="mt-3">+91 9876543210</p>

                <p class="mt-3">support@beyondcelebrations.com</p>

            </div>

            <div>

                <h3 class="text-yellow-300 text-xl font-bold mb-5">

                    Follow Us

                </h3>

                <div class="flex gap-5 text-2xl">

                    <i class="fab fa-facebook"></i>

                    <i class="fab fa-instagram"></i>

                    <i class="fab fa-linkedin"></i>

                    <i class="fab fa-x-twitter"></i>

                </div>

                
            </div>

        </div>

        <hr class="my-10 border-gray-700">

        <p class="text-center text-gray-400">

            © 2026 Beyond Celebrations. All Rights Reserved.

        </p>

    </div>

</footer>

</body>
</html>