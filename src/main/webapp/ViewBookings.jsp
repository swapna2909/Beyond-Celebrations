<%@page import="java.util.List"%>
<%@page import="com.dto.Booking"%>
<%
List<Booking> bookings=(List<Booking>)request.getAttribute("bookings");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Beyond Celebrations | View Bookings</title>

<script src="https://cdn.tailwindcss.com"></script>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

</head>

<body class="bg-gray-100">

<!-- Navbar -->

<div class="bg-indigo-700 text-white p-5 shadow-lg">

<div class="container mx-auto flex justify-between">

<h1 class="text-3xl font-bold text-white flex items-center gap-3">

    <span class="bg-amber-400 text-slate-900 font-extrabold rounded-full
                 w-11 h-11 flex items-center justify-center text-xl shadow-lg">
        BC
    </span>

    Beyond Celebrations

</h1>

<a href="AdminDashboard.jsp"
class="bg-white text-indigo-700 px-4 py-2 rounded-lg font-semibold">
Dashboard
</a>

</div>

</div>

<!-- Heading -->

<div class="container mx-auto mt-8">

<h2 class="text-3xl font-bold text-center mb-8">

Booking Management

</h2>

<div class="overflow-x-auto bg-white rounded-xl shadow-lg">

<table class="min-w-full">

<thead class="bg-indigo-700 text-white">

<tr>

<th class="py-3 px-4">Booking ID</th>

<th class="py-3 px-4">Customer ID</th>

<th class="py-3 px-4">Event Type</th>

<th class="py-3 px-4">Venue</th>

<th class="py-3 px-4">Event Date</th>

<th class="py-3 px-4">Guests</th>

<th class="py-3 px-4">Budget</th>

<th class="py-3 px-4">Status</th>

<th class="py-3 px-4">Actions</th>

</tr>

</thead>

<tbody>

<%

if(bookings!=null){

for(Booking b:bookings){

%>

<tr class="border-b hover:bg-gray-100">

<td class="py-3 px-4 text-center"><%=b.getBooking_id()%></td>

<td class="py-3 px-4 text-center"><%=b.getCustomer_id()%></td>

<td class="py-3 px-4 text-center"><%=b.getEvent_type_id()%></td>

<td class="py-3 px-4 text-center"><%=b.getVenue_id()%></td>

<td class="py-3 px-4 text-center"><%=b.getEvent_date()%></td>

<td class="py-3 px-4 text-center"><%=b.getGuest_count()%></td>

<td class="py-3 px-4 text-center">₹ <%=b.getBudget()%></td>

<td class="py-3 px-4 text-center">

<%

if(b.getStatus().equalsIgnoreCase("Pending")){

%>

<span class="bg-yellow-100 text-yellow-700 px-3 py-1 rounded-full">
Pending
</span>

<%

}else if(b.getStatus().equalsIgnoreCase("Approved")){

%>

<span class="bg-green-100 text-green-700 px-3 py-1 rounded-full">
Approved
</span>

<%

}else if(b.getStatus().equalsIgnoreCase("Rejected")){

%>

<span class="bg-red-100 text-red-700 px-3 py-1 rounded-full">
Rejected
</span>

<%

}else{

%>

<span class="bg-blue-100 text-blue-700 px-3 py-1 rounded-full">
Completed
</span>

<%

}

%>

</td>

<td class="py-3 px-4 text-center space-x-2">

<a href="ApproveBookingServlet?id=<%=b.getBooking_id()%>"
class="bg-green-600 text-white px-3 py-2 rounded-lg text-sm hover:bg-green-700">

Approve

</a>

<a href="RejectBookingServlet?id=<%=b.getBooking_id()%>"
class="bg-red-600 text-white px-3 py-2 rounded-lg text-sm hover:bg-red-700">

Reject

</a>

<a href="CompleteBookingServlet?id=<%=b.getBooking_id()%>"
class="bg-blue-600 text-white px-3 py-2 rounded-lg text-sm hover:bg-blue-700">

Complete

</a>

</td>

</tr>

<%

}

}

else{

%>

<tr>

<td colspan="9" class="text-center py-5 text-red-600">

No Bookings Found

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