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

<title>Pending Bookings</title>

<script src="https://cdn.tailwindcss.com"></script>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

</head>

<body class="bg-gray-100">

<!-- Header -->

<div class="bg-yellow-500 shadow-lg">

<div class="max-w-7xl mx-auto flex justify-between items-center p-6">

<h1 class="text-4xl font-bold text-white">

<i class="fa-solid fa-clock mr-3"></i>

Pending Bookings

</h1>

<a href="AdminDashboard.jsp"
class="bg-white text-yellow-600 px-6 py-2 rounded-lg font-semibold hover:bg-gray-200">

Back to Dashboard

</a>

</div>

</div>

<div class="max-w-7xl mx-auto py-10">

<%
if(bookings!=null && !bookings.isEmpty()){

for(BookingDetails b : bookings){
%>

<div class="bg-white rounded-3xl shadow-xl p-8 mb-8">

<div class="flex justify-between items-center">

<div>

<h2 class="text-3xl font-bold text-purple-700">

Booking #<%=b.getBookingId()%>

</h2>

<p class="text-gray-500 mt-2">

Booked On :
<%=b.getBookingDate()%>

</p>

</div>

<span class="bg-yellow-100 text-yellow-700 px-5 py-2 rounded-full font-semibold">

Pending

</span>

</div>

<hr class="my-6">

<div class="grid md:grid-cols-2 gap-6">

<div>

<p class="mb-3">

<b>Customer :</b>

<%=b.getCustomerName()%>

</p>

<p class="mb-3">

<b>Organizer :</b>

<%=b.getOrganizerName()%>

</p>

<p class="mb-3">

<b>Event :</b>

<%=b.getEventType()%>

</p>

<p>

<b>Venue :</b>

<%=b.getVenueName()%>

</p>

</div>

<div>

<p class="mb-3">

<b>Event Date :</b>

<%=b.getEventDate()%>

</p>

<p class="mb-3">

<b>Guests :</b>

<%=b.getGuestCount()%>

</p>

<p class="mb-3">

<b>Budget :</b>

<span class="text-green-700 font-bold">

<%=b.getBudget()%>

</span>

</p>

<p>

<b>Special Request :</b>

<%=b.getSpecialRequest()%>

</p>

</div>

</div>

<div class="flex justify-end gap-5 mt-8">

				<a href="bookingdetails?id=<%=b.getBookingId()%>&from=pending"
					class="bg-blue-600 text-white px-6 py-3 rounded-xl hover:bg-blue-700">

					View Details </a>

			</div>

</div>

<%
}
}
else{
%>

<div class="bg-white rounded-3xl shadow-lg p-16 text-center">

<i class="fa-solid fa-calendar-xmark text-6xl text-gray-300"></i>

<h2 class="text-3xl font-bold text-gray-500 mt-6">

No Pending Bookings

</h2>

<p class="text-gray-400 mt-3">

All bookings have been processed.

</p>

</div>

<%
}
%>

</div>

</body>

</html>