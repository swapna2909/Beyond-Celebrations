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

<title>Completed Bookings</title>

<script src="https://cdn.tailwindcss.com"></script>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

</head>

<body class="bg-gray-100">

<div class="max-w-7xl mx-auto py-10 px-6">

<div class="flex justify-between items-center mb-8">

<h1 class="text-4xl font-bold text-green-700">

<i class="fa-solid fa-circle-check mr-3"></i>

Completed Bookings

</h1>

<a href="AdminDashboard.jsp"
class="bg-purple-700 text-white px-5 py-3 rounded-xl hover:bg-purple-800">

<i class="fa-solid fa-arrow-left mr-2"></i>

Back to Dashboard

</a>

</div>

<%
if(bookings!=null && !bookings.isEmpty()){

for(BookingDetails b : bookings){
%>

<div class="bg-white rounded-3xl shadow-xl p-8 mb-8">

<div class="flex justify-between items-center">

<div>

<h2 class="text-2xl font-bold text-purple-700">

Booking #<%=b.getBookingId()%>

</h2>

<p class="text-gray-500 mt-2">

Completed Successfully

</p>

</div>

<span class="bg-green-100 text-green-700 px-5 py-2 rounded-full font-semibold">

Completed

</span>

</div>

<hr class="my-6">

<div class="grid grid-cols-2 md:grid-cols-3 gap-6">

<div>

<p class="text-gray-500">Customer</p>

<p class="font-semibold">

<%=b.getCustomerName()%>

</p>

</div>

<div>

<p class="text-gray-500">Organizer</p>

<p class="font-semibold">

<%=b.getOrganizerName()%>

</p>

</div>

<div>

<p class="text-gray-500">Event</p>

<p class="font-semibold">

<%=b.getEventType()%>

</p>

</div>

<div>

<p class="text-gray-500">Venue</p>

<p class="font-semibold">

<%=b.getVenueName()%>

</p>

</div>

<div>

<p class="text-gray-500">Event Date</p>

<p class="font-semibold">

<%=b.getEventDate()%>

</p>

</div>

<div>

<p class="text-gray-500">Guests</p>

<p class="font-semibold">

<%=b.getGuestCount()%>

</p>

</div>

<div>

<p class="text-gray-500">Budget</p>

<p class="font-semibold text-green-700">

₹ <%=b.getBudget()%>

</p>

</div>

</div>

<div class="mt-8 flex gap-4">

<a href="bookingdetails?id=<%=b.getBookingId()%>&from=completed"
class="bg-blue-600 text-white px-6 py-3 rounded-xl hover:bg-blue-700">

<i class="fa-solid fa-eye mr-2"></i>

View Details

</a>

</div>

</div>

<%
}
}
else{
%>

<div class="bg-white rounded-3xl shadow-xl p-16 text-center">

<i class="fa-solid fa-circle-check text-6xl text-green-500 mb-6"></i>

<h2 class="text-3xl font-bold text-gray-700">

No Completed Bookings

</h2>

<p class="text-gray-500 mt-3">

Completed bookings will appear here.

</p>

</div>

<%
}
%>

</div>

</body>
</html>