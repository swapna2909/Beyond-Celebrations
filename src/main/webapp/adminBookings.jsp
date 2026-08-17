<%@page import="java.util.List"%>
<%@page import="com.dto.BookingDetails"%>

<%
List<BookingDetails> bookings =
(List<BookingDetails>)request.getAttribute("bookings");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Admin - All Bookings</title>

<script src="https://cdn.tailwindcss.com"></script>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

</head>

<body class="bg-gray-100">

<!-- Header -->

<div class="bg-purple-700 text-white py-6 shadow">
<div class="max-w-7xl mx-auto flex justify-between items-center p-6">

<h1 class="text-4xl text-center font-bold">

All Customer Bookings

</h1>
<a href="AdminDashboard.jsp"
class="bg-white text-yellow-600 px-6 py-2 rounded-lg font-semibold hover:bg-gray-200">

Back to Dashboard

</a>

</div>
</div>


<div class="max-w-7xl mx-auto p-8">



<!-- Cards -->

<div class="grid lg:grid-cols-2 gap-8">

<%
if(bookings!=null){

for(BookingDetails b : bookings){
%>

<div class="bg-white rounded-3xl shadow-lg p-6 hover:shadow-2xl transition">

<div class="flex justify-between">

<div>

<h2 class="text-2xl font-bold text-purple-700">

Booking #<%=b.getBookingId()%>

</h2>

<p class="text-gray-500 mt-2">

<%=b.getEventDate()%>

</p>

</div>

<div>

<%

if(b.getStatus().equalsIgnoreCase("Pending")){

%>

<span class="bg-yellow-100 text-yellow-700 px-4 py-2 rounded-full">

Pending

</span>

<%

}else if(b.getStatus().equalsIgnoreCase("Approved")){

%>

<span class="bg-green-100 text-green-700 px-4 py-2 rounded-full">

Approved

</span>

<%

}
else if(b.getStatus().equalsIgnoreCase("Completed")){

%>

<span class="bg-green-100 text-green-700 px-4 py-2 rounded-full">

Completed

</span>

<%

}else{

%>

<span class="bg-red-100 text-red-700 px-4 py-2 rounded-full">

Rejected

</span>

<%

}

%>

</div>

</div>


<hr class="my-5">


<div class="space-y-3">

<p>

<i class="fa-solid fa-user text-purple-700"></i>

<b> Customer :</b>

<%=b.getCustomerName()%>

</p>

<p>

<i class="fa-solid fa-user-tie text-pink-600"></i>

<b> Organizer :</b>

<%=b.getOrganizerName()%>

</p>

<p>

<i class="fa-solid fa-calendar-check text-blue-600"></i>

<b> Event :</b>

<%=b.getEventType()%>

</p>

<p>

<i class="fa-solid fa-location-dot text-red-600"></i>

<b> Venue :</b>

<%=b.getVenueName()%>

</p>

<p>

<i class="fa-solid fa-users text-green-600"></i>

<b> Guests :</b>

<%=b.getGuestCount()%>

</p>

<p>

<i class="fa-solid fa-indian-rupee-sign text-orange-600"></i>

<b> Budget :</b>

₹<%=b.getBudget()%>

</p>

</div>


<div class="mt-8 flex gap-4">

<a
href="bookingdetails?id=<%=b.getBookingId()%>"
class="flex-1 bg-purple-700 text-white py-3 rounded-xl text-center hover:bg-purple-800">

View Details

</a>

</div>

</div>

<%
}
}
else{
%>

<div class="col-span-2">

<div class="bg-white rounded-3xl shadow-lg p-12 text-center">

<i class="fa-solid fa-calendar-xmark text-7xl text-gray-300"></i>

<h2 class="text-3xl mt-6 text-gray-500">

No Bookings Available

</h2>

</div>

</div>

<%
}
%>

</div>

</div>

</body>
</html>