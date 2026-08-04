<%@page import="java.util.List"%>
<%@page import="com.dto.Booking"%>

<%
List<Booking> bookings =
(List<Booking>)request.getAttribute("bookings");
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>My Bookings</title>

<script src="https://cdn.tailwindcss.com"></script>

</head>

<body class="bg-gray-100">

<div class="max-w-7xl mx-auto mt-10">

<h1 class="text-4xl font-bold text-center text-purple-700 mb-10">

My Bookings

</h1>

<table class="w-full bg-white shadow-xl rounded-xl overflow-hidden">

<thead class="bg-purple-700 text-white">

<tr>

<th class="p-4">Booking ID</th>

<th>Event Date</th>

<th>Guests</th>

<th>Budget</th>

<th>Status</th>

<th>Special Request</th>

</tr>

</thead>

<tbody>

<%

if(bookings!=null && !bookings.isEmpty()){

for(Booking b:bookings){

%>

<tr class="border-b text-center hover:bg-gray-100">

<td class="p-4">

<%=b.getBooking_id()%>

</td>

<td>

<%=b.getEvent_date()%>

</td>

<td>

<%=b.getGuest_count()%>

</td>

<td>

<%=b.getBudget()%>

</td>

<td>

<%

String status=b.getStatus();

if(status.equalsIgnoreCase("Pending")){

%>

<span class="bg-yellow-100 text-yellow-700 px-3 py-1 rounded-full">

Pending

</span>

<%

}
else if(status.equalsIgnoreCase("Approved")){

%>

<span class="bg-green-100 text-green-700 px-3 py-1 rounded-full">

Approved

</span>

<%

}
else if(status.equalsIgnoreCase("Rejected")){

%>

<span class="bg-red-100 text-red-700 px-3 py-1 rounded-full">

Rejected

</span>

<%

}
else{

%>

<span class="bg-blue-100 text-blue-700 px-3 py-1 rounded-full">

Completed

</span>

<%

}

%>

</td>

<td>

<%=b.getSpecial_request()%>

</td>

</tr>

<%

}

}else{

%>

<tr>

<td colspan="6" class="text-center p-8 text-gray-500">

No Bookings Found

</td>

</tr>

<%

}

%>

</tbody>

</table>

<div class="text-center mt-8">

<a href="customerdashboard"

class="bg-purple-700 text-white px-6 py-3 rounded-lg">

Back to Dashboard

</a>

</div>

</div>

</body>

</html>