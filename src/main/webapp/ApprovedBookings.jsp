<%@page import="java.util.List"%>
<%@page import="com.dto.Booking"%>

<%
List<Booking> bookings = (List<Booking>)request.getAttribute("bookings");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Beyond Celebrations | Approved Bookings</title>

<script src="https://cdn.tailwindcss.com"></script>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

</head>

<body class="bg-gray-100">

<!-- Navbar -->

<div class="bg-yellow-600 text-white p-5 shadow-lg">

<div class="container mx-auto flex justify-between">

<h1 class="text-3xl font-bold">

<i class="fa-solid fa-circle-check"></i>

Approved Bookings

</h1>

<a href="adminDashboard.jsp"
class="bg-white text-yellow-700 px-4 py-2 rounded-lg font-semibold">

Dashboard

</a>

</div>

</div>

<div class="container mx-auto mt-8">

<div class="bg-white rounded-xl shadow-lg overflow-x-auto">

<table class="min-w-full">

<thead class="bg-yellow-600 text-white">

<tr>

<th class="py-3">Booking ID</th>

<th class="py-3">Customer ID</th>

<th class="py-3">Event Type</th>

<th class="py-3">Venue</th>

<th class="py-3">Event Date</th>

<th class="py-3">Guests</th>

<th class="py-3">Budget</th>

<th class="py-3">Special Request</th>

<th class="py-3">Status</th>

<th class="py-3">Actions</th>

</tr>

</thead>

<tbody>

<%

if(bookings != null && !bookings.isEmpty()){

for(Booking b : bookings){

%>

<tr class="border-b hover:bg-yellow-50">

<td class="text-center py-3"><%=b.getBooking_id()%></td>

<td class="text-center"><%=b.getCustomer_id()%></td>

<td class="text-center"><%=b.getEvent_type_id()%></td>

<td class="text-center"><%=b.getVenue_id()%></td>

<td class="text-center"><%=b.getEvent_date()%></td>

<td class="text-center"><%=b.getGuest_count()%></td>

<td class="text-center">₹ <%=b.getBudget()%></td>

<td class="text-center"><%=b.getSpecial_request()%></td>

<td class="text-center">

<span class="bg-green-100 text-green-700 px-3 py-1 rounded-full">

Approved

</span>

</td>

<td class="text-center">

<a href="CompleteBookingServlet?id=<%=b.getBooking_id()%>"
class="bg-blue-600 text-white px-3 py-2 rounded hover:bg-blue-700">

Complete

</a>

</td>

</tr>

<%

}

}else{

%>

<tr>

<td colspan="10" class="text-center py-6 text-red-600 font-semibold">

No Approved Bookings Found

</td>

</tr>

<%

}

%>

</tbody>

</table>

</div>

</div>

</body>

</html>